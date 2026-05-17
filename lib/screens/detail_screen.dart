import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:municipios_app/models/municipio.dart';
import 'package:municipios_app/widgets/chat_ai_widget.dart';
import 'package:municipios_app/widgets/mapa_interactivo.dart';
import 'package:municipios_app/screens/visor_3d_screen.dart';
import 'package:municipios_app/screens/quiz_screen.dart';
import 'package:municipios_app/data/municipios/abasolo.dart' as abasolo;
import 'package:municipios_app/data/municipios/aldama.dart' as aldama;
import 'package:municipios_app/data/municipios/altamira.dart' as altamira;
import 'package:municipios_app/data/municipios/antiguo_morelos.dart' as antiguo_morelos;
import 'package:municipios_app/data/municipios/burgos.dart' as burgos;
import 'package:municipios_app/data/municipios/bustamante.dart' as bustamante;
import 'package:municipios_app/data/municipios/camargo.dart' as camargo;
import 'package:municipios_app/data/municipios/casas.dart' as casas;
import 'package:municipios_app/data/municipios/ciudad_madero.dart' as ciudad_madero;
import 'package:municipios_app/data/municipios/victoria.dart' as ciudad_victoria;
import 'package:municipios_app/data/municipios/cruillas.dart' as cruillas;
import 'package:municipios_app/data/municipios/gomez_farias.dart' as gomez_farias;
import 'package:municipios_app/data/municipios/gonzalez.dart' as gonzalez;
import 'package:municipios_app/data/municipios/guerrero.dart' as guerrero;
import 'package:municipios_app/data/municipios/gustavo_diaz_ordaz.dart' as gustavo_diaz_ordaz;
import 'package:municipios_app/data/municipios/gueemez.dart' as gueemez;
import 'package:municipios_app/data/municipios/hidalgo.dart' as hidalgo;
import 'package:municipios_app/data/municipios/jaumave.dart' as jaumave;
import 'package:municipios_app/data/municipios/jimenez.dart' as jimenez;
import 'package:municipios_app/data/municipios/llera.dart' as llera;
import 'package:municipios_app/data/municipios/mainero.dart' as mainero;
import 'package:municipios_app/data/municipios/el_mante.dart' as el_mante;
import 'package:municipios_app/data/municipios/matamoros.dart' as matamoros;
import 'package:municipios_app/data/municipios/mendez.dart' as mendez;
import 'package:municipios_app/data/municipios/mier.dart' as mier;
import 'package:municipios_app/data/municipios/miguel_aleman.dart' as miguel_aleman;
import 'package:municipios_app/data/municipios/miquihuana.dart' as miquihuana;
import 'package:municipios_app/data/municipios/nuevo_laredo.dart' as nuevo_laredo;
import 'package:municipios_app/data/municipios/nuevo_morelos.dart' as nuevo_morelos;
import 'package:municipios_app/data/municipios/ocampo.dart' as ocampo;
import 'package:municipios_app/data/municipios/padilla.dart' as padilla;
import 'package:municipios_app/data/municipios/palmillas.dart' as palmillas;
import 'package:municipios_app/data/municipios/reynosa.dart' as reynosa;
import 'package:municipios_app/data/municipios/rio_bravo.dart' as rio_bravo;
import 'package:municipios_app/data/municipios/san_carlos.dart' as san_carlos;
import 'package:municipios_app/data/municipios/san_fernando.dart' as san_fernando;
import 'package:municipios_app/data/municipios/san_nicolas.dart' as san_nicolas;
import 'package:municipios_app/data/municipios/soto_la_marina.dart' as soto_la_marina;
import 'package:municipios_app/data/municipios/tampico.dart' as tampico;
import 'package:municipios_app/data/municipios/tula.dart' as tula;
import 'package:municipios_app/data/municipios/valle_hermoso.dart' as valle_hermoso;
import 'package:municipios_app/data/municipios/villagran.dart' as villagran;
import 'package:municipios_app/data/municipios/xicotencatl.dart' as xicotencatl;
import 'package:municipios_app/data/municipios/victoria.dart' as victoria;

