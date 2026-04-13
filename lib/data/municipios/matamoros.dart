import '../../models/municipio.dart';
import '../../models/monumento.dart';

final matamoros = Municipio(
  id: 'matamoros',
  nombre: 'Matamoros',
  descripcionCorta: 'Heroica ciudad fronteriza con gran importancia histórica e industrial.',
  descripcionLarga: '''
## Introducción
Heroica Matamoros es un municipio ubicado en el extremo noreste de Tamaulipas, en la frontera con Estados Unidos. Se distingue por su importancia histórica, su desarrollo industrial y su dinámica vida fronteriza. Su identidad combina tradición, modernidad y una fuerte influencia binacional.

## Historia
La fundación ocurrió en 1774, cuando colonos liderados por Ignacio Anastacio de Ayala se establecieron en el paraje San Juan de los Esteros. En 1793 fue nombrada Congregación Nuestra Señora del Refugio de los Esteros.

En 1826 adoptó el nombre de Matamoros en honor a Mariano Matamoros. Durante el siglo XIX fue escenario de conflictos como la intervención estadounidense y en 1851 defendió la ciudad, obteniendo los títulos de Heroica, Invicta y Leal.

En 1913 se realizó el primer reparto agrario del país. Posteriormente, vivió el auge del algodón y, desde los años 90, el crecimiento industrial impulsado por las maquiladoras.

## Geografía
Se localiza en la frontera norte de México, limitando con el Río Bravo y el Golfo de México. Su relieve es mayormente plano y su altitud es baja.

El clima es subtropical, con veranos calurosos e inviernos frescos. Forma parte de la cuenca del Río Bravo, fundamental para la agricultura de riego.

## Economía
La economía se basa en la industria maquiladora, el comercio exterior y la agricultura.

Cuenta con más de 100 maquiladoras que generan miles de empleos, especialmente en el sector tecnológico y automotriz. El comercio también es muy activo debido a su ubicación fronteriza.

En el sector rural, destacan cultivos como sorgo, maíz y frijol, además de la ganadería bovina y la pesca en zonas cercanas como la Laguna Madre.

## Cultura
La cultura de Matamoros es una mezcla de tradiciones mexicanas y una fuerte influencia estadounidense.

Destacan espacios como el Museo Casamata y el Museo de Arte Contemporáneo de Tamaulipas. Una de sus celebraciones más importantes es el festival Fiestas Mexicanas.

## Valores
Los valores principales son el trabajo, la adaptación, el patriotismo y la unión familiar.

## Costumbres
Las costumbres incluyen celebraciones cívicas, ferias y eventos binacionales. Destacan las Fiestas Mexicanas, la Expo Feria Matamoros y las celebraciones religiosas como el Día de la Virgen de Guadalupe.

## Gastronomía
La gastronomía combina sabores del norte de México con influencia del Golfo. Destacan la carne asada, las gorditas rellenas, los mariscos y platillos como la mojarra frita y los cócteles de camarón.

## Educación
Matamoros cuenta con una amplia oferta educativa en todos los niveles. Existen escuelas básicas, preparatorias y universidades.

## Sociedad
La sociedad se caracteriza por su dinamismo, diversidad cultural y sentido de comunidad. La migración y la industria han formado una población activa, trabajadora y con fuerte identidad fronteriza.

## Turismo
El turismo combina historia, cultura y playa. Entre los principales atractivos destacan Playa Bagdad, el Museo Casamata, la Catedral de Nuestra Señora del Refugio y la Plaza Hidalgo.

## Conclusión
Heroica Matamoros es un municipio con gran importancia histórica, económica y cultural. Su papel como ciudad fronteriza la convierte en un punto clave para el comercio y la industria en México.
''',

  imagenAsset: 'assets/images/matamoros.jpg',
  imagenes: [
    'assets/images/matamoros_1.jpg',
    'assets/images/matamoros_2.jpg',
    'assets/images/matamoros_3.jpg',
  ],
  poblacion: '500,000 hab.',
  superficie: '4,000 km²',
  gentilicio: 'Matamorense',

  monumentos3D: [
    Monumento(
      nombre: 'Monumento Azteca y Antorcha liberal',
      descripcion: 'Un monumento icónico de la ciudad de Matamoros.',
      rutaModelo: 'assets/models/Matamoros.glb',
      escala: 1.0,
    ),
  ],
);