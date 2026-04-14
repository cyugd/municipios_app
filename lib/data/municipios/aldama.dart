import '../../models/municipio.dart';
import '../../models/monumento.dart';

final aldama = Municipio(
  id: 'aldama',
  nombre: 'Aldama',
  descripcionCorta: 'Conocido por sus hermosas playas, biodiversidad y reserva de la biosfera.',
  descripcionLarga:  '''
## Introducción
Aldama es un municipio ubicado en el estado de Tamaulipas, al noreste de México. Se caracteriza por su tranquilidad y por la calidez de su gente, que conserva tradiciones y costumbres de generaciones pasadas. La región presenta paisajes variados como llanuras, zonas semiáridas y vegetación típica del noreste, lo que la hace atractiva para quienes disfrutan de la naturaleza.

## Historia de Aldama
El municipio tiene antecedentes prehispánicos, ya que la región fue habitada por grupos indígenas como los Janambres y Pizones. Fue fundado el 11 de diciembre de 1749 por José de Escandón con el nombre de Villa de Santa Bárbara de Aldama. En 1828 cambió su nombre a Aldama en honor al héroe de la Independencia Juan Aldama. Durante el siglo XIX participó en procesos importantes del estado y, en la Revolución Mexicana, hubo movimientos locales. En 1920 se consolidó como municipio libre.

## Ubicación y Población
Aldama se encuentra en la parte central de Tamaulipas, en la región conocida como la Cuenca Central, a unos 180 metros sobre el nivel del mar. Tiene una población total de 29,385 habitantes (2020), de los cuales 13,450 viven en la cabecera municipal. Su ubicación es estratégica, ya que conecta con otros municipios y facilita el acceso a distintas regiones.

## Economía
La economía de Aldama se basa principalmente en actividades primarias como la agricultura y la ganadería, además del comercio local que ha ido creciendo con el tiempo.

**Agricultura**
Es uno de los pilares económicos del municipio. Se cultivan productos como maíz, frijol, sorgo y hortalizas (tomate, chile y cebolla). Esta actividad emplea aproximadamente al 40% de la población económicamente activa.

**Ganadería**
Incluye la producción de ganado bovino (carne y leche), caprino, avicultura y apicultura. Existen más de 150 unidades de producción pecuaria, lo que la convierte en una actividad importante para la economía local.

**Comercio**
El comercio incluye tiendas, mercados, talleres, restaurantes y servicios. También hay intercambio comercial con municipios cercanos y venta de artesanías. La mayor actividad se concentra en el centro del municipio.

## Gastronomía
Destacan platillos como el cabrito al pastor, tamales de elote, gorditas de horno y dulces regionales. La gastronomía refleja la mezcla de tradiciones indígenas y españolas.

## Turismo
El turismo es una actividad en desarrollo que incluye turismo cultural, rural y gastronómico. Aldama también destaca por su entorno natural, ya que es un municipio cercano a la costa.

**Atractivos Naturales**
Entre sus principales atractivos están la Laguna Madre, uno de los sistemas lagunares más grandes de México, y la Barra del Tordo, conocida por sus playas vírgenes y conservación de la tortuga lora. También hay esteros, manglares y zonas arqueológicas como El Sabinito.

**Atractivos Turísticos**
Cuenta con parque natural, iglesias, ríos, plazas y espacios recreativos. Estos lugares permiten conocer tanto la naturaleza como la cultura del municipio.

**Iglesias**
Destacan la Iglesia de Santa Bárbara, la Capilla de San José y el Templo del Sagrado Corazón, además de ermitas en comunidades rurales.

**Naturaleza**
Incluye el río Aldama, manantiales, áreas de pesca y zonas para observar aves, ideales para actividades al aire libre.

**Espacios Públicos**
La plaza principal, el Jardín Hidalgo, parques infantiles y andadores son puntos de convivencia social y recreación para los habitantes.

**Festividades**
Se celebran la feria municipal en diciembre, el Día de Santa Bárbara el 4 de diciembre, el Festival del Maíz y eventos de Semana Santa, que mantienen vivas las tradiciones.

## Educación
El sistema educativo ofrece niveles desde básico hasta medio superior, además de algunas extensiones universitarias.

**Infraestructura Educativa**
Cuenta con 15 primarias, 5 secundarias, 3 preparatorias y centros de educación especial, cubriendo las necesidades básicas del municipio.

**Estadísticas Educativas**
La alfabetización es del 94%, con una escolaridad promedio de 8.5 años. Hay 4,200 estudiantes, una deserción del 2.8% y una eficiencia del 91% en primaria.

**Servicios Educativos**
Incluyen transporte escolar, bibliotecas, acceso a computadoras e internet, programas de alimentación y actividades deportivas y culturales.

**Retos Educativos**
Los principales desafíos son mejorar la infraestructura, capacitar a docentes, ampliar el acceso a tecnología, fortalecer la educación a distancia y ofrecer más opciones técnicas.

## Ubicación y Acceso
Se localiza en la región central de Tamaulipas, con coordenadas 24.0665° N y 98.3762° W, a 180 msnm. Tiene acceso por la Carretera Federal 101 y carreteras estatales hacia González y Altamira. Limita con González, Altamira, Abasolo y Casas.
''',
  imagenAsset: 'assets/images/aldama.jpeg',
  imagenes: [
    'assets/fotos/aldama.png',
  ],
  poblacion: '30,250 hab.',
  superficie: '1,200 km²',
  gentilicio: 'Aldamense',

  monumentos3D: [
    Monumento(
      nombre: 'Monumento a la Patria',
      descripcion: 'Un monumento icónico de la ciudad de Aldama.',
      rutaModelo: 'assets/models/Aldama.glb',
      escala: 1.0,
    ),
  ],
);

// --- Lista de lugares turísticos con coordenadas para el mapa de Aldama ---
final List<Map<String, dynamic>> lugaresAldama = [
  {
    'nombre': 'Playa La Pesca',
    'descripcion': 'Extensa playa con palapas, restaurantes y zona de anidación de tortugas.',
    'lat': 23.2236,
    'lng': -97.7842,
  },
  {
    'nombre': 'Barra del Tordo',
    'descripcion': 'Playa virgen con manglares, ideal para ecoturismo y observación de aves.',
    'lat': 23.1900,
    'lng': -97.7667,
  },
  {
    'nombre': 'Santuario de la Tortuga Lora',
    'descripcion': 'Centro de conservación donde se protegen nidos y se liberan crías.',
    'lat': 23.2450,
    'lng': -97.7710,
  },
  {
    'nombre': 'Laguna de San Andrés',
    'descripcion': 'Cuerpo de agua costero con manglares, ideal para kayak y observación de aves.',
    'lat': 23.1833,
    'lng': -97.7500,
  },
  {
    'nombre': 'Reserva de la Biosfera El Cielo',
    'descripcion': 'Área natural protegida con bosque de niebla, cascadas y gran biodiversidad.',
    'lat': 23.0833,
    'lng': -99.2000,
  },
];
