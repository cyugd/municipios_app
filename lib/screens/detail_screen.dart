import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:municipios_app/models/municipio.dart';
import 'package:municipios_app/widgets/chat_ai_widget.dart';
import 'package:municipios_app/widgets/mapa_interactivo.dart';
import 'package:municipios_app/screens/visor_3d_screen.dart';
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
  const DetailScreen({super.key, required this.municipio});

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

  // Definimos las secciones con sus respectivas palabras clave
  final List<Map<String, dynamic>> _sections = [
    {'name': 'Historia', 'icon': Icons.history, 'keywords': ['historia']},
    {'name': 'Geografía', 'icon': Icons.landscape, 'keywords': ['geografía', 'ubicación', 'medio ambiente']},
    {'name': 'Demografía', 'icon': Icons.people, 'keywords': ['población', 'demografía']},
    {'name': 'Economía', 'icon': Icons.attach_money, 'keywords': ['economía']},
    {'name': 'Turismo', 'icon': Icons.beach_access, 'keywords': ['turismo', 'atractivos']},
    {'name': 'Gastronomía', 'icon': Icons.restaurant, 'keywords': ['gastronomía', 'comida']},
    {'name': 'Cultura', 'icon': Icons.music_note, 'keywords': ['cultura', 'tradiciones']},
    {'name': 'Educación', 'icon': Icons.school, 'keywords': ['educación']},
    {'name': 'Infraestructura', 'icon': Icons.business, 'keywords': ['infraestructura', 'comunicaciones']},
    {'name': 'Personajes', 'icon': Icons.people_outline, 'keywords': ['personajes']},
    {'name': 'Curiosidades', 'icon': Icons.lightbulb, 'keywords': ['curiosidades', 'datos']},
  ];

  // Lista de widgets de sección, cada uno con su propio GlobalKey único
  List<Map<String, dynamic>> _sectionWidgets = []; // cada elemento: {'title': String, 'widget': Widget, 'key': GlobalKey}

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
    if (key.currentContext != null) {
      Scrollable.ensureVisible(
        key.currentContext!,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOutCubic,
      );
    }
  }

  void _buildSectionWidgets() {
    final text = widget.municipio.descripcionLarga;
    final lines = text.split('\n');
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
        currentContent += '$line\n';
      }
    }
    if (currentSection.isNotEmpty) {
      sections.add({'title': currentSection, 'content': currentContent.trim()});
    }

    // Limpiar lista anterior
    _sectionWidgets.clear();

    // Para cada sección del texto, asignar una clave única (basada en el título) y un GlobalKey único
    for (var section in sections) {
      final title = section['title']!;
      final content = section['content']!;
      // Crear una clave única para esta sección
      final uniqueKey = GlobalKey();
      _sectionWidgets.add({
        'title': title,
        'widget': Container(
          key: uniqueKey,
          padding: const EdgeInsets.only(top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSectionTitle(title),
              _buildFormattedText(content),
            ],
          ),
        ),
        'key': uniqueKey,
        'keywords': _getKeywordsForTitle(title), // para facilitar navegación
      });
    }
  }

  // Devuelve las palabras clave asociadas a un título según la lista de secciones
  List<String> _getKeywordsForTitle(String title) {
    final lowerTitle = title.toLowerCase();
    for (var sec in _sections) {
      for (var kw in sec['keywords'] as List<String>) {
        if (lowerTitle.contains(kw)) {
          return sec['keywords'] as List<String>;
        }
      }
    }
    return [];
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

  Future<void> _speak() async {
    if (_isSpeaking) {
      await _flutterTts.stop();
      setState(() => _isSpeaking = false);
      return;
    }

    String fullText = widget.municipio.descripcionLarga;
    fullText = _cleanText(fullText);
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

  String _cleanText(String text) {
    final unwanted = RegExp(r'[!@#$%^&*()_+={}\[\]|;:"\\<>,?/]');
    String cleaned = text.replaceAll(unwanted, '');
    cleaned = cleaned.replaceAll('`', '');
    cleaned = cleaned.replaceAll('~', '');
    cleaned = cleaned.replaceAll('_', ' ');
    cleaned = cleaned.replaceAll('**', '###BOLD###');
    cleaned = cleaned.replaceAll('*', '');
    cleaned = cleaned.replaceAll('###BOLD###', '**');
    cleaned = cleaned.replaceAll('&amp;', 'y');
    cleaned = cleaned.replaceAll('&', 'y');
    cleaned = cleaned.replaceAll('?', '.');
    cleaned = cleaned.replaceAll('!', '');
    cleaned = cleaned.replaceAll('¡', '');
    cleaned = cleaned.replaceAll('¿', '');
    return cleaned;
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
          ChatAIWidget(municipio: widget.municipio),
          const SizedBox(height: 16),
          if (widget.municipio.monumentos3D.isNotEmpty)
            FloatingActionButton(
              heroTag: 'visor_3d_btn_${widget.municipio.id}',
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
                      padding: EdgeInsets.symmetric(horizontal: isDesktop ? 40.0 : 16.0, vertical: 24.0),
                      child: Column(
                        children: [
                          // Botones de navegación (ActionChip)
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
                                  onPressed: () {
                                    // Buscar la primera sección cuyo título contenga alguna keyword
                                    final targetKey = _findKeyForKeywords(section['keywords'] as List<String>);
                                    if (targetKey != null) {
                                      _scrollToSection(targetKey);
                                    }
                                  },
                                  backgroundColor: const Color(0xFFFFD700).withOpacity(0.2),
                                  labelStyle: const TextStyle(color: Color(0xFF722F37)),
                                );
                              },
                            ),
                          ),
                          _buildMainInfo(),
                          const SizedBox(height: 24),
                          // Lista de widgets de sección (cada uno con su propia GlobalKey única)
                          ..._sectionWidgets.map((item) => item['widget'] as Widget),
                          // Mapas interactivos
                          if (widget.municipio.id == 'abasolo') MapaInteractivo(lugares: abasolo.lugaresAbasolo),
                          if (widget.municipio.id == 'aldama') MapaInteractivo(lugares: aldama.lugaresAldama),
                          if (widget.municipio.id == 'altamira') MapaInteractivo(lugares: altamira.lugaresAltamira),
                          if (widget.municipio.id == 'antiguo_morelos') MapaInteractivo(lugares: antiguo_morelos.lugaresAntiguoMorelos),
                          if (widget.municipio.id == 'burgos') MapaInteractivo(lugares: burgos.lugaresBurgos),
                          if (widget.municipio.id == 'bustamante') MapaInteractivo(lugares: bustamante.lugaresBustamante),
                          if (widget.municipio.id == 'camargo') MapaInteractivo(lugares: camargo.lugaresCamargo),
                          if (widget.municipio.id == 'casas') MapaInteractivo(lugares: casas.lugaresCasas),
                          if (widget.municipio.id == 'ciudad_madero') MapaInteractivo(lugares: ciudad_madero.lugaresCiudadMadero),
                          if (widget.municipio.id == 'ciudad_victoria') MapaInteractivo(lugares: ciudad_victoria.lugaresVictoria),
                          if (widget.municipio.id == 'cruillas') MapaInteractivo(lugares: cruillas.lugaresCruillas),
                          if (widget.municipio.id == 'gomez_farias') MapaInteractivo(lugares: gomez_farias.lugaresGomezFarias),
                          if (widget.municipio.id == 'gonzalez') MapaInteractivo(lugares: gonzalez.lugaresGonzalez),
                          if (widget.municipio.id == 'guerrero') MapaInteractivo(lugares: guerrero.lugaresGuerrero),
                          if (widget.municipio.id == 'gustavo_diaz_ordaz') MapaInteractivo(lugares: gustavo_diaz_ordaz.lugaresGustavoDiazOrdaz),
                          if (widget.municipio.id == 'gueemez') MapaInteractivo(lugares: gueemez.lugaresGueemez),
                          if (widget.municipio.id == 'hidalgo') MapaInteractivo(lugares: hidalgo.lugaresHidalgo),
                          if (widget.municipio.id == 'jaumave') MapaInteractivo(lugares: jaumave.lugaresJaumave),
                          if (widget.municipio.id == 'jimenez') MapaInteractivo(lugares: jimenez.lugaresJimenez),
                          if (widget.municipio.id == 'llera') MapaInteractivo(lugares: llera.lugaresLlera),
                          if (widget.municipio.id == 'mainero') MapaInteractivo(lugares: mainero.lugaresMainero),
                          if (widget.municipio.id == 'el_mante') MapaInteractivo(lugares: el_mante.lugaresElMante),
                          if (widget.municipio.id == 'matamoros') MapaInteractivo(lugares: matamoros.lugaresMatamoros),
                          if (widget.municipio.id == 'mendez') MapaInteractivo(lugares: mendez.lugaresMendez),
                          if (widget.municipio.id == 'mier') MapaInteractivo(lugares: mier.lugaresMier),
                          if (widget.municipio.id == 'miguel_aleman') MapaInteractivo(lugares: miguel_aleman.lugaresMiguelAleman),
                          if (widget.municipio.id == 'miquihuana') MapaInteractivo(lugares: miquihuana.lugaresMiquihuana),
                          if (widget.municipio.id == 'nuevo_laredo') MapaInteractivo(lugares: nuevo_laredo.lugaresNuevoLaredo),
                          if (widget.municipio.id == 'nuevo_morelos') MapaInteractivo(lugares: nuevo_morelos.lugaresNuevoMorelos),
                          if (widget.municipio.id == 'ocampo') MapaInteractivo(lugares: ocampo.lugaresOcampo),
                          if (widget.municipio.id == 'padilla') MapaInteractivo(lugares: padilla.lugaresPadilla),
                          if (widget.municipio.id == 'palmillas') MapaInteractivo(lugares: palmillas.lugaresPalmillas),
                          if (widget.municipio.id == 'reynosa') MapaInteractivo(lugares: reynosa.lugaresReynosa),
                          if (widget.municipio.id == 'rio_bravo') MapaInteractivo(lugares: rio_bravo.lugaresRioBravo),
                          if (widget.municipio.id == 'san_carlos') MapaInteractivo(lugares: san_carlos.lugaresSanCarlos),
                          if (widget.municipio.id == 'san_fernando') MapaInteractivo(lugares: san_fernando.lugaresSanFernando),
                          if (widget.municipio.id == 'san_nicolas') MapaInteractivo(lugares: san_nicolas.lugaresSanNicolas),
                          if (widget.municipio.id == 'soto_la_marina') MapaInteractivo(lugares: soto_la_marina.lugaresSotoLaMarina),
                          if (widget.municipio.id == 'tampico') MapaInteractivo(lugares: tampico.lugaresTampico),
                          if (widget.municipio.id == 'tula') MapaInteractivo(lugares: tula.lugaresTula),
                          if (widget.municipio.id == 'valle_hermoso') MapaInteractivo(lugares: valle_hermoso.lugaresValleHermoso),
                          if (widget.municipio.id == 'villagran') MapaInteractivo(lugares: villagran.lugaresVillagran),
                          if (widget.municipio.id == 'xicotencatl') MapaInteractivo(lugares: xicotencatl.lugaresXicotencatl),
                          if (widget.municipio.id == 'victoria') MapaInteractivo(lugares: victoria.lugaresVictoria),
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

  // Función auxiliar para encontrar la GlobalKey de la primera sección que coincida con las keywords
  GlobalKey? _findKeyForKeywords(List<String> keywords) {
    for (var item in _sectionWidgets) {
      final itemKeywords = item['keywords'] as List<String>;
      if (itemKeywords.isNotEmpty && keywords.any((kw) => itemKeywords.any((ikw) => ikw.contains(kw)))) {
        return item['key'] as GlobalKey;
      }
    }
    return null;
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

  Widget _buildFormattedText(String text) {
    final cleanText = _cleanText(text);
    final lines = cleanText.split('\n');
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
                const Text('• ', style: TextStyle(fontSize: 16, color: Color(0xFF722F37), fontWeight: FontWeight.bold)),
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