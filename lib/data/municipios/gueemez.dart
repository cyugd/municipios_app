import '../../models/municipio.dart';
import '../../models/monumento.dart';

final gueemez = Municipio(
  id: 'gueemez',
  nombre: 'Güémez',
  descripcionCorta: 'Ruralidad, historia y naturaleza cerca de la capital.',
  descripcionLarga: '''
## Introducción
Güémez es un municipio del centro de Tamaulipas, ubicado al pie de la Sierra Madre Oriental, muy cerca de Ciudad Victoria. Su nombre proviene del general José de Güémez. Es una zona de transición entre el valle y la sierra, con paisajes que combinan llanuras agrícolas y montañas boscosas. La presa Las Pilas y el Salto del Tigre son algunos de sus atractivos naturales.

## Geografía
Se localiza en la zona centro del estado, combinando llanuras con áreas cercanas a la Sierra Madre Oriental. Cuenta con ríos, presas (Las Pilas) y zonas agrícolas.

## Población
Aproximadamente 15,000 habitantes (2020), con baja densidad, principalmente rural.

## Historia
El municipio surgió durante la colonización de José de Escandón en el siglo XVIII. En el siglo XIX fue escenario de enfrentamientos durante la Guerra de Reforma y la Intervención Francesa. En el siglo XX se consolidó como comunidad rural.

## Economía
- **Agricultura:** maíz, sorgo, frijol, cítricos, hortalizas.
- **Ganadería:** bovina, caprina, ovina.
- **Comercio local:** pequeños negocios.
- **Turismo:** ecoturismo en la sierra.

## Turismo
- **El Salto del Tigre:** cascada y poza natural, ideal para senderismo.
- **Presa Las Pilas:** pesca, paseos en lancha, camping.
- **Sierra Madre Oriental:** miradores, caminatas.
- **Parroquia de San José:** templo del siglo XVIII.
- **Río Santa Bárbara:** paseos y pesca.

## Gastronomía
Carne asada, cabrito, tamales serranos, discada, atole de masa.

## Cultura y Tradiciones
Fiestas patronales de San José (19 de marzo). Semana Santa. Día de Muertos. Artesanías: tejidos de palma, talabartería.

## Educación
Preescolar, primaria, secundaria, bachillerato (COBAT). Para estudios superiores, acuden a Ciudad Victoria.

## Infraestructura
Centro de salud y clínica del IMSS. Caminos pavimentados y de terracería.

## Personajes Ilustres
- General José de Güémez (1800-1860): militar tamaulipeco.
- Don Manuel López (1920-2000): promotor de la agricultura.
- Profesora Carmen García (1930-2010): fundadora de la escuela secundaria.

## Datos Curiosos
- El Salto del Tigre es una cascada estacional.
- La presa Las Pilas es ideal para pesca de lobina.
- En la sierra se pueden observar venados y armadillos.
- Los tamales serranos son típicos de la región.
- La parroquia de San José data de 1780.
''',
  imagenAsset: 'assets/images/gueemez.jpg',
  imagenes: [
    'assets/fotos/guemez.png',
    'assets/fotos/guemez1.jpg',
    'assets/fotos/guemez2.jpg',
  ],
  poblacion: '15,000 hab.',
  superficie: '450 km²',
  gentilicio: 'Güemecense',
  monumentos3D: [
    Monumento(
      nombre: 'Monumento a la Patria',
      descripcion: 'Escultura en la plaza principal.',
      rutaModelo: 'assets/models/Guemez.glb',
      escala: 1.0,
    ),
  ],
  imagenesGastronomia: [],
  imagenesTurismo: [],
);

final List<Map<String, dynamic>> lugaresGueemez = [
  {'nombre': 'El Salto del Tigre', 'descripcion': 'Cascada y poza natural.', 'lat': 23.9833, 'lng': -99.2667},
  {'nombre': 'Presa Las Pilas', 'descripcion': 'Pesca y recreación.', 'lat': 24.0000, 'lng': -99.2500},
  {'nombre': 'Parroquia de San José', 'descripcion': 'Templo histórico.', 'lat': 23.9667, 'lng': -99.2833},
];