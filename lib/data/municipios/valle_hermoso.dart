import '../../models/municipio.dart';
import '../../models/monumento.dart';

final valle_hermoso = Municipio(
  id: 'valle_hermoso',
  nombre: 'Valle Hermoso',
  descripcionCorta: 'Colonia agrícola transformada en ciudad fronteriza con arraigo rural.',
  descripcionLarga: '''
## Introducción
Valle Hermoso surge en la década de 1930 como una colonia agraria impulsada por el gobierno de Lázaro Cárdenas, para reubicar a mexicanos repatriados de Estados Unidos tras la Gran Depresión. El ingeniero Eduardo Chávez Ramírez diseñó su sistema de riego y su trazo urbano, lo que permitió transformar tierras áridas en campos productivos. Su crecimiento se consolidó con el auge del algodón en los años 40 y 50, convirtiéndose en un polo agrícola de gran relevancia. El 4 de marzo de 1953 se convirtió en municipio libre. A lo largo del siglo XX, Valle Hermoso vivió etapas de bonanza agrícola, crisis económicas y diversificación hacia la industria maquiladora en los años 90, lo que fortaleció su papel dentro de la frontera tamaulipeca.

## Geografía
Valle Hermoso se ubica en el extremo noreste de México, colindando al norte con Río Bravo y al este con Matamoros. Pertenece a la Llanura Costera del Golfo Norte, caracterizada por una planicie sedimentaria de orografía casi nula y una altitud muy baja, que ronda los 27 metros sobre el nivel del mar. Su territorio es fértil pero vulnerable a sequías y a la sobreexplotación de recursos hídricos. El clima es seco cálido, con temperaturas que superan los 40°C en verano. La vegetación es de matorral espinoso y pastizales.

## Población
Cuenta con alrededor de 60,000 habitantes (2020). Presenta envejecimiento poblacional y migración de jóvenes hacia Reynosa y Monterrey. La población mantiene una identidad fuerte ligada al campo y a la vida comunitaria. El principal reto social es que gran parte de la población carece de acceso a la seguridad social formal, lo que sobrecarga el sistema público de salud.

## Historia
A partir de 1929, repatriación de mexicanos desde EE. UU. En 1939 inicio de la colonización agrícola. Auge del algodón en 1950. Fundación como municipio en 1953. Inicio de maquiladoras en 1990. El ingeniero Eduardo Chávez Ramírez fue clave en el diseño del sistema de riego y el trazo urbano. La historia de Valle Hermoso refleja la resiliencia de los repatriados que transformaron el desierto en un campo productivo.

## Economía
- **Agricultura:** sorgo (principal cultivo), algodón, maíz.
- **Industria maquiladora.**
- **Comercio agrícola.**
- **Turismo cinegético** (caza de paloma ala blanca), que atrae cazadores de Estados Unidos.

## Turismo
- **Plaza Principal:** centro cívico, con kiosco y jardines.
- **Campos agrícolas de sorgo:** paisaje representativo.
- **Ranchos cinegéticos:** caza de paloma ala blanca, que genera derrama económica para hoteles y restaurantes.

## Gastronomía
Carne asada, machaca con huevo (desayuno fronterizo por excelencia), cortadillo de res (carne guisada en salsa de chile ancho), tamales de puerco, gorditas, frijoles charros. Los alimentos son robustos y sabrosos, diseñados para alimentar al trabajador del campo.

## Cultura y Tradiciones
La Feria Regional de Valle Hermoso (marzo) conmemora tanto el aniversario municipal (4 de marzo) como el hito histórico de la llegada de los repatriados (18 de marzo). Incluye cabalgatas, exposiciones ganaderas, espectáculos de música regional (norteña y banda), juegos mecánicos y actividades infantiles. Es un espacio de convivencia comunitaria que refuerza la identidad local. La identidad social está marcada por el arquetipo del norteño: honestidad, franqueza y una estrecha relación con el campo.

## Educación
Escuelas básicas, bachilleratos (CBTIS). Para educación superior, los jóvenes viajan a Reynosa o Matamoros.

## Infraestructura
Centro de salud, clínicas del IMSS. Carreteras pavimentadas. Servicios de agua potable, electricidad y drenaje en la cabecera.

## Personajes Ilustres
- Eduardo Chávez Ramírez: diseñador del sistema de riego.
- Pobladores repatriados que fundaron la colonia.

## Datos Curiosos
- Valle Hermoso fue una colonia agrícola cardenista.
- El algodón fue el motor económico en los años 50.
- La caza de paloma ala blanca atrae turistas estadounidenses.
- El diseño urbano es en forma de cuadrícula.
- La feria de marzo es la celebración más importante.
''',
  imagenAsset: 'assets/images/valle_hermoso.jpg',
  imagenes: [
    'assets/fotos/Valle_hermoso.png',
    'assets/fotos/valle hermoso.jpg',
    'assets/fotos/Plaza_de_Valle_Hermoso.jpg',
  ],
  poblacion: '60,000 hab.',
  superficie: '900 km²',
  gentilicio: 'Vallehermosense',
  monumentos3D: [
    Monumento(
      nombre: 'Capilla San Antonio',
      descripcion: 'Capilla histórica.',
      rutaModelo: 'assets/models/Vallehermoso.glb',
      escala: 1.0,
    ),
  ],
  imagenesGastronomia: [],
  imagenesTurismo: [],
);

final List<Map<String, dynamic>> lugaresValleHermoso = [
  {
    'nombre': 'Plaza Principal',
    'descripcion': 'Centro de convivencia social y escenario de la Feria Regional.',
    'lat': 25.6667,
    'lng': -97.8333,
  },
  {
    'nombre': 'Campos agrícolas de sorgo',
    'descripcion': 'Paisaje representativo de la economía local.',
    'lat': 25.6700,
    'lng': -97.8300,
  },
  {
    'nombre': 'Ranchos cinegéticos',
    'descripcion': 'Zonas para la caza de paloma ala blanca.',
    'lat': 25.6800,
    'lng': -97.8200,
  },
];