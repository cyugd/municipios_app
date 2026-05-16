import '../../models/municipio.dart';
import '../../models/monumento.dart';

final padilla = Municipio(
  id: 'padilla',
  nombre: 'Padilla',
  descripcionCorta: 'Municipio con historia y tradición en el centro de Tamaulipas.',
  descripcionLarga: '''
## Introducción
Padilla es un municipio ubicado en la región central de Tamaulipas, conocido por su tranquilidad, sus tradiciones rurales y su fuerte identidad comunitaria. Su cabecera municipal es la Villa de Padilla, fundada en el siglo XVIII como parte del proceso de colonización del Nuevo Santander. Este municipio ha sabido conservar a lo largo del tiempo sus costumbres, su arquitectura tradicional y su ambiente de pueblo, donde la vida transcurre entre el trabajo del campo, las festividades religiosas y la convivencia familiar.

## Geografía
Se localiza en la zona centro del estado, a una altitud promedio de 150 metros sobre el nivel del mar. Su relieve combina llanuras y pequeñas elevaciones, con suelos fértiles aptos para la agricultura de temporal. El clima es semicálido y subhúmedo, con lluvias en verano y temperaturas que oscilan entre 10°C y 38°C. La vegetación predominante es el matorral espinoso y pastizales, con especies como mezquite, huizache y nopal.

## Población
Según el censo de 2020, la población es de aproximadamente 5,000 habitantes, distribuida en la cabecera municipal y varias comunidades rurales. La densidad es baja, y la mayoría de los habitantes se dedican a actividades agrícolas, ganaderas o al comercio local. La migración hacia ciudades más grandes como Ciudad Victoria o Reynosa es común.

## Historia
Padilla tiene su origen en la época colonial, cuando surgió como asentamiento agrícola y ganadero. Fue fundado durante las expediciones de José de Escandón en el siglo XVIII. Durante la Independencia de México, Padilla fue zona de paso de tropas insurgentes y realistas. En la Revolución Mexicana hubo episodios de conflictos y reparto de tierras que moldearon la estructura ejidal actual. En el siglo XX se consolidó como municipio, mejorando sus caminos y servicios.

## Economía
- **Agricultura:** maíz, sorgo, frijol, hortalizas.
- **Ganadería:** bovina, caprina, ovina (queso, carne seca).
- **Comercio:** tiendas de abarrotes, talleres.
- **Artesanías:** talabartería, tejidos de palma.

## Turismo
- **Plaza Principal:** centro de la vida social, con kiosco y jardines.
- **Parroquia local:** templo de estilo colonial sencillo.
- **Paisajes rurales:** campos de cultivo, ideales para caminatas.
- **Áreas recreativas:** presas cercanas para pesca.

## Gastronomía
Carne asada, cabrito al pastor, machacado con huevo, tamales norteños, asado de puerco, enchiladas, gorditas de maíz quebrado. Dulces: empanadas de calabaza, jamoncillos. Bebidas: café de olla, atole.

## Cultura y Tradiciones
Fiestas patronales en honor a la Virgen del Refugio (julio). Día de Muertos con altares. Semana Santa con viacrucis. Música norteña y banda. Artesanías: talabartería, bordados, tejidos de palma.

## Educación
Preescolar, primaria, telesecundaria, telebachillerato. Para estudios superiores, los jóvenes se trasladan a Ciudad Victoria.

## Infraestructura
Centro de salud rural. Caminos rurales pavimentados. Servicios básicos en la cabecera.

## Personajes Ilustres
- Don José María González (1880-1950): promotor de la agricultura local.
- Profesora Carmen García (1930-2010): fundadora de la escuela primaria.

## Datos Curiosos
- Padilla conserva calles empedradas en el centro histórico.
- La plaza principal tiene un kiosco de hierro forjado del siglo XIX.
- Se producen quesos artesanales de cabra.
- Las gorditas de maíz quebrado son famosas en la región.
- En las afueras hay antiguos hornos de cal.
''',
  imagenAsset: 'assets/images/padilla.jpg',
  imagenes: [
    'assets/fotos/Padilla.png',
    'assets/fotos/padilla1.jpg',
    'assets/fotos/padilla2.webp'
  ],
  poblacion: '5,000 hab.',
  superficie: '600 km²',
  gentilicio: 'Padillense',
  monumentos3D: [
    Monumento(
      nombre: 'Antigua catedral abandonada',
      descripcion: 'Ruinas históricas.',
      rutaModelo: 'assets/models/Padilla.glb',
      escala: 1.0,
    ),
  ],
  imagenesGastronomia: [],
  imagenesTurismo: [],
);

final List<Map<String, dynamic>> lugaresPadilla = [
  {
    'nombre': 'Plaza Principal',
    'descripcion': 'Centro de convivencia social.',
    'lat': 24.0333,
    'lng': -98.9000,
  },
  {
    'nombre': 'Parroquia local',
    'descripcion': 'Templo del siglo XIX.',
    'lat': 24.0320,
    'lng': -98.9010,
  },
  {
    'nombre': 'Áreas rurales',
    'descripcion': 'Paisajes agrícolas ideales para descanso.',
    'lat': 24.0350,
    'lng': -98.8950,
  },
];