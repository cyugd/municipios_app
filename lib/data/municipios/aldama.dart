import '../../models/municipio.dart';
import '../../models/monumento.dart';

final aldama = Municipio(
  id: 'aldama',
  nombre: 'Aldama',
  descripcionCorta: 'Municipio con historia insurgente, tradición norteña y riqueza natural en el centro-norte de Tamaulipas.',
  descripcionLarga: '''
## Introducción
Aldama es un municipio del centro-norte de Tamaulipas, en la región del Altiplano Tamaulipeco. Su cabecera es la Villa de Aldama, fundada en 1757 por José de Escandón. Es un lugar de gran riqueza histórica, donde las tradiciones norteñas se mezclan con la tranquilidad de la vida rural. Sus paisajes están compuestos por extensas llanuras, suaves lomeríos y áreas semiáridas. La economía se basa en la agricultura de temporal y la ganadería. El municipio lleva su nombre en honor a Ignacio Aldama, insurgente de la Independencia. Es un destino ideal para quienes buscan paz, naturaleza y cultura norteña.

## Geografía
Aldama se localiza en la región centro-norte del estado, colindando con Casas, Soto la Marina, González y Jiménez. Su altitud promedio es de 150 metros sobre el nivel del mar. El clima es semicálido subhúmedo, con temperatura media anual de 23°C y lluvias concentradas entre junio y septiembre. El río Purificación es el principal cuerpo de agua. La vegetación dominante es el matorral espinoso, con especies como mezquite, huizache, nopal y lechuguilla. La fauna incluye venado cola blanca, coyote, liebre, armadillo, codorniz y halcón.

## Población
Según el censo de 2020, Aldama cuenta con 30,142 habitantes. La cabecera municipal concentra alrededor de 10,500 habitantes. El resto se distribuye en 85 localidades rurales. La población es mayoritariamente joven, aunque hay migración constante hacia ciudades como Ciudad Victoria y Reynosa. La tasa de alfabetización es del 94%.

## Historia
La región fue habitada originalmente por grupos nómadas janambres y pisones, que dejaron algunos vestigios arqueológicos. La villa fue fundada oficialmente el 20 de febrero de 1757 por José de Escandón como parte de la colonización del Nuevo Santander. Durante la Guerra de Independencia fue escenario de combates entre insurgentes y realistas. En la Revolución Mexicana hubo reparto de tierras y formación de ejidos, lo que transformó la estructura rural del municipio.

## Economía
- **Agricultura:** maíz, sorgo, frijol, cártamo y cítricos (naranja, toronja, limón). Se cultivan principalmente en temporal.
- **Ganadería:** bovina, caprina, porcina y aves de corral. Destaca la producción de leche y queso artesanal.
- **Comercio:** pequeñas tiendas de abarrotes, talleres mecánicos, carpinterías, panaderías y restaurantes familiares.
- **Turismo:** en desarrollo, basado en atractivos naturales como la Presa Vicente Guerrero y el Cerro del Bernal.

## Turismo
- **Plaza Principal Ignacio Aldama:** corazón de la vida social, con kiosco de hierro forjado, jardines y edificios históricos.
- **Parroquia de Santa María:** templo del siglo XVIII de estilo barroco, con fachada de cantera rosa.
- **Presa Vicente Guerrero:** ubicada en el municipio vecino de González, pero accesible desde Aldama; ideal para pesca deportiva (lobina, mojarra) y paseos en lancha.
- **Cerro del Bernal:** elevación de 800 msnm, perfecta para senderismo, ciclismo de montaña y vistas panorámicas.
- **Ex Hacienda de San Francisco:** antigua hacienda del siglo XIX convertida en centro cultural y museo comunitario.

## Gastronomía
Cabrito al pastor, carne asada, machacado con huevo, tamales norteños, gorditas de maíz quebrado, asado de puerco, enchiladas rojas y frijoles charros. Dulces típicos: glorias, jamoncillos, pan de polvo y conservas de calabaza. Bebidas: café de olla, atole de masa y aguas frescas.

## Cultura y Tradiciones
Las fiestas patronales en honor a Santa María se celebran del 12 al 16 de agosto, con procesiones, danzas de matlachines, jaripeos, carreras de caballos, palenque, juegos mecánicos, conciertos de música norteña y banda, y una feria regional. El Día de Muertos se colocan altares y se visitan los cementerios. En Semana Santa se realiza el viacrucis. Las artesanías locales incluyen talabartería, tejidos de palma, bordados y alfarería.

## Educación
El municipio cuenta con 12 preescolares, 25 primarias, 5 secundarias (incluyendo una secundaria técnica), el COBAT Plantel Aldama y un telebachillerato en la comunidad de El Barretal. Para estudios superiores, los jóvenes deben trasladarse a Ciudad Victoria.

## Infraestructura
La cabecera está conectada por carretera estatal pavimentada. Los caminos rurales son de terracería. La cobertura de agua potable es del 85%, electricidad del 98% y drenaje del 75% en la cabecera. En salud, cuenta con un centro de salud rural, dos consultorios particulares y una unidad de la Cruz Roja.

## Personajes Ilustres
- Ignacio Aldama (1769-1811): insurgente, héroe de la Independencia.
- General Mariano Aldama (1785-1820): militar insurgente.
- Profesor Juan López Hernández (1920-1995): educador y fundador de la primera secundaria.
- Doña Carmen García Martínez (1930-2010): artesana textil reconocida.

## Datos Curiosos
- Aldama es conocido como "La Puerta del Altiplano".
- En la Ex Hacienda de San Francisco se filmó una escena de la película "La Valentina" con María Félix.
- El Cerro del Bernal es considerado un centro energético por algunas comunidades.
- La "gordita aldamense" tiene su propia feria gastronómica en octubre.
- En el paraje "La Cueva del Indio" se han encontrado petrograbados prehispánicos.
''',
  imagenAsset: 'assets/images/aldama.jpeg',
  imagenes: [
    'assets/fotos/aldama.png',
    'assets/fotos/aldama1.jpg',
    'assets/fotos/aldama2.jpg'
  ],
  poblacion: '30,142 hab.',
  superficie: '1,800 km²',
  gentilicio: 'Aldamense',
  monumentos3D: [
    Monumento(
      nombre: 'Monumento a Ignacio Aldama',
      descripcion: 'Estatua dedicada al héroe insurgente.',
      rutaModelo: 'assets/models/Aldama.glb',
      escala: 1.0,
    ),
  ],
  imagenesGastronomia: [],
  imagenesTurismo: [],
);

final List<Map<String, dynamic>> lugaresAldama = [
  {'nombre': 'Plaza Principal Ignacio Aldama', 'descripcion': 'Centro de la vida social.', 'lat': 23.9167, 'lng': -98.0833},
  {'nombre': 'Parroquia de Santa María', 'descripcion': 'Templo del siglo XVIII.', 'lat': 23.9150, 'lng': -98.0840},
  {'nombre': 'Presa Vicente Guerrero', 'descripcion': 'Pesca deportiva.', 'lat': 23.9000, 'lng': -98.1000},
  {'nombre': 'Cerro del Bernal', 'descripcion': 'Senderismo y mirador.', 'lat': 23.9200, 'lng': -98.0800},
  {'nombre': 'Ex Hacienda de San Francisco', 'descripcion': 'Centro cultural.', 'lat': 23.9100, 'lng': -98.0900},
];