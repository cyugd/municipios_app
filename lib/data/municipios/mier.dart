import '../../models/municipio.dart';
import '../../models/monumento.dart';

final mier = Municipio(
  id: 'mier',
  nombre: 'Mier',
  descripcionCorta: 'Pueblo Mágico con historia, arquitectura colonial y tradiciones.',
  descripcionLarga: '''
## Introducción
Ciudad Mier es uno de los municipios más antiguos del norte de México, ubicado en el estado de Tamaulipas. Fundado en 1753, destaca por su historia, su arquitectura colonial y la conservación de sus tradiciones. Su nombramiento como Pueblo Mágico en 2007 resalta su valor cultural, su gastronomía y la calidez de su gente.

## Ubicación
Se localiza en el noreste de Tamaulipas, en la región conocida como la Frontera Chica. Está situada a orillas del Río Bravo, cerca de los ríos Álamo y San Juan, con una altitud aproximada de entre 76 y 90 metros sobre el nivel del mar.

## Población
Cuenta con una población aproximada de 6,385 habitantes en 2020, de los cuales alrededor de 5,208 viven en la cabecera municipal.

## Historia
Fue fundada el 6 de marzo de 1753 por José de Escandón bajo la advocación de la Purísima Concepción. Su nombre proviene de Francisco Mier y Torre, antiguo gobernador de Nuevo León. El asentamiento inició con familias de Camargo y Cerralvo, dedicadas principalmente a la ganadería.

En 2007 fue declarada Pueblo Mágico y en años recientes ha enfrentado retos sociales, mostrando resiliencia y recuperación.

## Geografía
El municipio presenta un relieve semiplano con clima seco y extremoso. La vegetación es de tipo semiárido, con matorrales, pastizales y plantas como el nopal. Sus suelos incluyen fluvisoles fértiles y suelos cálcicos.

## Economía
La economía se basa en la ganadería, la agricultura, el comercio y el turismo. También se desarrollan actividades como la pesca y la apicultura.

**Agricultura**: Se cultivan productos como maíz, sorgo, frijol y hortalizas.

**Ganadería**: Predomina la ganadería bovina, así como la cría de cabras y cerdos.

**Comercio**: El comercio local incluye tiendas, servicios básicos y actividad relacionada con el campo.

## Cultura
La cultura de Mier refleja sus raíces coloniales y su fuerte identidad comunitaria. Las tradiciones religiosas, la música y las danzas forman parte de la vida cotidiana.

## Valores
Destacan la hospitalidad, la solidaridad, el sentido de comunidad y la participación social.

## Costumbres
Entre las costumbres más comunes están las reuniones familiares, las serenatas en la plaza y la convivencia dominical con comida típica y música.

## Festividades
Las principales celebraciones incluyen las fiestas patronales en honor a la Inmaculada Concepción en diciembre, así como eventos de Semana Santa, el Día de la Independencia y el aniversario de su fundación.

## Gastronomía
La comida típica incluye cabrito al pastor, carne seca con huevo, enchiladas norteñas, tamales y dulces tradicionales.

## Educación
El municipio cuenta con instituciones educativas básicas y proyectos de desarrollo en educación, salud y servicios públicos.

## Sociedad
La sociedad es pequeña y unida, con un estilo de vida tranquilo. A pesar de retos económicos y sociales, mantiene un fuerte sentido de identidad.

## Turismo
El turismo se enfoca en lo cultural e histórico. Su nombramiento como Pueblo Mágico ha impulsado la visita de turistas interesados en su patrimonio.

**Atractivos turísticos**: Destacan la Parroquia de la Inmaculada Concepción, el Museo de la Batalla de Mier, el malecón del Río Álamo y las casas coloniales del centro histórico.

**Naturaleza**: Cuenta con paisajes ribereños, áreas naturales y espacios ideales para la pesca y actividades al aire libre.

## Conclusión
Ciudad Mier, Tamaulipas, es un ejemplo de identidad, historia y resiliencia. A pesar de su tamaño, posee una gran riqueza cultural y un pasado significativo que se refleja en sus tradiciones y en su gente.
''',
  imagenAsset: 'assets/images/mier.jpg',
  imagenes: [
    'assets/images/mier_1.jpg',
    'assets/images/mier_2.jpg',
    'assets/images/mier_3.jpg',
  ],
  poblacion: '5,000 hab.',
  superficie: '300 km²',
  gentilicio: 'Mierense',

  monumentos3D: [
    Monumento(
      nombre: 'Mi heroica',
      descripcion: 'Un monumento icónico de la ciudad de Mier.',
      rutaModelo: 'assets/models/Mier.glb',
      escala: 1.0,
    ),
  ],
);