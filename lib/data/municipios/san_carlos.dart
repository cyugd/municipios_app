import '../../models/municipio.dart';
import '../../models/monumento.dart';

final san_carlos = Municipio(
  id: 'san_carlos',
  nombre: 'San Carlos',
  descripcionCorta: 'Municipio con historia minera y tradiciones rurales en la Sierra de San Carlos.',
  descripcionLarga: '''
## Introducción
San Carlos es un municipio rodeado por la Sierra de San Carlos, con gran riqueza natural y paisajes montañosos que lo convierten en un destino atractivo para el ecoturismo. Fue fundado en 1766 y llegó a ser capital del Nuevo Santander, lo que le otorgó relevancia política y administrativa en la época colonial. Su desarrollo histórico pasó de la minería a la agricultura, ganadería y artesanías, conservando tradiciones y atrayendo turismo por su naturaleza.

## Geografía
Se encuentra en el centro-norte de Tamaulipas, dentro de la Sierra de San Carlos. Su territorio es montañoso, con cañones, lomeríos y vegetación semiseca. El Cerro Peña Nevada, con más de 1,800 metros de altura, es la elevación más destacada. La sierra alberga especies de flora como pinos, encinos y magueyes, además de fauna como venados, zorros y aves silvestres. Clima templado con variaciones según la altitud.

## Población
Aproximadamente 9,000 habitantes (2020). Población mayoritariamente rural, con migración hacia ciudades cercanas.

## Historia
Fundado por José de Escandón en 1766. San Carlos fue capital del Nuevo Santander entre 1769 y 1811, lo que le dio gran importancia. Durante el siglo XVIII tuvo relevancia minera, especialmente en la extracción de mármol. En 1869 cambió su nombre a Villa de Arteaga, en honor al general José María Arteaga. La historia refleja la transición de un centro político y minero a una comunidad rural.

## Economía
- **Agricultura:** maíz, sorgo, frijol, cártamo.
- **Ganadería:** bovino, caprino, ovino (queso artesanal).
- **Mármol:** extracción a pequeña escala.
- **Mezcal:** producción artesanal reconocida.
- **Turismo ecológico.**

## Turismo
- **Cerro Peña Nevada:** uno de los puntos más altos de Tamaulipas, ideal para senderismo.
- **Parroquia de San Carlos Borromeo:** templo histórico.
- **Casa del Capitán Lores (Museo del Mezcal):** espacio cultural.
- **Plaza Principal:** centro de convivencia.
- **Antiguas minas:** vestigios de la actividad minera.

## Gastronomía
Asado de puerco, cabrito al pastor, tamales de elote, queso de leche de cabra, mezcal artesanal, pan de pulque.

## Cultura y Tradiciones
Fiesta de San Carlos Borromeo (4 de noviembre) con celebraciones religiosas. Feria del Mezcal. Semana Santa. Música norteña. Artesanías: tejidos de palma, bordados.

## Educación
Escuelas básicas, bachillerato (COBAT). Para estudios superiores, viajan a Ciudad Victoria.

## Infraestructura
Centro de salud rural. Caminos pavimentados y de terracería.

## Personajes Ilustres
- Capitán José de Escandón: fundador.
- General José María Arteaga.

## Datos Curiosos
- San Carlos fue capital del Nuevo Santander.
- El Cerro Peña Nevada es uno de los puntos más altos del estado.
- El mezcal de San Carlos es famoso en la región.
- Hay antiguas minas de mármol en la sierra.
- La iglesia data del siglo XVIII.
''',
  imagenAsset: 'assets/images/san_carlos.jpeg',
  imagenes: [
    'assets/fotos/San_carlos.png',
    'assets/fotos/sancarlos2.jpg',
    'assets/fotos/sancarlos07.jpg'
  ],
  poblacion: '9,000 hab.',
  superficie: '2,900 km²',
  gentilicio: 'Sancarlense',
  monumentos3D: [
    Monumento(
      nombre: 'Catedral de San Carlos',
      descripcion: 'Templo principal.',
      rutaModelo: 'assets/models/Sancarlos.glb',
      escala: 1.0,
    ),
  ],
  imagenesGeografia: [
    'assets/Ciudad_geografia/San Carlos_geografia.jpg',
  ],
  imagenesGastronomia: [
    'assets/Ciudad_gastronomia/San Carlos_gastronomia.png',
    'assets/Ciudad_gastronomia/San Carlos_gastronomia2.jpg',
    'assets/Ciudad_gastronomia/San Carlos_gastronomia3.jpg',
    'assets/Ciudad_gastronomia/San Carlos_gastronomia4.jpg',
  ],
  imagenesTurismo: [
    'assets/Ciudad_Turismo/San Carlos_turismo.png',
    'assets/Ciudad_Turismo/San Carlos_turismo2.png',
  ],
  imagenesCultura: [
    'assets/Ciudad_Cultura/San Carlos_cultura.png',
  ],
);

final List<Map<String, dynamic>> lugaresSanCarlos = [
  {
    'nombre': 'Cerro Peña Nevada',
    'descripcion': 'Uno de los puntos más altos de Tamaulipas.',
    'lat': 24.4167,
    'lng': -99.2000,
  },
  {
    'nombre': 'Parroquia de San Carlos Borromeo',
    'descripcion': 'Templo histórico.',
    'lat': 24.4000,
    'lng': -99.2000,
  },
  {
    'nombre': 'Casa del Capitán Lores (Museo del Mezcal)',
    'descripcion': 'Museo artesanal.',
    'lat': 24.4020,
    'lng': -99.2020,
  },
];
