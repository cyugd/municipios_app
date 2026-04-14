import '../../models/municipio.dart';
import '../../models/monumento.dart';

final mainero = Municipio(
  id: 'mainero',
  nombre: 'Mainero',
  descripcionCorta: 'Esencia rural del altiplano tamaulipeco.',
  descripcionLarga: '''
## Introducción
Mainero es un municipio del estado de Tamaulipas que representa la esencia rural del altiplano del noreste de México. Se caracteriza por su baja densidad poblacional, su vida tranquila y el fuerte sentido de comunidad entre sus habitantes.

## Ubicación
Se localiza en la región centro-norte de Tamaulipas, entre los municipios de Villagrán y Bustamante. Forma parte del altiplano semiárido y se conecta mediante caminos rurales con otras localidades del estado.

## Población
Cuenta con aproximadamente 1,104 habitantes (2020), lo que lo convierte en uno de los municipios menos poblados del estado. Predomina la población adulta debido a la migración de jóvenes hacia ciudades más grandes.

## Historia
Mainero fue fundado oficialmente el 1 de marzo de 1866 durante el gobierno de Santiago Vidaurri. Recibe su nombre en honor a Bernardo G. de Mainero. Durante el porfiriato creció con base en la agricultura y ganadería. En la Revolución Mexicana enfrentó inestabilidad económica, y en el siglo XX mejoró su infraestructura básica.

## Geografía
El territorio presenta lomeríos y relieve ondulado propio de la Sierra Madre Oriental. El clima es semiseco y cálido, con lluvias escasas en verano. Predominan matorrales y pastizales, adecuados para la ganadería.

## Economía
La economía se basa principalmente en actividades primarias como la agricultura de temporal y la ganadería. También existe comercio local en pequeñas tiendas y negocios familiares.

**Agricultura**: Se cultivan productos como maíz, frijol y sorgo, dependiendo de las lluvias.

**Ganadería**: Predomina la cría de ganado bovino y caprino en sistemas extensivos.

**Comercio**: Se limita a tiendas de abarrotes, expendios de alimentos y pequeños negocios locales.

## Gastronomía
Destacan platillos tradicionales como cabrito asado, carne seca con huevo, frijoles charros, tamales y tortillas de harina. También son comunes bebidas como café de olla y aguas frescas.

## Cultura y Costumbres
La cultura se refleja en festividades cívicas y religiosas, como el Día de la Independencia. Las reuniones familiares, celebraciones tradicionales y actividades comunitarias fortalecen la identidad local.

## Valores
Predominan valores como la solidaridad, el respeto, la responsabilidad comunitaria y la unión familiar.

## Educación
El municipio cuenta con educación básica, pero para niveles superiores los estudiantes deben trasladarse a municipios cercanos. Existen retos en infraestructura y acceso a tecnología.

## Sociedad
La sociedad es unida y participativa. Las actividades escolares, eventos cívicos y reuniones comunitarias fortalecen el tejido social.

## Turismo
El turismo es local y se basa en la tranquilidad del entorno, la convivencia y la naturaleza del altiplano.

**Atractivos turísticos**: Incluyen la plaza principal, el templo de Santa Rosalía, caminos rurales, miradores naturales y áreas recreativas comunitarias.

**Naturaleza**: El paisaje semiárido ofrece escenarios para caminatas, observación del entorno y contacto con la vida rural.

## Conclusión
Mainero es un municipio que refleja la vida rural de Tamaulipas, con una fuerte identidad basada en la tradición, la comunidad y el trabajo. A pesar de sus retos, conserva su esencia y demuestra resiliencia.
''',
  imagenAsset: 'assets/images/mainero.jpg',
  imagenes: [
    'assets/fotos/mainero.png',
  ],
  poblacion: '2,000 hab.',
  superficie: '400 km²',
  gentilicio: 'Mainerenese',

  monumentos3D: [
    Monumento(
      nombre: 'Monumento a las madres',
      descripcion: 'Un monumento icónico de la ciudad de Mainero.',
      rutaModelo: 'assets/models/Mainero.glb',
      escala: 1.0,
    ),
  ],
);
