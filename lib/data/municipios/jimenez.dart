import '../../models/municipio.dart';
import '../../models/monumento.dart';

final jimenez = Municipio(
  id: 'jimenez',
  nombre: 'Jiménez',
  descripcionCorta: 'Tranquilidad rural y tradición en el sur del estado.',
  descripcionLarga: '''
## Introducción
Jiménez es un municipio del estado de Tamaulipas, ubicado en la región sur. Se caracteriza por su tranquilidad, su ambiente rural y la fortaleza de su comunidad. Su gente conserva tradiciones, valores y costumbres que reflejan la identidad del norte del país.

## Ubicación
Se localiza en la zona sur del estado de Tamaulipas, en una región de llanuras y áreas semiáridas. Su altitud promedio es cercana a los 100 metros sobre el nivel del mar.

## Población
Cuenta con una población aproximada de 9,935 habitantes según el censo 2020, distribuidos entre la cabecera municipal y comunidades rurales.

## Historia
El municipio tiene origen en el periodo colonial, cuando surgió como asentamiento agrícola y ganadero. En el siglo XIX recibió el nombre de Mariano Jiménez, en honor al héroe de la Independencia. A lo largo del tiempo participó indirectamente en eventos como la Reforma y la Revolución Mexicana, consolidándose como una comunidad estable en el siglo XX.

## Economía
La economía se basa principalmente en actividades rurales como la agricultura, la ganadería y el comercio local, que sostienen la vida económica del municipio.

**Agricultura**: Es una de las actividades más importantes, destacando cultivos como maíz, sorgo, frijol y hortalizas, aprovechando las tierras fértiles del municipio.

**Ganadería**: Se centra en la cría de bovinos, ovinos y caprinos. También se producen derivados como leche, queso y carne para consumo local y regional.

**Comercio**: Incluye tiendas, mercados, talleres y servicios básicos. Los tianguis y pequeños negocios son fundamentales para la economía diaria.

## Gastronomía
Destacan platillos como carne asada, cortadillo, barbacoa, enchiladas, gorditas y tamales. También son comunes bebidas como café de olla y dulces tradicionales.

## Turismo
El turismo es principalmente local y se enfoca en la naturaleza, la tranquilidad y las tradiciones del municipio.

**Atractivos turísticos**: Entre los principales sitios se encuentran el Río Purificación, la plaza principal y diversas áreas naturales.

**Naturaleza**: El municipio cuenta con paisajes de llanura, vegetación como mezquite y huizache, y espacios ideales para convivencias y actividades al aire libre.

**Espacios públicos**: La plaza principal es el centro de convivencia social, donde se realizan eventos culturales y reuniones familiares.

## Festividades
Destacan celebraciones como la fiesta patronal en honor a la Virgen del Carmen, el Día de Muertos y las Fiestas Patrias, con desfiles y eventos comunitarios.

## Educación
El municipio ofrece educación básica en sus comunidades, mientras que para niveles superiores los estudiantes suelen trasladarse a ciudades cercanas.

**Infraestructura educativa**: Cuenta con jardines de niños, primarias y secundarias distribuidas en la cabecera municipal y ejidos.

**Servicios educativos**: Se implementan programas de apoyo como alfabetización, educación para adultos y actividades escolares que fomentan valores y el cuidado del entorno.

**Retos educativos**: Entre los principales desafíos están mejorar la infraestructura, ampliar el acceso a tecnología y ofrecer más oportunidades de educación media superior y superior.
''',
  imagenAsset: 'assets/images/jimenez.jpg',
  imagenes: [
    'assets/fotos/jimenez.png',
  ],
  poblacion: '6,000 hab.',
  superficie: '1,100 km²',
  gentilicio: 'Jimense',

  monumentos3D: [
    Monumento(
      nombre: 'Monumento a Santander Jiménez',
      descripcion: 'Un monumento icónico de la ciudad de Jiménez.',
      rutaModelo: 'assets/models/Jimenez.glb',
      escala: 1.0,
    ),
  ],
);
