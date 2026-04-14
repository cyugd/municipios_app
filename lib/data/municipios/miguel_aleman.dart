import '../../models/municipio.dart';
import '../../models/monumento.dart';

final miguel_aleman = Municipio(
  id: 'miguel_aleman',
  nombre: 'Miguel Alemán',
  descripcionCorta: 'Ciudad fronteriza con identidad binacional y desarrollo comercial.',
  descripcionLarga: '''
## Introducción
Ciudad Miguel Alemán es un municipio fronterizo ubicado en el norte de Tamaulipas. Se caracteriza por su importancia estratégica, su identidad binacional y su desarrollo ligado al comercio, la agricultura y la convivencia con Estados Unidos.

## Ubicación
Se localiza en la frontera con Estados Unidos, frente a Roma, Texas, a orillas del río Bravo. Forma parte de la región fronteriza del norte de Tamaulipas y cuenta con una altitud aproximada de 55 metros sobre el nivel del mar.

## Población
Cuenta con aproximadamente 27,015 habitantes en 2020, de los cuales cerca de 18,592 viven en la cabecera municipal. La población es mayormente joven y presenta una dinámica influenciada por la migración hacia Estados Unidos.

## Historia
El municipio fue creado oficialmente el 11 de octubre de 1950 mediante el Decreto Núm. 294. Su cabecera se formó a partir del poblado de San Pedro de Roma, adoptando el nombre de Miguel Alemán en honor al presidente Miguel Alemán Valdés.

En el siglo XX, la construcción del puente internacional y la presa Marte R. Gómez impulsaron el crecimiento económico.

## Geografía
El municipio se encuentra en una llanura aluvial con relieve plano. Presenta un clima cálido semiseco con temperaturas extremas. La hidrografía está dominada por el río Bravo y la presa Marte R. Gómez.

## Economía
La economía se basa en la agricultura, ganadería, comercio, servicios y turismo, destacando su actividad fronteriza.

**Agricultura**: Se cultivan productos como maíz, sorgo, algodón, melón y hortalizas.

**Ganadería**: Se desarrolla la cría de bovinos, porcinos, ovinos y caprinos.

**Pesca**: Se practica en la presa Marte R. Gómez, tanto de forma comercial como deportiva.

**Comercio**: El comercio transfronterizo es uno de los principales motores económicos.

**Turismo**: El turismo se encuentra en crecimiento, enfocado en actividades recreativas, pesca deportiva y eventos culturales.

## Cultura
La cultura refleja una mezcla de tradiciones mexicanas y estadounidenses. La música norteña, la danza folklórica y las celebraciones religiosas son parte esencial de su identidad.

## Valores
Destacan la hospitalidad, la solidaridad, el sentido de comunidad, el respeto por las tradiciones y la resiliencia.

## Costumbres
Son comunes las reuniones familiares, las convivencias con carne asada, la música regional y las prácticas culturales influenciadas por la cercanía con Estados Unidos.

## Festividades
Se celebran el aniversario del municipio el 11 de octubre, las fiestas patrias, la Semana Santa, el Día de Muertos y la feria regional con torneo de pesca.

## Gastronomía
La comida típica incluye carne asada, cabrito al pastor, tamales, enchiladas, frijoles charros y dulces regionales como cajetas y glorias.

## Educación
El municipio cuenta con instituciones educativas desde nivel básico hasta superior, incluyendo bachilleratos y universidades locales.

## Sociedad
La sociedad es activa, trabajadora y con fuerte identidad fronteriza. La convivencia familiar y la cooperación comunitaria son aspectos clave.

## Turismo
El municipio ofrece atractivos naturales, históricos y culturales, impulsados por su ubicación y su historia.

**Atractivos turísticos**: Destacan la Presa Marte R. Gómez, la Plaza Principal, la Iglesia de San Pedro Apóstol y el Puente Internacional Miguel Alemán–Roma.

**Naturaleza**: Cuenta con áreas ribereñas, ecosistemas naturales y espacios ideales para actividades recreativas y ecoturismo.

## Conclusión
Ciudad Miguel Alemán, Tamaulipas, es un municipio que refleja la importancia de la vida fronteriza, combinando tradición y modernidad. Su historia, economía y cultura muestran una comunidad resiliente que mantiene sus raíces mientras busca oportunidades de crecimiento.
''',

  imagenAsset: 'assets/images/miguel_aleman.jpg',
  imagenes: [
    'assets/fotos/Miguel.png',
  ],
  poblacion: '25,000 hab.',
  superficie: '200 km²',
  gentilicio: 'Alemanense',

  monumentos3D: [
    Monumento(
      nombre: 'Monumento Benito Juárez',
      descripcion: 'Un monumento icónico de la ciudad de Miguel Aleman.',
      rutaModelo: 'assets/models/Miguel.glb',
      escala: 1.0,
    ),
  ],
);
