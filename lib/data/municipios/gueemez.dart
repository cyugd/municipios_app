import '../../models/municipio.dart';
import '../../models/monumento.dart';

final gueemez = Municipio(
  id: 'gueemez',
  nombre: 'Güémez',
  descripcionCorta: 'Ruralidad, historia y naturaleza cerca de la capital.',
  descripcionLarga: '''
## Introducción
Güémez, Tamaulipas, es un municipio con raíces profundamente ligadas a la identidad tamaulipeca. Su historia, su gente y sus tradiciones han moldeado con el tiempo una comunidad orgullosa de su pasado y comprometida con su desarrollo.

Destaca por su ubicación estratégica, su cercanía a Ciudad Victoria y la presencia de parajes naturales, ríos, presas y espacios agrícolas que definen su carácter rural, productivo y comunitario.

## Historia
La historia de Güémez se remonta al proceso de colonización del noreste de México en el siglo XVIII, encabezado por José de Escandón. El municipio surgió como un punto estratégico para la organización territorial y el desarrollo agrícola, rodeado de haciendas y rutas comerciales.

## Geografía
Güémez se localiza en la zona centro del estado de Tamaulipas. Su territorio combina llanuras con áreas cercanas a la Sierra Madre Oriental, lo que le proporciona diversidad natural. Cuenta con ríos, presas y zonas agrícolas que favorecen actividades productivas como la agricultura y la ganadería.

## Economía
La economía del municipio se basa principalmente en actividades del sector primario. La agricultura y la ganadería son fundamentales, siendo fuentes de empleo para gran parte de la población. El comercio local también contribuye al desarrollo económico de la región.

## Cultura
La cultura de Güémez se refleja en sus tradiciones, su música, su arquitectura y sus celebraciones religiosas. Existe un fuerte orgullo por sus raíces, lo que mantiene vivas las costumbres heredadas de generaciones anteriores.

## Valores
Los valores principales de la comunidad son el respeto, la solidaridad, la responsabilidad y la unión familiar.

## Costumbres
Las costumbres incluyen festividades religiosas, reuniones familiares y eventos comunitarios. Las fiestas patronales y actividades tradicionales forman parte importante de la vida cotidiana del municipio.

## Gastronomía
La gastronomía de Güémez destaca por platillos típicos del norte de México como la carne asada, el cabrito, los tamales serranos y la discada.

## Educación
El municipio cuenta con instituciones de nivel básico y medio superior. Además, su cercanía con Ciudad Victoria permite a los estudiantes continuar su formación en universidades y centros educativos más avanzados.

## Sociedad
La sociedad de Güémez se caracteriza por ser unida, trabajadora y participativa. El sentido de comunidad y la colaboración entre sus habitantes son fundamentales para su desarrollo social.

## Turismo
El turismo en Güémez se enfoca en sus atractivos naturales. Lugares como El Salto del Tigre, la Presa Las Pilas y otras áreas naturales ofrecen espacios para el ecoturismo, la recreación y el descanso.

## Conclusión
Güémez, Tamaulipas, representa una combinación de historia, tradición y desarrollo. Su identidad se mantiene firme gracias a sus costumbres, valores y la participación de su gente.
''',
  imagenAsset: 'assets/images/gueemez.jpg',
  imagenes: [
    'assets/fotos/guemez.png',
  ],
  poblacion: '7,000 hab.',
  superficie: '450 km²',
  gentilicio: 'Güemecense',

  monumentos3D: [
    Monumento(
      nombre: 'Monumento a la Patria',
      descripcion: 'Un monumento icónico de la ciudad de Guemez.',
      rutaModelo: 'assets/models/Guemez.glb',
      escala: 1.0,
    ),
  ],
);
