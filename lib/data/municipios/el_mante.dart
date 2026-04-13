import '../../models/municipio.dart';
import '../../models/monumento.dart';

final el_mante = Municipio(
  id: 'el_mante',
  nombre: 'El Mante',
  descripcionCorta: 'Tradición cañera y riqueza agrícola en el sur de Tamaulipas.',
  descripcionLarga: '''
## Introducción
Ciudad Mante es un municipio ubicado al sur del estado de Tamaulipas, reconocido por su riqueza agrícola, su tradición cañera y la calidez de su gente. Su identidad está profundamente ligada al campo, a la producción de caña de azúcar y a las costumbres que han pasado de generación en generación.

## Historia
El Mante tiene sus orígenes en comunidades indígenas huastecas que habitaban la región y aprovechaban los recursos naturales. Durante la época colonial se establecieron haciendas agrícolas y ganaderas que impulsaron el desarrollo económico.

Con el paso del tiempo, el municipio se consolidó como un importante centro productor de caña de azúcar y cítricos. En el siglo XX, la creación del ingenio azucarero fortaleció su crecimiento económico y social, convirtiéndolo en uno de los municipios más importantes del sur de Tamaulipas.

## Geografía
Se localiza en la región sur del estado, dentro de la cuenca del Río Guayalejo. Su territorio está formado por planicies, zonas agrícolas y cuerpos de agua.

El clima es cálido subhúmedo, con temperaturas elevadas durante el verano. La presencia del Río Mante permite el desarrollo agrícola mediante sistemas de riego.

## Economía
La economía se basa principalmente en la agricultura, la ganadería, el comercio y la industria azucarera.

El cultivo de caña de azúcar es la actividad más importante, seguido por maíz, sorgo y cítricos. También destaca la ganadería bovina y el comercio local, además del turismo natural que ha ido creciendo en los últimos años.

## Cultura
La cultura de Ciudad Mante se caracteriza por su música regional, como el huapango y la música norteña. Las festividades, ferias y eventos tradicionales forman parte esencial de la vida cotidiana.

Destaca la Feria del Azúcar, donde se celebran actividades culturales, bailes y exposiciones que reflejan la identidad del municipio.

## Valores
Los habitantes de Ciudad Mante se distinguen por valores como el respeto, la solidaridad, la unión familiar y la hospitalidad.

## Costumbres
Las costumbres están relacionadas con el trabajo agrícola, la religión y las celebraciones tradicionales. Son comunes las fiestas patronales, los bailes regionales y las reuniones familiares.

## Gastronomía
La gastronomía mantense combina sabores huastecos y productos locales. Entre los platillos más representativos se encuentran la cecina, enchiladas huastecas, pan de caña y diversos antojitos elaborados con maíz, carne y piloncillo.

## Educación
El municipio cuenta con instituciones educativas desde nivel básico hasta medio superior y superior. Existen escuelas primarias, secundarias, bachilleratos y centros técnicos.

## Sociedad
La sociedad de Ciudad Mante se caracteriza por su sentido de comunidad, su identidad cañera y su ambiente tranquilo. Los habitantes participan activamente en eventos culturales, deportivos y sociales.

## Turismo
El turismo se enfoca en la naturaleza y la recreación. Entre los principales atractivos destacan el Río Mante, la Laguna del Nacimiento y el Cañón del Novillo, donde se pueden realizar actividades como senderismo, kayak y ecoturismo.

## Conclusión
Ciudad Mante es un municipio que combina tradición, naturaleza y desarrollo agrícola. Su historia, basada en la producción cañera, y su riqueza cultural lo convierten en un lugar representativo del sur de Tamaulipas.
''',
  imagenAsset: 'assets/images/el_mante.jpg',
  imagenes: [
    'assets/images/el_mante_1.jpg',
    'assets/images/el_mante_2.jpg',
    'assets/images/el_mante_3.jpg',
  ],
  poblacion: '80,000 hab.',
  superficie: '1,600 km²',
  gentilicio: 'Mantense',

  monumentos3D: [
    Monumento(
      nombre: 'Monumento a Juan Escales',
      descripcion: 'Un monumento icónico de la ciudad de Mante.',
      rutaModelo: 'assets/models/Mante.glb',
      escala: 1.0,
    ),
  ],
);