import 'package:flutter/material.dart';
import 'package:municipios_app/models/municipio.dart';
import 'package:municipios_app/widgets/chat_ai_widget.dart'; // <--- NUEVO

class DetailScreen extends StatefulWidget {
  final Municipio municipio;
  const DetailScreen({Key? key, required this.municipio}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int _currentImageIndex = 0;
  late PageController _pageController;
  final TransformationController _transformationController = TransformationController();
  bool _isZoomed = false;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _transformationController.dispose();
    super.dispose();
  }

  void _nextImage() {
    if (_currentImageIndex < widget.municipio.imagenes.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _previousImage() {
    if (_currentImageIndex > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _resetZoom() {
    _transformationController.value = Matrix4.identity();
    setState(() {
      _isZoomed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isDesktop = size.width > 900;

    return Scaffold(
      floatingActionButton: ChatAIWidget(municipio: widget.municipio), // <--- ASISTENTE CONTEXTUAL
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: isDesktop ? 500 : 350,
            pinned: true,
            title: Text(widget.municipio.nombre),
            backgroundColor: Colors.teal,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  PageView.builder(
                    controller: _pageController,
                    itemCount: widget.municipio.imagenes.length,
                    onPageChanged: (index) {
                      setState(() {
                        _currentImageIndex = index;
                        _resetZoom();
                      });
                    },
                    itemBuilder: (context, index) {
                      return InteractiveViewer(
                        transformationController: _transformationController,
                        minScale: 0.5,
                        maxScale: 4.0,
                        onInteractionStart: (_) => setState(() => _isZoomed = true),
                        onInteractionEnd: (_) {
                          final scale = _transformationController.value.getMaxScaleOnAxis();
                          if (scale <= 1.1) setState(() => _isZoomed = false);
                        },
                        child: Image.asset(
                          widget.municipio.imagenes[index],
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) => Container(
                            color: Colors.grey[300],
                            child: const Icon(Icons.broken_image, size: 80, color: Colors.grey),
                          ),
                        ),
                      );
                    },
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Colors.black54],
                      ),
                    ),
                  ),
                  if (widget.municipio.imagenes.length > 1 && !_isZoomed) ...[
                    Positioned(
                      left: 8,
                      top: 0,
                      bottom: 0,
                      child: Center(
                        child: CircleAvatar(
                          backgroundColor: Colors.black26,
                          child: IconButton(
                            icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white, size: 20),
                            onPressed: _previousImage,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 8,
                      top: 0,
                      bottom: 0,
                      child: Center(
                        child: CircleAvatar(
                          backgroundColor: Colors.black26,
                          child: IconButton(
                            icon: const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 20),
                            onPressed: _nextImage,
                          ),
                        ),
                      ),
                    ),
                  ],
                  Positioned(
                    bottom: 16,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        widget.municipio.imagenes.length,
                        (index) => AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          width: _currentImageIndex == index ? 12 : 8,
                          height: _currentImageIndex == index ? 12 : 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _currentImageIndex == index ? Colors.white : Colors.white54,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1000),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: isDesktop ? 40.0 : 16.0,
                    vertical: 24.0,
                  ),
                  child: isDesktop 
                    ? Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(flex: 2, child: _buildMainInfo()),
                          const SizedBox(width: 24),
                          Expanded(flex: 3, child: _buildDescription()),
                        ],
                      )
                    : Column(
                        children: [
                          _buildMainInfo(),
                          const SizedBox(height: 16),
                          _buildDescription(),
                        ],
                      ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainInfo() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Información General',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.teal),
            ),
            const SizedBox(height: 20),
            _buildInfoRow(Icons.people_outline, 'Población', widget.municipio.poblacion),
            const Divider(height: 32),
            _buildInfoRow(Icons.map_outlined, 'Superficie', widget.municipio.superficie),
            const Divider(height: 32),
            _buildInfoRow(Icons.badge_outlined, 'Gentilicio', widget.municipio.gentilicio),
          ],
        ),
      ),
    );
  }

  Widget _buildDescription() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Descripción',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.teal),
            ),
            const SizedBox(height: 16),
            _buildFormattedText(widget.municipio.descripcionLarga),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.teal.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: Colors.teal, size: 24),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: TextStyle(color: Colors.grey[600], fontSize: 14)),
              Text(value, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildFormattedText(String text) {
    final lines = text.split('\n');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: lines.map((line) {
        if (line.startsWith('## ')) {
          return Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 8),
            child: Text(
              line.substring(3),
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.teal),
            ),
          );
        } else if (line.startsWith('**') && line.endsWith('**')) {
          return Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 4),
            child: Text(
              line.replaceAll('**', ''),
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          );
        } else if (line.startsWith('- ')) {
          return Padding(
            padding: const EdgeInsets.only(left: 8, top: 4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('• ', style: TextStyle(fontSize: 16, color: Colors.teal, fontWeight: FontWeight.bold)),
                Expanded(child: Text(line.substring(2), style: const TextStyle(fontSize: 16, height: 1.5))),
              ],
            ),
          );
        } else if (line.trim().isEmpty) {
          return const SizedBox(height: 12);
        } else {
          return Text(line, style: const TextStyle(fontSize: 16, height: 1.6));
        }
      }).toList(),
    );
  }
}
