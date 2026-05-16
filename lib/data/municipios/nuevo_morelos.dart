import '../../models/municipio.dart';
import '../../models/monumento.dart';

final nuevo_morelos = Municipio(
  id: 'nuevo_morelos',
  nombre: 'Nuevo Morelos',
  descripcionCorta: 'Municipio con historia de resurgimiento y tradición rural.',
  descripcionLarga: '''
## Introducción
El municipio de Nuevo Morelos tiene sus orígenes en el siglo XIX cuando se fundó la localidad conocida como Congregación de Mesillas. Durante la Revolución Mexicana la población se vio afectada por la inestabilidad del país, lo que provocó que algunos habitantes abandonaran temporalmente la zona. Posteriormente la comunidad fue repoblada y continuó su desarrollo, consolidándose como un municipio con identidad propia dentro del estado de Tamaulipas. La historia de Nuevo Morelos refleja la resiliencia de sus pobladores, quienes han sabido mantener sus tradiciones rurales.

## Geografía
Se localiza en la zona sur del estado de Tamaulipas. Su territorio está formado por áreas rurales, tierras agrícolas y zonas naturales que favorecen actividades como la agricultura y la ganadería. El clima es templado con variaciones según la temporada. Las condiciones del suelo y la disponibilidad de agua han sido factores clave para el desarrollo agrícola. El paisaje rural y los espacios naturales ofrecen oportunidades para el turismo ecológico.

## Población
La población está formada principalmente por comunidades pequeñas y zonas rurales. Aproximadamente 4,000 habitantes (2020). La mayoría de los habitantes se dedican a actividades agrícolas, ganaderas o al comercio local. Existe migración hacia ciudades más grandes y Estados Unidos.

## Historia
A finales del siglo XIX surgió la Congregación de Mesillas. En 1921 fue abandonado durante la Revolución Mexicana y repoblado por una comisión local. En 1980 se mejoró la infraestructura y servicios básicos. Actualmente, el municipio apuesta por el desarrollo sostenible.

## Economía
- **Agricultura:** maíz, frijol, hortalizas.
- **Ganadería:** bovina, caprina.
- **Comercio local:** pequeños negocios.
- **Turismo rural:** en crecimiento.

## Turismo
- **Presa El Oyul:** cuerpo de agua ideal para pesca y paseos familiares.
- **Templo de San José:** iglesia histórica del siglo XVIII.

## Gastronomía
Maíz, frijol, carne de res y cabrito, tortillas hechas a mano, guisos tradicionales, atole y café de olla.

## Cultura y Tradiciones
Fiestas patronales, ferias agrícolas, reuniones familiares. Música norteña y banda. Artesanías: tejidos de palma, bordados.

## Educación
Preescolar, primaria, telesecundaria, telebachillerato. Para estudios superiores, los jóvenes se trasladan a El Mante o Ciudad Victoria.

## Infraestructura
Centro de salud rural. Caminos rurales pavimentados y de terracería.

## Personajes Ilustres
- Fundadores de la repoblación de 1921.
- Profesores locales que impulsaron la educación.

## Datos Curiosos
- Fue abandonado durante la Revolución Mexicana.
- La repoblación ocurrió en 1921 por una comisión local.
- La Presa El Oyul es popular para la pesca de mojarra.
- Se conservan viviendas de adobe y techos de teja.
- La iglesia de San José data del siglo XVIII.
''',
  imagenAsset: 'assets/images/nuevo_morelos.jpg',
  imagenes: [
    'assets/fotos/Nuevo_morelos.png',
    'assets/fotos/nuevomorelos.jpg',
    'assets/fotos/nuevomorelos2.jpg'
  ],
  poblacion: '4,000 hab.',
  superficie: '200 km²',
  gentilicio: 'Morelense',
  monumentos3D: [
    Monumento(
      nombre: 'Cruz Central',
      descripcion: 'Cruz emblemática en la plaza principal.',
      rutaModelo: 'assets/models/Morelos.glb',
      escala: 1.0,
    ),
  ],
  imagenesGastronomia: [],
  imagenesTurismo: [],
);

final List<Map<String, dynamic>> lugaresNuevoMorelos = [
  {
    'nombre': 'Presa El Oyul',
    'descripcion': 'Pesca y paseos familiares.',
    'lat': 23.0167,
    'lng': -99.1500,
  },
  {
    'nombre': 'Templo de San José',
    'descripcion': 'Iglesia histórica del siglo XVIII.',
    'lat': 23.0000,
    'lng': -99.1333,
  },
];