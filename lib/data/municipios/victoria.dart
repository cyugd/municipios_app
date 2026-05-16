import '../../models/municipio.dart';
import '../../models/monumento.dart';

final ciudad_victoria = Municipio(
  id: 'ciudad_victoria',
  nombre: 'Ciudad Victoria',
  descripcionCorta: 'Capital del estado, centro político, educativo y cultural.',
  descripcionLarga: '''
## Introducción
Ciudad Victoria, capital del estado de Tamaulipas, es una de las ciudades más representativas del noreste de México, reconocida por su historia, su desarrollo y su importante papel político, económico y cultural dentro de la región. Fundada el 6 de octubre de 1750 con el nombre de Villa de Santa María de Aguayo, esta ciudad ha sido testigo de los principales procesos históricos del país, desde la colonización hasta la modernidad del siglo XXI. Ubicada entre la Sierra Madre Oriental y la llanura del Golfo, combina naturaleza, educación y cultura.

## Geografía
Ciudad Victoria se localiza en el centro-sur de Tamaulipas, en un valle rodeado por la Sierra Madre Oriental al oeste y llanuras al este. Su altitud promedio es de 321 metros sobre el nivel del mar. El clima es semicálido y subhúmedo, con temperatura media anual de 24°C y lluvias en verano. El río San Marcos atraviesa la ciudad, y en sus alrededores se encuentran áreas naturales como el Cañón del Novillo y la reserva ecológica de Altas Cumbres.

## Población
Según el censo de 2020, la población es de 332,100 habitantes, lo que la convierte en la segunda ciudad más poblada del estado después de Reynosa. La población es mayoritariamente urbana, con un crecimiento sostenido por migración interna de otros municipios.

## Historia
La historia de Ciudad Victoria comienza en 1750, cuando fue fundada por José de Escandón bajo el nombre de Villa de Santa María de Aguayo, en honor a la esposa del virrey. Durante la época colonial, fue un centro administrativo y militar de segundo orden, pero su importancia creció tras la Independencia. En 1825, adoptó su nombre actual en honor a Guadalupe Victoria, primer presidente de México, y se convirtió en la capital del estado de Tamaulipas. Durante el siglo XIX, fue escenario de conflictos como la Guerra de Reforma y la Intervención Francesa. En el siglo XX, la ciudad experimentó un crecimiento acelerado gracias a la construcción de carreteras, la llegada del ferrocarril, el desarrollo educativo con la fundación de la Universidad Autónoma de Tamaulipas (UAT) en 1950, y la modernización de servicios.

## Economía
- **Administración pública:** al ser la capital, concentra los poderes ejecutivo, legislativo y judicial del estado.
- **Educación:** UAT, Instituto Tecnológico de Ciudad Victoria, Universidad Politécnica, entre otras.
- **Comercio y servicios:** centros comerciales, restaurantes, hoteles, servicios financieros.
- **Industria:** parque industrial con empresas de manufactura ligera, construcción, logística (Puerto Seco).
- **Turismo:** en crecimiento, gracias a su oferta cultural, deportiva y natural.

## Turismo
- **Centro Histórico:** calles empedradas, plazas, edificios coloniales y el Palacio de Gobierno con murales históricos.
- **Catedral del Sagrado Corazón de Jesús:** construida en el siglo XIX, estilo neogótico.
- **Zoológico Tamatán:** con especies locales y exóticas, áreas recreativas.
- **Parque Bicentenario:** lago artificial, pistas para correr, ciclopista, juegos infantiles.
- **Museo Tamux (Tamaulipas Museo de Historia y Ciencia):** exhibiciones interactivas, paleontología, historia regional.
- **Cañón del Novillo:** área natural para senderismo y rapel, a 30 minutos de la ciudad.
- **Parque Ecológico Los Troncones:** senderismo, miradores, cascada temporal.
- **Altas Cumbres:** reserva ecológica con bosques de pino y encino.

## Gastronomía
Gorditas (especialmente las famosas "Gorditas Doña Tota", nacidas aquí), machacado con huevo, flautas de harina, enchiladas, tamales, asado de puerco, cabrito. Dulces: dátil, calabaza en tacha, jamoncillos, glorias, conservas de membrillo. Bebidas: café de olla, atole, champurrado, aguas frescas.

## Cultura y Tradiciones
Centro Cultural Tamaulipas, Teatro Amalia G. de Castillo Ledón, Casa de la Cultura, Museo Regional de Historia. Festival Internacional Tamaulipas (música, danza, teatro), Feria Tamaulipas (agosto), Festival de la Ciudad (octubre), Expo Feria Universitaria.

## Educación
Universidad Autónoma de Tamaulipas (UAT), Instituto Tecnológico de Ciudad Victoria (ITCV), Universidad Politécnica de Victoria, Universidad La Salle, Universidad del Valle de México, Universidad Pedagógica Nacional, entre otras. Amplia cobertura de educación básica y media superior.

## Infraestructura
Carreteras, terminal de autobuses, aeropuerto. Hospitales del IMSS, ISSSTE, clínicas particulares, hospital general.

## Personajes Ilustres
- Guadalupe Victoria (1786-1843): primer presidente de México.
- General Servando Canales (1795-1872): militar tamaulipeco.
- Carlos A. Madrazo (1915-1969): político y promotor educativo.
- Profesora Refugio García (1900-1975): educadora.

## Datos Curiosos
- Ciudad Victoria fue la primera ciudad en instalar alumbrado público en Tamaulipas (1889).
- El Parque Bicentenario tiene un lago con pedales en forma de cisne.
- Las "Gorditas Doña Tota" son originarias de aquí y hay sucursales en todo el estado.
- En el Cerro del Novillo se encuentra un petrograbado con forma de sol.
- La ciudad es conocida como "La Capital de la Sierra".
''',
  imagenAsset: 'assets/images/victoria.jpg',
  imagenes: [
    'assets/fotos/victoria.png',
    'assets/fotos/CIUDAD-VICTORIA.jpg',
    'assets/fotos/ciudad-mante-tamaulipas.jpg'
  ],
  poblacion: '332,100 hab.',
  superficie: '1,000 km²',
  gentilicio: 'Victorense',
  monumentos3D: [
    Monumento(
      nombre: 'Águila monumental',
      descripcion: 'Escultura en la entrada de la ciudad.',
      rutaModelo: 'assets/models/Victoria.glb',
      escala: 1.0,
    ),
  ],
  imagenesGastronomia: [],
  imagenesTurismo: [],
);

final List<Map<String, dynamic>> lugaresVictoria = [
  {'nombre': 'Catedral del Sagrado Corazón de Jesús', 'descripcion': 'Templo neogótico.', 'lat': 23.7366, 'lng': -99.1413},
  {'nombre': 'Zoológico Tamatán', 'descripcion': 'Zoológico y parque recreativo.', 'lat': 23.7275, 'lng': -99.1333},
  {'nombre': 'Parque Bicentenario', 'descripcion': 'Área verde con lago y deportes.', 'lat': 23.7420, 'lng': -99.1500},
  {'nombre': 'Museo Tamux', 'descripcion': 'Museo de historia y ciencia.', 'lat': 23.7300, 'lng': -99.1400},
  {'nombre': 'Cañón del Novillo', 'descripcion': 'Senderismo y rapel.', 'lat': 23.6667, 'lng': -99.3167},
];