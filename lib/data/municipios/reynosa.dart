import '../../models/municipio.dart';
import '../../models/monumento.dart';

final reynosa = Municipio(
  id: 'reynosa',
  nombre: 'Reynosa',
  descripcionCorta: 'Ciudad fronteriza industrial y cultural, corazón de la maquila.',
  descripcionLarga: '''
## Introducción
Reynosa es una ciudad fronteriza de Tamaulipas, ubicada junto al Río Bravo y colindante con Texas. Es un importante centro industrial, económico y de servicios, con atractivos culturales, turísticos y gastronómicos. Su ubicación estratégica la convierte en una de las ciudades más dinámicas de la frontera norte de México, con una población diversa y una economía que se conecta directamente con Estados Unidos. Reynosa es considerada la ciudad más poblada del estado y un motor de desarrollo regional.

## Geografía
Está en el norte de Tamaulipas, junto a Estados Unidos, en una zona plana cerca del Río Bravo. Clima semicálido y seco, con veranos muy calurosos e inviernos suaves con frentes fríos. Altitud promedio 40 msnm.

## Población
Es el municipio más poblado del estado, con más de 700,000 habitantes (2020), con crecimiento constante por migración interna y externa.

## Historia
Época prehispánica habitada por grupos nómadas. Fundada en 1749 por José de Escandón. En el siglo XIX se desarrolló el comercio y la ganadería. El ferrocarril, el petróleo y las maquiladoras impulsaron el crecimiento acelerado en el siglo XX.

## Economía
- **Industria maquiladora:** LG Electronics, Aptiv, Nidec, Corning, entre otras.
- **Comercio y servicios:** centros comerciales, hoteles, restaurantes.
- **Logística fronteriza:** puentes internacionales.
- **Actividades agropecuarias** en menor escala.

## Turismo
- **Parque Cultural Reynosa:** centro cultural con exposiciones, teatro y áreas recreativas.
- **Catedral de Guadalupe:** templo religioso emblemático.
- **Puente Internacional Reynosa-Pharr:** cruce fronterizo clave.
- **Plaza Principal Miguel Hidalgo:** jardín y kiosco.
- **Museo Histórico de Reynosa.**

## Gastronomía
Carne asada (principal), tacos de trompo, cabrito, machacado, tamales, gorditas. Influencia de comida estadounidense.

## Cultura y Tradiciones
Feria de la Cosecha (agosto). Día de Muertos. Virgen de Guadalupe (12 de diciembre). Fiestas patrias. Música norteña y banda. Artesanías: talabartería, bordados.

## Educación
UAT Reynosa, Instituto Tecnológico de Reynosa, universidades privadas. Escuelas de nivel básico y medio superior.

## Infraestructura
Puentes internacionales (Reynosa-Pharr, Reynosa-Hidalgo), aeropuerto internacional, central de autobuses. Hospitales del IMSS, ISSSTE, clínicas particulares.

## Personajes Ilustres
- Fundadores de la ciudad.
- Empresarios de la industria maquiladora.

## Datos Curiosos
- Reynosa es el municipio más poblado de Tamaulipas.
- El Parque Cultural Reynosa fue una antigua estación de ferrocarril.
- La ciudad tiene un puente ferroviario internacional histórico.
- Es común el cruce diario a Texas para trabajar o estudiar.
- La Feria de la Cosecha es una de las más grandes del estado.
''',
  imagenAsset: 'assets/images/reynosa.jpg',
  imagenes: [
    'assets/fotos/Reynosa.png',
    'assets/fotos/reynosa1.jpg',
    'assets/fotos/reynosa2.webp'
  ],
  poblacion: '700,000 hab.',
  superficie: '3,000 km²',
  gentilicio: 'Reynosense',
  monumentos3D: [
    Monumento(
      nombre: 'Monumento a la Patria',
      descripcion: 'Monumento icónico.',
      rutaModelo: 'assets/models/Reynosa.glb',
      escala: 1.0,
    ),
  ],
  imagenesGastronomia: [],
  imagenesTurismo: [],
);

final List<Map<String, dynamic>> lugaresReynosa = [
  {
    'nombre': 'Parque Cultural Reynosa',
    'descripcion': 'Centro cultural con exposiciones.',
    'lat': 26.0925,
    'lng': -98.2783,
  },
  {
    'nombre': 'Catedral de Guadalupe',
    'descripcion': 'Templo religioso emblemático.',
    'lat': 26.0900,
    'lng': -98.2770,
  },
  {
    'nombre': 'Puente Internacional Reynosa-Pharr',
    'descripcion': 'Cruce fronterizo clave.',
    'lat': 26.0900,
    'lng': -98.2500,
  },
];