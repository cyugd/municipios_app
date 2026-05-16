import '../../models/municipio.dart';
import '../../models/monumento.dart';

final hidalgo = Municipio(
  id: 'hidalgo',
  nombre: 'Hidalgo',
  descripcionCorta: 'Tradición histórica y vida rural en el centro del estado.',
  descripcionLarga: '''
## Introducción
Hidalgo es un municipio ubicado al centro-norte de Tamaulipas, en una zona donde la Sierra Madre Oriental desciende hacia los valles y planicies. Su nombre honra al Padre de la Patria, Miguel Hidalgo y Costilla, y forma parte de las primeras villas fundadas durante la colonización de José de Escandón. Rodeado por sierras, ríos y tierras fértiles, Hidalgo ha sido testigo del paso de pueblos originarios, misiones religiosas y movimientos sociales.

## Geografía
Se localiza al centro-norte de Tamaulipas, en una zona donde la Sierra Madre Oriental desciende hacia los valles. Altitud media 250-300 msnm. Temperatura media 24°C. Cuerpos de agua: río Purificación, río San Antonio, presa La Escondida y manantial El Chorrito. Vegetación: matorral, pastizales, mezquite, huizache, zonas boscosas.

## Población
Aproximadamente 22,000 habitantes (2020), mayoritariamente rural.

## Historia
Época prehispánica habitada por grupos huastecos. La Villa de Hidalgo fue fundada el 14 de mayo de 1752 por José de Escandón. Durante la Revolución Mexicana hubo reparto de tierras.

## Economía
- **Agricultura:** maíz, sorgo, frijol, cítricos, hortalizas.
- **Ganadería:** bovina, caprina, ovina.
- **Comercio:** venta de productos locales.
- **Industria pequeña:** talleres, panaderías.
- **Turismo:** en crecimiento.

## Turismo
- **Río Purificación:** paseos y pesca.
- **Sierra Chiquita:** senderismo y miradores.
- **Parador El Tomaseño:** área recreativa con albercas.
- **Presa La Escondida:** pesca y camping.
- **Manantial El Chorrito:** agua cristalina.
- **Parroquia de San José:** templo del siglo XVIII.
- **Cerro de la Cruz:** mirador.

## Gastronomía
Asado de puerco, tamales de elote y rojos, gorditas rellenas.

## Cultura y Tradiciones
Fiestas de San José (19 de marzo) con celebraciones religiosas, danzas, ferias. Día de Muertos, Semana Santa. Artesanías: talabartería, tejidos de palma, bordados.

## Educación
Escuelas básicas, bachillerato (COBAT). Para estudios superiores, viajan a Ciudad Victoria.

## Infraestructura
Centro de salud y clínica del IMSS. Carreteras pavimentadas.

## Personajes Ilustres
- Miguel Hidalgo (1753-1811): Padre de la Patria.
- Don José María López (1900-1980): promotor de la agricultura.
- Profesora Elena García (1930-2015): fundadora de la biblioteca.

## Datos Curiosos
- El río Purificación es conocido por sus pozas naturales.
- La presa La Escondida es ideal para pesca de mojarra.
- En la sierra se pueden observar venados y águilas.
- Los tamales de elote son típicos.
- El parador El Tomaseño es popular en Semana Santa.
''',
  imagenAsset: 'assets/images/hidalgo.jpg',
  imagenes: [
    'assets/fotos/hidalgo.png',
    'assets/fotos/hidalgo1.jpeg',
    'assets/fotos/hidalgo2.jpeg',
  ],
  poblacion: '22,000 hab.',
  superficie: '300 km²',
  gentilicio: 'Hidalguense',
  monumentos3D: [
    Monumento(
      nombre: 'Virgen de la misericordia',
      descripcion: 'Escultura religiosa.',
      rutaModelo: 'assets/models/Hidalgo.glb',
      escala: 1.0,
    ),
  ],
  imagenesGastronomia: [],
  imagenesTurismo: [],
);

final List<Map<String, dynamic>> lugaresHidalgo = [
  {'nombre': 'Río Purificación', 'descripcion': 'Paseos y pesca.', 'lat': 24.2500, 'lng': -99.4167},
  {'nombre': 'Sierra Chiquita', 'descripcion': 'Senderismo y miradores.', 'lat': 24.2700, 'lng': -99.4000},
  {'nombre': 'Parador El Tomaseño', 'descripcion': 'Área recreativa con albercas.', 'lat': 24.2600, 'lng': -99.4300},
  {'nombre': 'Parroquia de San José', 'descripcion': 'Templo del siglo XVIII.', 'lat': 24.2400, 'lng': -99.4200},
];