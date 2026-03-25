import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:municipios_app/models/municipio.dart';
import 'package:municipios_app/widgets/chat_ai_widget.dart';
import 'package:municipios_app/widgets/mapa_interactivo.dart';
import 'package:municipios_app/screens/visor_3d_screen.dart';
import 'package:municipios_app/data/municipios/abasolo.dart' as abasolo;
import 'package:municipios_app/data/municipios/aldama.dart' as aldama;

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
  final ScrollController _scrollController = ScrollController();
  bool _showBackToTop = false;

  final FlutterTts _flutterTts = FlutterTts();
  bool _isSpeaking = false;

  final List<Map<String, dynamic>> _sections = [
    {'name': 'Historia', 'key': GlobalKey(), 'icon': Icons.history},
    {'name': 'Geografía', 'key': GlobalKey(), 'icon': Icons.landscape},
    {'name': 'Demografía', 'key': GlobalKey(), 'icon': Icons.people},
    {'name': 'Economía', 'key': GlobalKey(), 'icon': Icons.attach_money},
    {'name': 'Turismo', 'key': GlobalKey(), 'icon': Icons.beach_access},
    {'name': 'Cultura', 'key': GlobalKey(), 'icon': Icons.music_note},
    {'name': 'Educación', 'key': GlobalKey(), 'icon': Icons.school},
    {'name': 'Infraestructura', 'key': GlobalKey(), 'icon': Icons.business},
    {'name': 'Personajes', 'key': GlobalKey(), 'icon': Icons.people_outline},
    {'name': 'Curiosidades', 'key': GlobalKey(), 'icon': Icons.lightbulb},
    {'name': 'Futuro', 'key': GlobalKey(), 'icon': Icons.trending_up},
  ];

  List<Widget> _sectionWidgets = [];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _scrollController.addListener(_onScroll);
    _buildSectionWidgets();
    _initTts();
  }

  void _initTts() async {
    await _flutterTts.setLanguage("es-MX");
    await _flutterTts.setSpeechRate(0.5);
    await _flutterTts.setPitch(1.0);
    await _flutterTts.awaitSpeakCompletion(true);
  }

  void _onScroll() {
    if (_scrollController.offset > 300 && !_showBackToTop) {
      setState(() => _showBackToTop = true);
    } else if (_scrollController.offset <= 300 && _showBackToTop) {
      setState(() => _showBackToTop = false);
    }
  }

  void _scrollToTop() {
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOutCubic,
    );
  }

  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOutCubic,
      );
    }
  }

  void _buildSectionWidgets() {
    final String text = widget.municipio.descripcionLarga;
    final List<String> lines = text.split('\n');
    List<Map<String, String>> sections = [];
    String currentSection = '';
    String currentContent = '';

    for (var line in lines) {
      if (line.startsWith('## ')) {
        if (currentSection.isNotEmpty) {
          sections.add({'title': currentSection, 'content': currentContent.trim()});
        }
        currentSection = line.substring(3).trim();
        currentContent = '';
      } else {
        currentContent += line + '\n';
      }
    }
    if (currentSection.isNotEmpty) {
      sections.add({'title': currentSection, 'content': currentContent.trim()});
    }

    _sectionWidgets = [];
    for (var section in sections) {
      final key = _findKeyForSection(section['title']!);
      _sectionWidgets.add(
        Container(
          key: key,
          padding: const EdgeInsets.only(top: 16),
          child: _buildSection(section['title']!, section['content']!),
        ),
      );
    }
  }

  GlobalKey _findKeyForSection(String title) {
    final mapping = {
      'Historia Detallada': _sections[0]['key'],
      'Geografía y Medio Ambiente': _sections[1]['key'],
      'Demografía': _sections[2]['key'],
      'Economía': _sections[3]['key'],
      'Turismo y Atractivos': _sections[4]['key'],
      'Cultura y Tradiciones': _sections[5]['key'],
      'Educación y Salud': _sections[6]['key'],
      'Infraestructura y Comunicaciones': _sections[7]['key'],
      'Personajes Ilustres': _sections[8]['key'],
      'Datos Curiosos': _sections[9]['key'],
      'Perspectivas Futuras': _sections[10]['key'],
    };
    return mapping[title] ?? GlobalKey();
  }

  Widget _buildSection(String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Text(
            title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.teal),
          ),
        ),
        _buildFormattedText(content),
      ],
    );
  }

  Future<void> _speak() async {
    if (_isSpeaking) {
      await _flutterTts.stop();
      setState(() => _isSpeaking = false);
      return;
    }

    String fullText = widget.municipio.descripcionLarga;
    List<String> chunks = [];
    int chunkSize = 1800;
    for (int i = 0; i < fullText.length; i += chunkSize) {
      int end = (i + chunkSize < fullText.length) ? i + chunkSize : fullText.length;
      chunks.add(fullText.substring(i, end));
    }

    setState(() => _isSpeaking = true);
    for (int i = 0; i < chunks.length; i++) {
      if (!_isSpeaking) break;
      await _flutterTts.speak(chunks[i]);
      await Future.delayed(const Duration(milliseconds: 500));
    }
    setState(() => _isSpeaking = false);
  }

  void _showMonumentosMenu() {
    final monumentos = widget.municipio.monumentos3D;
    if (monumentos.isEmpty) return;

    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Selecciona un monumento para ver en 3D',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ...monumentos.map((monumento) => ListTile(
              leading: const Icon(Icons.place, color: Colors.teal),
              title: Text(monumento.nombre),
              subtitle: Text(monumento.descripcion),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Visor3DScreen(monumento: monumento),
                  ),
                );
              },
            )),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    _transformationController.dispose();
    _scrollController.dispose();
    _flutterTts.stop();
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ChatAIWidget(municipio: widget.municipio),
          const SizedBox(height: 16),
          if (widget.municipio.monumentos3D.isNotEmpty)
            FloatingActionButton(
              heroTag: 'visor_3d_btn',
              onPressed: _showMonumentosMenu,
              backgroundColor: Colors.deepPurple,
              child: const Icon(Icons.view_in_ar),
            ),
        ],
      ),
      body: Stack(
        children: [
          CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverAppBar(
                expandedHeight: isDesktop ? 500 : 350,
                pinned: true,
                title: Text(widget.municipio.nombre),
                backgroundColor: Colors.teal,
                actions: [
                  IconButton(
                    icon: Icon(_isSpeaking ? Icons.stop : Icons.volume_up),
                    onPressed: _speak,
                    tooltip: 'Escuchar descripción',
                  ),
                ],
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
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 16),
                            height: 50,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemCount: _sections.length,
                              separatorBuilder: (_, __) => const SizedBox(width: 8),
                              itemBuilder: (context, index) {
                                final section = _sections[index];
                                return ActionChip(
                                  avatar: Icon(section['icon'], size: 18),
                                  label: Text(section['name']),
                                  onPressed: () => _scrollToSection(section['key']),
                                  backgroundColor: Colors.teal.shade50,
                                  labelStyle: const TextStyle(color: Colors.teal),
                                );
                              },
                            ),
                          ),
                          _buildMainInfo(),
                          const SizedBox(height: 24),
                          ..._sectionWidgets,
                          if (widget.municipio.id == 'abasolo')
                            MapaInteractivo(lugares: abasolo.lugaresAbasolo),
                          if (widget.municipio.id == 'aldama')
                            MapaInteractivo(lugares: aldama.lugaresAldama),
                          const SizedBox(height: 40),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          if (_showBackToTop)
            Positioned(
              bottom: 200,
              right: 20,
              child: FloatingActionButton.small(
                onPressed: _scrollToTop,
                backgroundColor: Colors.teal,
                child: const Icon(Icons.arrow_upward, color: Colors.white),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildMainInfo() {
    return Card(
      elevation: 8,
      shadowColor: Colors.teal.withAlpha(77),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
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

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.teal.withAlpha(26),
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
          return const SizedBox.shrink();
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
