import '../../models/municipio.dart';
import '../../models/monumento.dart';

final jaumave = Municipio(
  id: 'jaumave',
  nombre: 'Jaumave',
  descripcionCorta: 'Valle de tradición y producción citrícola en el suroeste de Tamaulipas.',
  descripcionLarga: '''
## Introducción
Jaumave es uno de los municipios más antiguos y emblemáticos del altiplano tamaulipeco. Su nombre proviene del vocablo indígena “Xaumave”, relacionado con grupos originarios que habitaron la región antes de la llegada de los españoles. Rodeado por montañas, valles agrícolas y parajes naturales, Jaumave fue un punto clave para pueblos indígenas, misioneros y colonizadores. Es conocido por su producción de cítricos, especialmente la naranja.

## Geografía
Se ubica en el suroeste de Tamaulipas, rodeado por la Sierra Madre Oriental. Altitud media 350-400 msnm. Temperatura media 23-25°C. Cuerpos de agua: río Purificación, manantial de San Vicente, arroyo Jaumave y presa San Lorencito. Vegetación: matorral, mezquite, palma y bosque en zonas altas.

## Población
Aproximadamente 15,000 habitantes (2020), baja densidad, mayoritariamente rural.

## Historia
Época prehispánica habitado por huastecos y jonaces. Fundación oficial: 19 de mayo de 1747 por José de Escandón. En la Revolución Mexicana hubo reparto de tierras.

## Economía
- **Agricultura:** cítricos (naranja, limón, toronja), maíz, sorgo, hortalizas.
- **Ganadería:** bovina, caprina, ovina.
- **Comercio:** venta de productos locales, miel, lácteos.
- **Industria pequeña:** panaderías, empacadoras de cítricos.
- **Turismo:** en crecimiento.

## Turismo
- **Río Purificación:** paseos y pesca.
- **Valle de Jaumave:** paisajes agrícolas de cítricos.
- **Ojo de Agua:** manantial natural.
- **Presa San Lorencito:** pesca y camping.
- **Manantial de San Vicente:** agua cristalina.
- **Parroquia de San Vicente:** templo del siglo XVIII.
- **Cerro del Calvario:** mirador.

## Gastronomía
Cabrito al pastor, enchiladas serranas, tamales de elote.

## Cultura y Tradiciones
Fiestas patronales de San Vicente (enero) con danzas tradicionales, ferias regionales. Semana Santa, Día de Muertos. Artesanías: tejidos de palma, bordados.

## Educación
Escuelas básicas, bachillerato (COBAT). Para estudios superiores, viajan a Ciudad Victoria.

## Infraestructura
Centro de salud y clínica del IMSS. Carreteras pavimentadas.

## Personajes Ilustres
- San Vicente Ferrer: santo patrono.
- Don José López (1920-2000): promotor de la citricultura.
- Profesora María Hernández (1930-2015): fundadora de la escuela.

## Datos Curiosos
- Jaumave es uno de los principales productores de cítricos de Tamaulipas.
- El clima templado favorece la naranja de alta calidad.
- Las enchiladas serranas son un platillo emblemático.
- El manantial de San Vicente es famoso por sus aguas.
- La presa San Lorencito es ideal para la pesca.
''',
  imagenAsset: 'assets/images/jaumave.jpg',
  imagenes: [
    'assets/fotos/jaumave.png',
    'assets/fotos/jaumave.jpeg',
    'assets/fotos/jaumave2.jpg',
  ],
  poblacion: '15,000 hab.',
  superficie: '1,500 km²',
  gentilicio: 'Jaumavense',
  monumentos3D: [
    Monumento(
      nombre: 'La madre jaumave',
      descripcion: 'Monumento a la maternidad.',
      rutaModelo: 'assets/models/Jaumave.glb',
      escala: 1.0,
    ),
  ],
  imagenesGastronomia: [],
  imagenesTurismo: [],
);

final List<Map<String, dynamic>> lugaresJaumave = [
  {'nombre': 'Río Purificación', 'descripcion': 'Paseos y pesca.', 'lat': 23.4000, 'lng': -99.3833},
  {'nombre': 'Valle de Jaumave', 'descripcion': 'Paisajes agrícolas de cítricos.', 'lat': 23.4167, 'lng': -99.4000},
  {'nombre': 'Ojo de Agua', 'descripcion': 'Manantial natural.', 'lat': 23.4300, 'lng': -99.3900},
  {'nombre': 'Manantial de San Vicente', 'descripcion': 'Agua cristalina.', 'lat': 23.4200, 'lng': -99.3800},
];