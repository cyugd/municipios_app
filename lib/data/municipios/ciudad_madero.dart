import '../../models/municipio.dart';
import '../../models/monumento.dart';

final ciudad_madero = Municipio(
  id: 'ciudad_madero',
  nombre: 'Ciudad Madero',
  descripcionCorta: 'Ciudad petrolera con playa, industria y tradición marinera.',
  descripcionLarga: '''
## Historia
Ciudad Madero surgió como un pequeño asentamiento costero donde sus habitantes vivían de la pesca artesanal, la recolección marina y el intercambio de productos. Con el descubrimiento del petróleo en la región, la ciudad experimentó una transformación importante. En 1914 se estableció un complejo industrial que dio origen a la Refinería Francisco I. Madero, lo que impulsó el crecimiento urbano y económico. La expropiación petrolera de 1938 fortaleció el desarrollo industrial bajo control nacional. Con el paso del tiempo, el turismo, especialmente en Playa Miramar, se convirtió en otra fuente importante de ingresos.

## Geografía
Ciudad Madero se localiza al sur de la desembocadura del río Pánuco, con acceso directo al Golfo de México. Su territorio es mayormente plano y de baja altitud, con presencia de lagunas, humedales y manglares. El clima es cálido-subhúmedo, con lluvias en verano y riesgo de huracanes. Estos ecosistemas favorecen la biodiversidad y la actividad pesquera.

## Población
La población de Ciudad Madero ha crecido significativamente, pasando de pequeños asentamientos a más de 200 mil habitantes. Este crecimiento se dio principalmente entre 1930 y 1980 debido al desarrollo industrial. Actualmente, la población está compuesta por personas en edad productiva, jóvenes y migrantes que llegaron por oportunidades laborales.

## Economía
La economía se basa en la industria petrolera, la pesca, el comercio y el turismo. La refinería es uno de los principales motores económicos, generando empleos directos e indirectos. Playa Miramar impulsa el turismo con hoteles, restaurantes y actividades recreativas. Además, la pesca artesanal y la venta de mariscos son actividades relevantes.

## Cultura
La cultura de Ciudad Madero refleja su identidad marinera y obrera. Se manifiesta en la música tradicional, las fiestas populares y las costumbres relacionadas con la pesca y la industria petrolera. También se conserva el patrimonio histórico como el Faro de la Barra y monumentos conmemorativos.

## Valores
Los valores principales de la comunidad son el trabajo, la solidaridad, la hospitalidad y el orgullo por su historia.

## Costumbres
Las costumbres incluyen celebraciones como el Carnaval, la fiesta de la Virgen del Carmen y la Semana Santa. Estas festividades combinan elementos religiosos, culturales y turísticos, y reúnen a la comunidad y visitantes.

## Gastronomía
La gastronomía destaca por su influencia marina. Algunos platillos típicos son el cóctel de mariscos, empanadas de jaiba, ceviche, pescado asado y camarones al coco. También es tradicional el pan dulce de la región.

## Educación
Ciudad Madero cuenta con instituciones educativas en todos los niveles, incluyendo formación técnica relacionada con la industria petrolera. Esto permite preparar a los estudiantes para integrarse al ámbito laboral local.

## Sociedad
La sociedad es diversa e incluye pescadores, trabajadores industriales, comerciantes y prestadores de servicios turísticos. Existen organizaciones como cooperativas, sindicatos y comités vecinales que fortalecen la vida comunitaria.

## Turismo
El turismo es una actividad clave, destacando Playa Miramar como el principal atractivo. También sobresalen sitios como el Faro de la Barra y monumentos históricos. El turismo combina naturaleza, cultura y gastronomía.

## Conclusión
Ciudad Madero es un municipio que combina industria, historia y belleza natural. Su desarrollo ha estado marcado por la actividad petrolera y el crecimiento turístico. El reto principal es lograr un equilibrio entre el desarrollo económico y la protección del medio ambiente, asegurando una mejor calidad de vida para sus habitantes.
''',
  imagenAsset: 'assets/images/ciudad_madero.jpg',
  imagenes: [
    'assets/images/ciudad_madero_1.jpg',
    'assets/images/ciudad_madero_2.jpg',
  ],
  poblacion: '205,000 hab.',
  superficie: '46 km²',
  gentilicio: 'Maderense',

  monumentos3D: [
    Monumento(
      nombre: 'Monumento a la Patria',
      descripcion: 'Un monumento icónico de la ciudad de Madero.',
      rutaModelo: 'assets/models/Madero.glb',
      escala: 1.0,
    ),
  ],
);