class DetailScreen extends StatefulWidget {
  final Municipio municipio;
  const DetailScreen({Key? key, required this.municipio}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int _currentImageIndex = 0;
  late PageController _pageController;
  final ScrollController _scrollController = ScrollController();
  bool _showBackToTop = false;

  final FlutterTts _flutterTts = FlutterTts();
  bool _isSpeaking = false;

  final List<Map<String, dynamic>> _sections = [
    {'name': 'Historia', 'key': GlobalKey(), 'icon': Icons.history},
    {'name': 'Geografía', 'key': GlobalKey(), 'icon': Icons.landscape},
    {'name': 'Población', 'key': GlobalKey(), 'icon': Icons.people},
    {'name': 'Economía', 'key': GlobalKey(), 'icon': Icons.attach_money},
    {'name': 'Turismo', 'key': GlobalKey(), 'icon': Icons.beach_access},
    {'name': 'Gastronomía', 'key': GlobalKey(), 'icon': Icons.restaurant},
    {'name': 'Cultura y Tradiciones', 'key': GlobalKey(), 'icon': Icons.music_note},
    {'name': 'Educación', 'key': GlobalKey(), 'icon': Icons.school},
    {'name': 'Infraestructura', 'key': GlobalKey(), 'icon': Icons.business},
    {'name': 'Personajes Ilustres', 'key': GlobalKey(), 'icon': Icons.people_outline},
    {'name': 'Datos Curiosos', 'key': GlobalKey(), 'icon': Icons.lightbulb},
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
    final Set<GlobalKey> usedKeys = {};

    for (var section in sections) {
      String title = section['title']!;
      GlobalKey key = _findKeyForSection(title);
      if (usedKeys.contains(key)) {
        key = GlobalKey();
      } else {
        usedKeys.add(key);
      }

      bool isGeografia = title.toLowerCase().contains('geografía');
      bool isGastronomia = title.toLowerCase().contains('gastronomía');
      bool isTurismo = title.toLowerCase().contains('turismo');
      bool isCultura = title.toLowerCase().contains('cultura') || title.toLowerCase().contains('tradiciones');

      _sectionWidgets.add(
        Container(
          key: key,
          padding: const EdgeInsets.only(top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSectionTitle(title),
              _buildFormattedText(section['content']!),
              if (isGeografia && widget.municipio.imagenesGeografia.isNotEmpty)
                _buildImageGallery(widget.municipio.imagenesGeografia, '🗺️ Imágenes Geográficas'),
              if (isGastronomia && widget.municipio.imagenesGastronomia.isNotEmpty)
                _buildImageGallery(widget.municipio.imagenesGastronomia, '🍽️ Platillos Típicos'),
              if (isTurismo && widget.municipio.imagenesTurismo.isNotEmpty)
                _buildImageGallery(widget.municipio.imagenesTurismo, '🏞️ Atractivos Turísticos'),
              if (isCultura && widget.municipio.imagenesCultura.isNotEmpty)
                _buildImageGallery(widget.municipio.imagenesCultura, '🎭 Manifestaciones Culturales'),
            ],
          ),
        ),
      );
    }
  }

