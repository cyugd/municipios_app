import '../../models/municipio.dart';
import '../../models/monumento.dart';

final abasolo = Municipio(
  id: 'abasolo',
  nombre: 'Abasolo',
  descripcionCorta: 'Municipio con historia minera, tradición y desarrollo.',
  descripcionLarga: '''
## Introducción
Abasolo es un municipio ubicado en el estado de Tamaulipas, al noreste de México. Se caracteriza por su tranquilidad, la calidez de su gente y la conservación de tradiciones y costumbres heredadas. La región cuenta con paisajes variados como llanuras y zonas semiáridas con vegetación típica del noreste.

## Ubicación
Se encuentra en la parte central de Tamaulipas, dentro de la Cuenca Central. La cabecera municipal está a aproximadamente 180 metros sobre el nivel del mar, lo que le da una ubicación estratégica dentro del estado.

## Población
Cuenta con una población total de 14,285 habitantes (2020). De estos, alrededor de 6,125 viven en la cabecera municipal.

## Historia
La región tiene antecedentes prehispánicos, habitada por grupos como los Janambres y Pizones. Fue fundada el 11 de diciembre de 1749 por José de Escandón con el nombre de Villa de Santa Bárbara. En 1828 cambió su nombre a Abasolo en honor a Mariano Abasolo. Durante el siglo XIX participó en procesos históricos importantes y en la Revolución Mexicana hubo presencia de movimientos locales. En 1920 se consolidó como municipio libre.

## Economía
La economía del municipio se basa principalmente en actividades primarias como la agricultura y la ganadería, además del comercio local.

**Agricultura**
Es uno de los pilares económicos más importantes. Se cultivan productos como maíz, frijol, sorgo y hortalizas como tomate, chile y cebolla. Esta actividad emplea cerca del 40% de la población económicamente activa.

**Ganadería**
La ganadería es fundamental en la región, destacando el ganado bovino para carne y leche, caprino adaptado al clima, así como la avicultura y la apicultura. Existen más de 150 unidades de producción pecuaria.

**Comercio**
Incluye tiendas de abarrotes, mercados, talleres, restaurantes y servicios. También hay intercambio comercial con municipios cercanos y venta de productos artesanales.

## Gastronomía
La comida típica incluye cabrito al pastor, tamales de elote, gorditas de horno y dulces regionales. Refleja la mezcla de tradiciones indígenas y españolas.

## Turismo
El turismo está en desarrollo y se enfoca en lo cultural, rural y gastronómico. Existen proyectos para mejorar la infraestructura y atraer visitantes.

**Atractivos turísticos**
Incluyen el parque natural, iglesias históricas, ríos, plazas y espacios recreativos que permiten conocer la cultura y naturaleza del lugar.

**Iglesias**
Destacan la Iglesia de Santa Bárbara del siglo XVIII, la Capilla de San José y el Templo del Sagrado Corazón, además de ermitas en comunidades rurales.

**Naturaleza**
Cuenta con el río Abasolo, manantiales, áreas de pesca y zonas para la observación de aves, ideales para actividades al aire libre.

**Espacios públicos**
La plaza principal, el Jardín Hidalgo, parques infantiles y andadores son lugares de convivencia social y recreación.

**Festividades**
Se celebran la feria municipal en diciembre, el Día de Santa Bárbara el 4 de diciembre, el Festival del Maíz y eventos de Semana Santa, manteniendo vivas las tradiciones.

## Educación
El municipio ofrece educación desde nivel básico hasta medio superior, además de algunas extensiones universitarias.

**Infraestructura educativa**
Cuenta con 12 escuelas primarias, 3 secundarias, 2 preparatorias y centros de educación especial.

**Estadísticas educativas**
La alfabetización alcanza el 92%, con una escolaridad promedio de 8.2 años. Hay una matrícula de 2,850 estudiantes, deserción del 3.2% y eficiencia del 89% en primaria.

**Servicios educativos**
Incluyen transporte escolar para zonas alejadas, bibliotecas, acceso a computadoras e internet, programas de alimentación y actividades extracurriculares.

**Retos educativos**
Los principales desafíos son mejorar la infraestructura, capacitar a docentes, ampliar el acceso a tecnología, fortalecer la educación a distancia y ofrecer más opciones técnicas.
''',
  imagenAsset: 'assets/images/abasolos-logo.jpeg',
  imagenes: [
    'assets/images/abasolo1.jpg',
    'assets/images/abasolo2.jpg',
    'assets/images/abasolo3.jpg',
    'assets/images/abasolo4.jpg',
  ],
  poblacion: '14,285 hab.',
  superficie: '180 km²',
  gentilicio: 'Abasolense',
  monumentos3D: [
    Monumento(
      nombre: 'Abasolo',
      descripcion: 'Monumento de Abasolo',
      rutaModelo: 'assets/models/Abasolo.glb',
      escala: 0.8,
    ),
  ],
);

// Lugares turísticos con coordenadas para el mapa interactivo
final List<Map<String, dynamic>> lugaresAbasolo = [
  {
    'nombre': 'Presa "El Azúcar"',
    'descripcion': 'Ideal para pesca deportiva, paseos en lancha y campismo.',
    'lat': 23.9325,
    'lng': -98.4286,
  },
  {
    'nombre': 'Parroquia de San Juan Bautista',
    'descripcion': 'Construida en 1795, estilo barroco modesto.',
    'lat': 23.9478,
    'lng': -98.4102,
  },
  {
    'nombre': 'Plaza Principal "José María Morelos"',
    'descripcion': 'Jardín central con kiosco y edificios históricos.',
    'lat': 23.9480,
    'lng': -98.4105,
  },
  {
    'nombre': 'Cerro del Bernal',
    'descripcion': 'Elevación emblemática para senderismo y vistas panorámicas.',
    'lat': 23.9072,
    'lng': -98.4553,
  },
  {
    'nombre': 'Misión de San Antonio (ruinas)',
    'descripcion': 'Vestigios de antigua misión franciscana.',
    'lat': 23.8925,
    'lng': -98.4725,
  },
];