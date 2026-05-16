import '../../models/municipio.dart';
import '../../models/monumento.dart';

final mier = Municipio(
  id: 'mier',
  nombre: 'Mier',
  descripcionCorta: 'Pueblo Mágico con historia, arquitectura colonial y tradiciones.',
  descripcionLarga: '''
## Introducción
Mier es un municipio situado en el noreste de Tamaulipas, a orillas del Río Bravo, en la región de la Frontera Chica. Es conocido como “Pueblo Mágico” desde 2007, por su impresionante arquitectura colonial, sus tradiciones vivas y su historia ligada a la independencia y la revolución. Caminar por sus calles empedradas es transportarse al México virreinal.

## Geografía
Localizado en el norte de Tamaulipas, en la ribera del Río Bravo, frente a Roma, Texas. Clima seco extremoso, veranos muy calurosos, inviernos templados.

## Población
Aproximadamente 6,400 habitantes (2020), con fuerte identidad comunitaria.

## Historia
Fundado el 6 de marzo de 1753 por José de Escandón con el nombre de Villa de la Purísima Concepción de Mier. Su nombre proviene de Francisco de Mier y Torre. Durante la Independencia fue un bastión insurgente. En 1817, Francisco Xavier Mina pasó por la región. En 1846, durante la Guerra México-Estados Unidos, la población defendió su territorio. Fue nombrado Pueblo Mágico en 2007.

## Economía
- **Agricultura:** maíz, sorgo, frijol, hortalizas.
- **Ganadería:** bovina, caprina.
- **Turismo:** Pueblo Mágico, arquitectura, gastronomía.
- **Comercio:** artesanías, hoteles, restaurantes.
- **Pesca** en el río.

## Turismo
- **Parroquia de la Inmaculada Concepción:** construida en el siglo XVIII, joya del barroco.
- **Museo de la Batalla de Mier:** recuerda la gesta insurgente.
- **Malecón del Río Álamo:** paseo con vistas al río.
- **Casonas coloniales:** con patios y arcos de cantera.
- **Puente Internacional Mier-Roma.**
- **Plaza principal con kiosco.**
- **Zona arqueológica de El Sabinito** (cerca).
- **Capilla de San Juan Bautista.**

## Gastronomía
Cabrito al pastor, carne seca con huevo, tamales, enchiladas norteñas, asado de puerco. Dulces: glorias, jamoncillos, dulce de calabaza, pan de pulque.

## Cultura y Tradiciones
Fiestas patronales de la Inmaculada Concepción (8 de diciembre). Festival Internacional de la Música (marzo). Día de la Candelaria (2 de febrero) con danza de los Matlachines. Semana Santa. Artesanías: bordados de punto de cruz, cerámica, talabartería, repujado en plata.

## Educación
Escuelas básicas, bachillerato (COBAT). Para estudios superiores, viajan a Reynosa o Nuevo Laredo.

## Infraestructura
Centro de salud y clínica del IMSS. Carretera pavimentada.

## Personajes Ilustres
- Francisco de Mier y Torre (1700-1760): gobernador de Nuevo León.
- Francisco Xavier Mina (1789-1817): insurgente.
- Don José María López (1900-1980): promotor cultural.

## Datos Curiosos
- Mier fue declarado Pueblo Mágico en 2007.
- Las inundaciones de 2010 dañaron parte del pueblo, pero fue reconstruido.
- La danza de los Matlachines es una tradición prehispánica.
- El puente internacional hacia Roma, Texas, es un cruce pequeño.
- Las casonas tienen techos de teja y patios con flores.
''',
  imagenAsset: 'assets/images/mier.jpg',
  imagenes: [
    'assets/fotos/Mier.png',
    'assets/fotos/mier1.jpg',
    'assets/fotos/mier2.jpg',
  ],
  poblacion: '6,400 hab.',
  superficie: '300 km²',
  gentilicio: 'Mierense',
  monumentos3D: [
    Monumento(
      nombre: 'Mi heroica',
      descripcion: 'Monumento a la independencia.',
      rutaModelo: 'assets/models/Mier.glb',
      escala: 1.0,
    ),
  ],
  imagenesGastronomia: [],
  imagenesTurismo: [],
);

final List<Map<String, dynamic>> lugaresMier = [
  {'nombre': 'Parroquia de la Inmaculada Concepción', 'descripcion': 'Templo barroco.', 'lat': 26.4167, 'lng': -99.1500},
  {'nombre': 'Museo de la Batalla de Mier', 'descripcion': 'Historia insurgente.', 'lat': 26.4170, 'lng': -99.1520},
  {'nombre': 'Malecón del Río Álamo', 'descripcion': 'Paseo frente al río.', 'lat': 26.4180, 'lng': -99.1480},
  {'nombre': 'Plaza Principal', 'descripcion': 'Centro de la vida social.', 'lat': 26.4160, 'lng': -99.1490},
];