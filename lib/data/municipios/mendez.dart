import '../../models/municipio.dart';
import '../../models/monumento.dart';

final mendez = Municipio(
  id: 'mendez',
  nombre: 'Méndez',
  descripcionCorta: 'Comunidad rural con tradición agrícola y ganadera.',
  descripcionLarga: '''
## Introducción
Méndez es un municipio ubicado en el estado de Tamaulipas, en la región noreste de México. Se distingue por su riqueza histórica, su ambiente rural y la calidez de su gente. A lo largo del tiempo, ha conservado tradiciones y costumbres que reflejan la identidad de sus habitantes y su conexión con el campo.

## Ubicación
Se localiza en el noreste de Tamaulipas, dentro del Valle de San Fernando. Forma parte de los 43 municipios del estado y cuenta con un territorio amplio, con predominio de zonas rurales dedicadas a la agricultura y la ganadería.

## Población
Cuenta con aproximadamente 4,280 habitantes según el censo de 2020. La población ha mostrado una ligera disminución debido a la migración y la falta de oportunidades.

## Historia
El origen del municipio se remonta al 1 de julio de 1866, cuando la Congregación La Laja fue elevada a Villa de la Laja. En 1868, mediante decreto estatal, se reconoció como municipio y se propuso el nombre de Méndez en honor a Pedro José Méndez. Durante los siglos XIX y XX, el municipio consolidó su carácter rural con haciendas y comunidades agrícolas.

## Economía
La economía se basa principalmente en actividades primarias como la agricultura y la ganadería, complementadas por el comercio local y servicios básicos.

**Agricultura**: Se cultivan productos como sorgo, maíz y forrajes.

**Ganadería**: La ganadería es una actividad clave, destacando la producción de carne, cabrito y derivados.

**Comercio**: El comercio incluye tiendas, talleres y servicios básicos.

## Cultura
La cultura de Méndez se basa en tradiciones familiares, celebraciones religiosas y un fuerte sentido de comunidad. La música, la danza y la gastronomía forman parte esencial de su identidad.

## Valores
Los valores principales son el respeto, la solidaridad, el trabajo en equipo y la devoción religiosa.

## Costumbres
Es común que las familias se reúnan en plazas y espacios públicos los fines de semana. También se realizan eventos culturales, deportivos y festivales.

## Festividades
Destacan las fiestas patronales en honor a Nuestra Señora de Monserrat, la Feria de la Cosecha y eventos culturales con música, bailes y exposiciones agrícolas.

## Gastronomía
La comida típica incluye carne asada, cabrito al pastor, tamales, enchiladas tamaulipecas y asado de puerco. También destacan postres como empanadas, pan casero y conservas de frutas.

## Educación
El municipio cuenta con educación básica y media superior, aunque no dispone de universidades importantes, por lo que los estudiantes deben trasladarse a otras ciudades.

## Sociedad
La sociedad es pequeña, rural y unida. Las familias son numerosas y mantienen un estilo de vida tranquilo.

## Turismo
El turismo se enfoca en lo cultural y natural. Los visitantes pueden disfrutar de la tranquilidad, los paisajes rurales y las tradiciones del municipio.

**Atractivos turísticos**: Destacan la parroquia de Nuestra Señora de Monserrat, la presidencia municipal, la plaza principal y los paisajes rurales.

## Conclusión
Méndez, Tamaulipas, es un municipio que refleja la esencia de las comunidades rurales del noreste de México. Su historia, tradiciones y forma de vida muestran una identidad fuerte basada en el trabajo, la familia y la cultura.
''',

  imagenAsset: 'assets/images/mendez.jpg',
  imagenes: [
    'assets/images/mendez_1.jpg',
    'assets/images/mendez_2.jpg',
    'assets/images/mendez_3.jpg',
  ],
  poblacion: '2,500 hab.',
  superficie: '1,200 km²',
  gentilicio: 'Mendecino',

  monumentos3D: [
    Monumento(
      nombre: 'Monumento a Pedro José Mendez',
      descripcion: 'Un monumento icónico de la ciudad de Mendez.',
      rutaModelo: 'assets/models/Mendez.glb',
      escala: 1.0,
    ),
  ],
);