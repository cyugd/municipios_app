import '../../models/municipio.dart';
import '../../models/monumento.dart';

final nuevo_laredo = Municipio(
  id: 'nuevo_laredo',
  nombre: 'Nuevo Laredo',
  descripcionCorta: 'Importante ciudad fronteriza, cruce comercial clave con Estados Unidos.',
  descripcionLarga: '''
## Introducción
Nuevo Laredo es una ciudad ubicada al norte del estado de Tamaulipas, en la frontera entre México y Estados Unidos, a orillas del Río Bravo. Se encuentra frente a la ciudad de Laredo, Texas, formando una de las regiones fronterizas más importantes para el comercio internacional. Debido a su ubicación estratégica, Nuevo Laredo se ha convertido en un punto clave para el intercambio económico, el transporte de mercancías y la conexión cultural entre ambos países.

## Historia
Nuevo Laredo fue fundado el 15 de junio de 1848 después de la firma del Tratado de Guadalupe Hidalgo, cuando la antigua Villa de Laredo quedó dividida por la nueva frontera entre México y Estados Unidos. Un grupo de familias decidió permanecer en territorio mexicano y estableció la nueva población. Con el paso del tiempo, la ciudad creció gracias a su ubicación fronteriza, el desarrollo del comercio y la construcción de infraestructura como puentes internacionales y ferrocarriles.

## Geografía y Población
El municipio de Nuevo Laredo se encuentra en el norte de Tamaulipas, dentro de una región de clima cálido y semiárido. Su territorio está influenciado por el Río Bravo, que marca la frontera natural con Estados Unidos. La ciudad cuenta con una población grande en comparación con otros municipios del estado y forma parte de una zona metropolitana binacional junto con Laredo, Texas. La ubicación geográfica ha favorecido su crecimiento urbano, económico y comercial.

## Colonias y urbanización
Nuevo Laredo está formado por numerosas colonias que se han desarrollado conforme la ciudad ha crecido. Existen zonas residenciales, comerciales e industriales distribuidas en distintos sectores del municipio. El centro de la ciudad concentra edificios históricos, servicios y actividades comerciales importantes. Con el paso del tiempo, la urbanización ha provocado la expansión de nuevas colonias y fraccionamientos, lo que ha permitido el crecimiento de la población y el desarrollo de infraestructura como calles, viviendas, servicios públicos y áreas comerciales.

## Economía
La economía de Nuevo Laredo se basa principalmente en el comercio internacional, el transporte de carga y los servicios relacionados con la aduana. La ciudad es considerada uno de los cruces comerciales más importantes entre México y Estados Unidos, ya que una gran cantidad de mercancías pasa diariamente por sus puentes internacionales. Además, existen actividades económicas relacionadas con el comercio local, la industria, los servicios y el turismo fronterizo.

## Cultura, Valores, Costumbres y Gastronomía
La cultura de Nuevo Laredo refleja una combinación de tradiciones mexicanas y la influencia de la vida fronteriza. La ciudad conserva celebraciones tradicionales, eventos culturales y festividades que fortalecen la identidad local. Entre los valores más importantes destacan el orgullo por la ciudad, el trabajo y la convivencia comunitaria. Las costumbres incluyen reuniones familiares, celebraciones patrias y eventos sociales. En la gastronomía destacan platillos típicos del norte de México como la carne asada, el cabrito, la machaca y otros alimentos preparados con carne y productos regionales.

## Educación y sociedad
Nuevo Laredo cuenta con diversas instituciones educativas que ofrecen educación básica, media y superior. Las escuelas y universidades contribuyen a la formación académica de los habitantes y al desarrollo profesional de los jóvenes. La educación es un elemento importante para el crecimiento social y económico de la ciudad.

## Turismo y Lugares Emblemáticos
Entre los lugares emblemáticos de Nuevo Laredo destacan espacios históricos, culturales y recreativos que forman parte de la identidad de la ciudad. Algunos de estos sitios incluyen plazas públicas, monumentos históricos y áreas cercanas al Río Bravo. Estos lugares atraen visitantes y permiten conocer la historia, cultura y tradición de la ciudad fronteriza.

## Actualidad y Retos
Actualmente Nuevo Laredo continúa siendo una ciudad estratégica para el comercio internacional entre México y Estados Unidos. Su desarrollo económico está relacionado con el transporte, la industria y los servicios fronterizos. Sin embargo, el municipio también enfrenta retos importantes como mejorar la infraestructura urbana, fortalecer la seguridad y atender el crecimiento de la población para mantener un desarrollo equilibrado.
''',
  imagenAsset: 'assets/images/nuevo_laredo.jpg',
  imagenes: [
    'assets/fotos/Nuevo_ladero.png',
  ],
  poblacion: '400,000 hab.',
  superficie: '1,200 km²',
  gentilicio: 'Neolaredense',

  monumentos3D: [
    Monumento(
      nombre: 'Monumento a Vega Alta',
      descripcion: 'Un monumento icónico de la ciudad de Nuevo Ladero.',
      rutaModelo: 'assets/models/Nuevoladero.glb',
      escala: 1.0,
    ),
  ],
);
