import 'package:flutter/material.dart';
import 'package:municipios_app/models/municipio.dart';

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
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 350,
            pinned: true,
            title: Text(widget.municipio.nombre), // Título en la barra colapsada
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  // PageView con InteractiveViewer para zoom y deslizamiento
                  GestureDetector(
                    onHorizontalDragStart: (details) {
                      // Prevenir que el CustomScrollView robe el gesto horizontal
                      // No hacemos nada especial aquí porque PageView ya maneja
                      // la detección horizontal, pero a veces el SliverAppBar interfiere.
                      // Esta línea ayuda a priorizar el gesto horizontal.
                    },
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: widget.municipio.imagenes.length,
                      onPageChanged: (index) {
                        setState(() {
                          _currentImageIndex = index;
                          _resetZoom(); // Al cambiar de imagen, reiniciamos el zoom
                        });
                      },
                      itemBuilder: (context, index) {
                        return InteractiveViewer(
                          transformationController: _transformationController,
                          minScale: 0.5,
                          maxScale: 4.0,
                          onInteractionStart: (_) {
                            setState(() => _isZoomed = true);
                          },
                          onInteractionEnd: (_) {
                            // Si la escala es 1 (o cercana), consideramos que no está en zoom
                            final scale = _transformationController.value.getMaxScaleOnAxis();
                            if (scale <= 1.1) {
                              setState(() => _isZoomed = false);
                            }
                          },
                          child: Image.asset(
                            widget.municipio.imagenes[index],
                            fit: BoxFit.cover,
                            errorBuilder: (_, __, ___) => Container(
                              color: Colors.grey[300],
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(Icons.broken_image, size: 80, color: Colors.grey),
                                    Text(
                                      'Imagen ${index + 1} no disponible',
                                      style: const TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  // Gradiente oscuro para mejorar legibilidad del título
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Colors.black54],
                      ),
                    ),
                  ),
                  // Título superpuesto en la imagen (visible cuando la barra no está colapsada)
                  Positioned(
                    bottom: 50,
                    left: 16,
                    right: 16,
                    child: Text(
                      widget.municipio.nombre,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            blurRadius: 10,
                            color: Colors.black,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Flechas de navegación (solo si hay más de una imagen y no está en zoom)
                  if (widget.municipio.imagenes.length > 1 && !_isZoomed) ...[
                    Positioned(
                      left: 8,
                      top: 0,
                      bottom: 0,
                      child: Center(
                        child: IconButton(
                          icon: const Icon(Icons.arrow_back_ios, color: Colors.white, size: 30),
                          onPressed: _previousImage,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 8,
                      top: 0,
                      bottom: 0,
                      child: Center(
                        child: IconButton(
                          icon: const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 30),
                          onPressed: _nextImage,
                        ),
                      ),
                    ),
                  ],
                  // Indicador de página
                  Positioned(
                    bottom: 16,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        widget.municipio.imagenes.length,
                            (index) => GestureDetector(
                          onTap: () {
                            _pageController.animateToPage(
                              index,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            width: _currentImageIndex == index ? 14 : 10,
                            height: _currentImageIndex == index ? 14 : 10,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _currentImageIndex == index
                                  ? Colors.white
                                  : Colors.white.withOpacity(0.5),
                              border: Border.all(color: Colors.black12, width: 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Botón para resetear zoom (solo visible cuando está en zoom)
                  if (_isZoomed)
                    Positioned(
                      top: 40,
                      right: 16,
                      child: FloatingActionButton.small(
                        heroTag: null,
                        backgroundColor: Colors.white.withOpacity(0.8),
                        onPressed: _resetZoom,
                        child: const Icon(Icons.close, color: Colors.black),
                      ),
                    ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                Card(
                  elevation: 8,
                  shadowColor: Colors.teal.withOpacity(0.3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Información general',
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 16),
                        _buildInfoRow(Icons.people, 'Población', widget.municipio.poblacion),
                        const Divider(),
                        _buildInfoRow(Icons.map, 'Superficie', widget.municipio.superficie),
                        const Divider(),
                        _buildInfoRow(Icons.face, 'Gentilicio', widget.municipio.gentilicio),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Card(
                  elevation: 8,
                  shadowColor: Colors.teal.withOpacity(0.3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Descripción',
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 16),
                        _buildFormattedText(widget.municipio.descripcionLarga),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.teal),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              '$label:',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          Text(
            value,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget _buildFormattedText(String text) {
    final lines = text.split('\n');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: lines.map((line) {
        if (line.startsWith('## ')) {
          // Título nivel 2
          return Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 4),
            child: Text(
              line.substring(3),
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          );
        } else if (line.startsWith('**') && line.endsWith('**')) {
          // Negritas
          return Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 4),
            child: Text(
              line.replaceAll('**', ''),
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          );
        } else if (line.startsWith('- ')) {
          return Padding(
            padding: const EdgeInsets.only(left: 8, top: 2),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('• ', style: TextStyle(fontSize: 16)),
                Expanded(
                  child: Text(
                    line.substring(2),
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          );
        } else if (line.trim().isEmpty) {
          return const SizedBox(height: 8);
        } else {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: Text(
              line,
              style: const TextStyle(fontSize: 16, height: 1.4),
            ),
          );
        }
      }).toList(),
    );
  }
}