  Widget _buildImageGallery(List<String> imagenes, String titulo) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titulo,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFFFFD700)),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imagenes.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => _showFullImage(imagenes[index]),
                  child: Hero(
                    tag: 'gallery_$index',
                    child: Container(
                      width: 120,
                      margin: const EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage(imagenes[index]),
                          fit: BoxFit.cover,
                          onError: (exception, stackTrace) {
                            debugPrint('Error cargando imagen: $imagenes[index]');
                          },
                        ),
                      ),
                      child: const Center(
                        child: Icon(Icons.broken_image, color: Colors.white70),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _showFullImage(String imagePath) {
    showDialog(
      context: context,
      builder: (_) => Dialog(
        child: Stack(
          children: [
            PhotoView(
              imageProvider: AssetImage(imagePath),
              backgroundDecoration: const BoxDecoration(color: Colors.black),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: IconButton(
                icon: const Icon(Icons.close, color: Colors.white),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  GlobalKey _findKeyForSection(String title) {
    final cleanTitle = title.toLowerCase().trim();
    if (cleanTitle.contains('historia')) return _sections[0]['key'];
    if (cleanTitle.contains('geografía') || cleanTitle.contains('ubicación')) return _sections[1]['key'];
    if (cleanTitle.contains('población') || cleanTitle.contains('demografía')) return _sections[2]['key'];
    if (cleanTitle.contains('economía')) return _sections[3]['key'];
    if (cleanTitle.contains('turismo')) return _sections[4]['key'];
    if (cleanTitle.contains('gastronomía') || cleanTitle.contains('comida')) return _sections[5]['key'];
    if (cleanTitle.contains('cultura') || cleanTitle.contains('tradiciones')) return _sections[6]['key'];
    if (cleanTitle.contains('educación')) return _sections[7]['key'];
    if (cleanTitle.contains('infraestructura')) return _sections[8]['key'];
    if (cleanTitle.contains('personajes')) return _sections[9]['key'];
    if (cleanTitle.contains('curiosidades') || cleanTitle.contains('datos')) return _sections[10]['key'];
    return GlobalKey();
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Text(
        title,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF722F37)),
      ),
    );
  }

  Widget _buildFormattedText(String text) {
    final List<TextSpan> spans = [];
    final RegExp exp = RegExp(r'\*\*(.*?)\*\*');
    int lastIndex = 0;
    for (final match in exp.allMatches(text)) {
      if (match.start > lastIndex) {
        spans.add(TextSpan(text: text.substring(lastIndex, match.start)));
      }
      spans.add(TextSpan(text: match.group(1), style: const TextStyle(fontWeight: FontWeight.bold)));
      lastIndex = match.end;
    }
    if (lastIndex < text.length) {
      spans.add(TextSpan(text: text.substring(lastIndex)));
    }

    final lines = text.split('\n');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: lines.map((line) {
        if (line.startsWith('- ')) {
          return Padding(
            padding: const EdgeInsets.only(left: 8, top: 4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('• ', style: TextStyle(fontSize: 16, color: Color(0xFF722F37), fontWeight: FontWeight.bold)),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(color: Colors.black87, fontSize: 16, height: 1.5),
                      children: _parseInlineSpans(line.substring(2)),
                    ),
                  ),
                ),
              ],
            ),
          );
        } else if (line.trim().isEmpty) {
          return const SizedBox(height: 12);
        } else {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.black87, fontSize: 16, height: 1.5),
                children: _parseInlineSpans(line),
              ),
            ),
          );
        }
      }).toList(),
    );
  }

  List<TextSpan> _parseInlineSpans(String text) {
    final RegExp exp = RegExp(r'\*\*(.*?)\*\*');
    final List<TextSpan> spans = [];
    int lastIndex = 0;
    for (final match in exp.allMatches(text)) {
      if (match.start > lastIndex) {
        spans.add(TextSpan(text: text.substring(lastIndex, match.start)));
      }
      spans.add(TextSpan(text: match.group(1), style: const TextStyle(fontWeight: FontWeight.bold)));
      lastIndex = match.end;
    }
    if (lastIndex < text.length) {
      spans.add(TextSpan(text: text.substring(lastIndex)));
    }
    return spans;
  }

  Future<void> _speak() async {
    if (_isSpeaking) {
      await _flutterTts.stop();
      setState(() => _isSpeaking = false);
      return;
    }

    String fullText = widget.municipio.descripcionLarga.replaceAll(RegExp(r'\*\*'), '');
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
              leading: const Icon(Icons.place, color: Color(0xFF722F37)),
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

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isDesktop = size.width > 900;

    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'quiz_fab_${widget.municipio.id}',
            backgroundColor: const Color(0xFFFFD700),
            child: const Icon(Icons.quiz, color: Color(0xFF722F37)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuizScreen(municipio: widget.municipio),
                ),
              );
            },
          ),
          const SizedBox(height: 16),
          ChatAIWidget(municipio: widget.municipio),
          const SizedBox(height: 16),
          if (widget.municipio.monumentos3D.isNotEmpty)
            FloatingActionButton(
              heroTag: 'visor_3d_btn',
              onPressed: _showMonumentosMenu,
              backgroundColor: const Color(0xFFFFD700),
              child: const Icon(Icons.view_in_ar, color: Color(0xFF722F37)),
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
                backgroundColor: const Color(0xFF722F37),
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
                      PhotoViewGallery.builder(
                        scrollPhysics: const BouncingScrollPhysics(),
                        builder: (BuildContext context, int index) {
                          return PhotoViewGalleryPageOptions(
                            imageProvider: AssetImage(widget.municipio.imagenes[index]),
                            minScale: PhotoViewComputedScale.contained * 0.8,
                            maxScale: PhotoViewComputedScale.covered * 2,
                            heroAttributes: PhotoViewHeroAttributes(tag: widget.municipio.imagenes[index]),
                          );
                        },
                        itemCount: widget.municipio.imagenes.length,
                        loadingBuilder: (context, event) => const Center(
                          child: SizedBox(width: 20, height: 20, child: CircularProgressIndicator()),
                        ),
                        backgroundDecoration: const BoxDecoration(color: Colors.black),
                        pageController: _pageController,
                        onPageChanged: (index) {
                          setState(() {
                            _currentImageIndex = index;
                          });
                        },
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.transparent, Colors.black26],
                          ),
                        ),
                      ),
                      if (widget.municipio.imagenes.length > 1) ...[
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
                                  avatar: Icon(section['icon'], size: 18, color: const Color(0xFF722F37)),
                                  label: Text(section['name']),
                                  onPressed: () => _scrollToSection(section['key']),
                                  backgroundColor: const Color(0xFFFFD700).withOpacity(0.2),
                                  labelStyle: const TextStyle(color: Color(0xFF722F37)),
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
                          if (widget.municipio.id == 'altamira')
                            MapaInteractivo(lugares: altamira.lugaresAltamira),
                          if (widget.municipio.id == 'antiguo_morelos')
                            MapaInteractivo(lugares: antiguo_morelos.lugaresAntiguoMorelos),
                          if (widget.municipio.id == 'burgos')
                            MapaInteractivo(lugares: burgos.lugaresBurgos),
                          if (widget.municipio.id == 'bustamante')
                            MapaInteractivo(lugares: bustamante.lugaresBustamante),
                          if (widget.municipio.id == 'camargo')
                            MapaInteractivo(lugares: camargo.lugaresCamargo),
                          if (widget.municipio.id == 'casas')
                            MapaInteractivo(lugares: casas.lugaresCasas),
                          if (widget.municipio.id == 'ciudad_madero')
                            MapaInteractivo(lugares: ciudad_madero.lugaresCiudadMadero),
                          if (widget.municipio.id == 'ciudad_victoria')
                            MapaInteractivo(lugares: ciudad_victoria.lugaresVictoria),
                          if (widget.municipio.id == 'cruillas')
                            MapaInteractivo(lugares: cruillas.lugaresCruillas),
                          if (widget.municipio.id == 'gomez_farias')
                            MapaInteractivo(lugares: gomez_farias.lugaresGomezFarias),
                          if (widget.municipio.id == 'gonzalez')
                            MapaInteractivo(lugares: gonzalez.lugaresGonzalez),
                          if (widget.municipio.id == 'guerrero')
                            MapaInteractivo(lugares: guerrero.lugaresGuerrero),
                          if (widget.municipio.id == 'gustavo_diaz_ordaz')
                            MapaInteractivo(lugares: gustavo_diaz_ordaz.lugaresGustavoDiazOrdaz),
                          if (widget.municipio.id == 'gueemez')
                            MapaInteractivo(lugares: gueemez.lugaresGueemez),
                          if (widget.municipio.id == 'hidalgo')
                            MapaInteractivo(lugares: hidalgo.lugaresHidalgo),
                          if (widget.municipio.id == 'jaumave')
                            MapaInteractivo(lugares: jaumave.lugaresJaumave),
                          if (widget.municipio.id == 'jimenez')
                            MapaInteractivo(lugares: jimenez.lugaresJimenez),
                          if (widget.municipio.id == 'llera')
                            MapaInteractivo(lugares: llera.lugaresLlera),
                          if (widget.municipio.id == 'mainero')
                            MapaInteractivo(lugares: mainero.lugaresMainero),
                          if (widget.municipio.id == 'el_mante')
                            MapaInteractivo(lugares: el_mante.lugaresElMante),
                          if (widget.municipio.id == 'matamoros')
                            MapaInteractivo(lugares: matamoros.lugaresMatamoros),
                          if (widget.municipio.id == 'mendez')
                            MapaInteractivo(lugares: mendez.lugaresMendez),
                          if (widget.municipio.id == 'mier')
                            MapaInteractivo(lugares: mier.lugaresMier),
                          if (widget.municipio.id == 'miguel_aleman')
                            MapaInteractivo(lugares: miguel_aleman.lugaresMiguelAleman),
                          if (widget.municipio.id == 'miquihuana')
                            MapaInteractivo(lugares: miquihuana.lugaresMiquihuana),
                          if (widget.municipio.id == 'nuevo_laredo')
                            MapaInteractivo(lugares: nuevo_laredo.lugaresNuevoLaredo),
                          if (widget.municipio.id == 'nuevo_morelos')
                            MapaInteractivo(lugares: nuevo_morelos.lugaresNuevoMorelos),
                          if (widget.municipio.id == 'ocampo')
                            MapaInteractivo(lugares: ocampo.lugaresOcampo),
                          if (widget.municipio.id == 'padilla')
                            MapaInteractivo(lugares: padilla.lugaresPadilla),
                          if (widget.municipio.id == 'palmillas')
                            MapaInteractivo(lugares: palmillas.lugaresPalmillas),
                          if (widget.municipio.id == 'reynosa')
                            MapaInteractivo(lugares: reynosa.lugaresReynosa),
                          if (widget.municipio.id == 'rio_bravo')
                            MapaInteractivo(lugares: rio_bravo.lugaresRioBravo),
                          if (widget.municipio.id == 'san_carlos')
                            MapaInteractivo(lugares: san_carlos.lugaresSanCarlos),
                          if (widget.municipio.id == 'san_fernando')
                            MapaInteractivo(lugares: san_fernando.lugaresSanFernando),
                          if (widget.municipio.id == 'san_nicolas')
                            MapaInteractivo(lugares: san_nicolas.lugaresSanNicolas),
                          if (widget.municipio.id == 'soto_la_marina')
                            MapaInteractivo(lugares: soto_la_marina.lugaresSotoLaMarina),
                          if (widget.municipio.id == 'tampico')
                            MapaInteractivo(lugares: tampico.lugaresTampico),
                          if (widget.municipio.id == 'tula')
                            MapaInteractivo(lugares: tula.lugaresTula),
                          if (widget.municipio.id == 'valle_hermoso')
                            MapaInteractivo(lugares: valle_hermoso.lugaresValleHermoso),
                          if (widget.municipio.id == 'villagran')
                            MapaInteractivo(lugares: villagran.lugaresVillagran),
                          if (widget.municipio.id == 'xicotencatl')
                            MapaInteractivo(lugares: xicotencatl.lugaresXicotencatl),
                          if (widget.municipio.id == 'victoria')
                            MapaInteractivo(lugares: victoria.lugaresVictoria),
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
                backgroundColor: const Color(0xFFFFD700),
                child: const Icon(Icons.arrow_upward, color: Color(0xFF722F37)),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildMainInfo() {
    return Card(
      elevation: 8,
      shadowColor: const Color(0xFF722F37).withOpacity(0.3),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Información General',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF722F37)),
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
            color: const Color(0xFF722F37).withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: const Color(0xFF722F37), size: 24),
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
}