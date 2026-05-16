import '../../models/municipio.dart';
import '../../models/monumento.dart';

final jimenez = Municipio(
  id: 'jimenez',
  nombre: 'Jiménez',
  descripcionCorta: 'Tranquilidad rural y tradición en el sur del estado.',
  descripcionLarga: '''
## Introducción
Jiménez es un municipio del sur de Tamaulipas, caracterizado por su tranquila vida rural, su ambiente de campo y la fortaleza de su comunidad. Su nombre completo es Mariano Jiménez, en honor al héroe de la Independencia. La economía se basa en la agricultura y la ganadería, y sus habitantes conservan tradiciones, valores y costumbres que reflejan la identidad del norte del país.

## Geografía
Se localiza en la zona sur del estado, en una región de llanuras y áreas semiáridas. Altitud promedio 100 msnm. Clima cálido subhúmedo. Vegetación: matorral, mezquite, huizache.

## Población
Aproximadamente 9,935 habitantes (2020), distribuidos entre la cabecera y comunidades rurales.

## Historia
El municipio tiene origen colonial como asentamiento agrícola y ganadero. En el siglo XIX recibió el nombre de Mariano Jiménez. La construcción de caminos y la llegada del ferrocarril impulsaron su desarrollo.

## Economía
- **Agricultura:** maíz, sorgo, frijol, hortalizas.
- **Ganadería:** bovina, ovina, caprina (queso, carne).
- **Comercio:** tiendas, mercados, talleres.

## Turismo
- **Río Purificación:** paseos y pesca.
- **Plaza Principal:** jardín con kiosco.
- **Áreas naturales:** paisajes de llanura para caminatas.
- **Iglesia de la Virgen del Carmen:** templo principal.
- **Presa de Jiménez:** pesca de mojarra.

## Gastronomía
Carne asada, cortadillo, barbacoa, enchiladas, gorditas, tamales, café de olla, dulces tradicionales.

## Cultura y Tradiciones
Fiestas patronales de la Virgen del Carmen (16 de julio). Día de Muertos. Fiestas Patrias. Artesanías: talabartería, tejidos de palma.

## Educación
Preescolar, primaria, telesecundaria, telebachillerato. Para estudios superiores, viajan a El Mante o Ciudad Victoria.

## Infraestructura
Centro de salud rural. Caminos rurales.

## Personajes Ilustres
- Mariano Jiménez (1781-1811): héroe de la Independencia.
- Don José María López (1900-1980): promotor de la agricultura.
- Profesora Carmen García (1930-2010): fundadora de la escuela.

## Datos Curiosos
- El río Purificación es conocido por sus pozas.
- La Virgen del Carmen es la patrona.
- Los tamales son típicos de las fiestas.
- En la plaza principal hay un kiosco de hierro forjado.
- El municipio es productor de frijol.
''',
  imagenAsset: 'assets/images/jimenez.jpg',
  imagenes: [
    'assets/fotos/jimenez.png',
    'assets/fotos/jimenez.jpg',
    'assets/fotos/jimenez2.jpg'
  ],
  poblacion: '6,000 hab.',
  superficie: '1,100 km²',
  gentilicio: 'Jimense',
  monumentos3D: [
    Monumento(
      nombre: 'Monumento a Santander Jiménez',
      descripcion: 'Escultura en la plaza.',
      rutaModelo: 'assets/models/Jimenez.glb',
      escala: 1.0,
    ),
  ],
  imagenesGastronomia: [],
  imagenesTurismo: [],
);

final List<Map<String, dynamic>> lugaresJimenez = [
  {'nombre': 'Río Purificación', 'descripcion': 'Paseos y pesca.', 'lat': 24.1167, 'lng': -98.7333},
  {'nombre': 'Plaza Principal', 'descripcion': 'Centro de convivencia.', 'lat': 24.1150, 'lng': -98.7350},
  {'nombre': 'Iglesia de la Virgen del Carmen', 'descripcion': 'Templo principal.', 'lat': 24.1140, 'lng': -98.7360},
];