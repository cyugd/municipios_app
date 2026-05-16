import '../../models/municipio.dart';
import '../../models/monumento.dart';

final camargo = Municipio(
  id: 'camargo',
  nombre: 'Camargo',
  descripcionCorta: 'Ciudad fronteriza con historia, cultura y tradiciones a orillas del Río Bravo.',
  descripcionLarga: '''
## Introducción
Camargo es un municipio del norte de Tamaulipas, situado en la región conocida como la Frontera Chica, a orillas del Río Bravo. Es una ciudad fronteriza con una rica historia colonial, un fuerte arraigo agrícola y una identidad cultural que se refleja en sus festividades, gastronomía y en la calidez de su gente. Fundado en 1749, Camargo ha sido testigo de importantes acontecimientos históricos, desde la Independencia hasta la Revolución Mexicana, y hoy es un centro agrícola y comercial de relevancia. Su cercanía con Estados Unidos le da un dinamismo fronterizo único.

## Geografía
Camargo se ubica en el norte de Tamaulipas, en la región de la Frontera Chica, teniendo como límite natural el Río Bravo. Su altitud promedio es de 70 metros sobre el nivel del mar y su territorio forma parte de una llanura típica del norte del estado. El clima es seco cálido extremoso, con veranos que superan los 40°C e inviernos con fríos moderados. La precipitación anual es de entre 400 y 500 mm. La vegetación es de matorral espinoso, mezquite, huizache y nopal. La fauna incluye venado cola blanca, coyote, liebre, conejo, zorrillo y aves como la codorniz y el halcón.

## Población
Aproximadamente 16,000 habitantes (2020), distribuidos en la cabecera y comunidades rurales. La mayoría se dedica a la agricultura, ganadería y comercio.

## Historia
Camargo fue fundado el 5 de marzo de 1749 por Don Blas María de la Garza Falcón, como parte del plan colonizador del Nuevo Santander impulsado por José de Escandón. Originalmente se llamó Villa de San Miguel de Camargo. Durante la época colonial, fue un importante centro ganadero y de paso para las rutas comerciales hacia Texas. En el siglo XIX, participó activamente en la Guerra de Independencia y en la Guerra México-Estados Unidos. En 1846, las tropas estadounidenses ocuparon la villa durante la invasión. Durante la Revolución Mexicana, fue escenario de enfrentamientos y se realizaron repartos de tierras. En el siglo XX, la construcción del Distrito de Riego 025 transformó la economía, impulsando la agricultura intensiva.

## Economía
- **Agricultura:** impulsada por el Distrito de Riego 025. Cultivos: sorgo, maíz, frijol, algodón, trigo, hortalizas.
- **Ganadería:** bovina, caprina, porcina. Producción de carne y leche.
- **Pesca:** en el Río Bravo (bagre y mojarra).
- **Comercio:** intercambio comercial con Roma, Texas. Tiendas, restaurantes, hoteles.
- **Industria:** incipiente, con algunas maquiladoras y plantas procesadoras.

## Turismo
- **Parroquia de Nuestra Señora de Santa Ana:** Templo del siglo XVIII, estilo barroco.
- **Plaza Principal:** Jardín con kiosco, rodeada de edificios históricos.
- **Museo La Casona:** Casa antigua que resguarda piezas históricas.
- **Malecón del Río Bravo:** Área de esparcimiento con vista al río.
- **Campos agrícolas:** recorridos por zonas de riego.
- **Puente Internacional Camargo-Roma:** cruce hacia Texas.
- **Laguna de Camargo:** pequeño cuerpo de agua para pesca.

## Gastronomía
Cabrito al pastor, tamales, gorditas, machacado con huevo, enchiladas, asado de puerco, frijoles charros. Dulces: glorias, jamoncillos, pan de polvo. Bebidas: agua de frutas, café de olla.

## Cultura y Tradiciones
Fiestas patronales de Santa Ana (26 de julio). Fiesta de la Candelaria (2 de febrero). Feria de la Camargueña (marzo) con desfile de carros alegóricos. Día de Muertos. Música norteña y banda. Artesanías: talabartería, bordados, tejidos de palma.

## Educación
Escuelas básicas, secundaria técnica, bachillerato (COBAT). Para estudios superiores, los jóvenes acuden a Reynosa o Nuevo Laredo.

## Infraestructura
Hospital general del IMSS, clínicas del ISSSTE. Distrito de Riego 025. Carretera pavimentada.

## Personajes Ilustres
- Don Blas María de la Garza Falcón (1700-1767): fundador del municipio.
- General Servando Canales (1795-1872): militar tamaulipeco.
- Juan Nepomuceno Cortina (1824-1894): luchador social.
- Profesora Elvira Treviño (1920-2005): educadora.

## Datos Curiosos
- Camargo fue una de las primeras villas fundadas en Tamaulipas.
- El Río Bravo marca la frontera natural con Estados Unidos.
- La "Camargueña" es una fiesta típica con desfile de carros alegóricos.
- El distrito de riego 025 fue construido en la década de 1950.
- En la plaza principal aún se conservan losas originales del siglo XIX.
- Camargo es conocido como "La ciudad de las tres culturas".
''',
  imagenAsset: 'assets/images/camargo.jpeg',
  imagenes: [
    'assets/fotos/camargo.png',
    'assets/fotos/camargo1.webp',
    'assets/fotos/camargo2.jpg'
  ],
  poblacion: '16,000 hab.',
  superficie: '1,200 km²',
  gentilicio: 'Camarguense',
  monumentos3D: [
    Monumento(
      nombre: 'Monumento a la Patria',
      descripcion: 'Monumento emblemático.',
      rutaModelo: 'assets/models/Camargo.glb',
      escala: 1.0,
    ),
  ],
  imagenesGastronomia: [],
  imagenesTurismo: [],
);

final List<Map<String, dynamic>> lugaresCamargo = [
  {'nombre': 'Parroquia de Nuestra Señora de Santa Ana', 'descripcion': 'Templo barroco del siglo XVIII.', 'lat': 26.2000, 'lng': -98.8500},
  {'nombre': 'Plaza Principal', 'descripcion': 'Centro de la vida social y cultural.', 'lat': 26.1990, 'lng': -98.8510},
  {'nombre': 'Malecón del Río Bravo', 'descripcion': 'Paseo frente al río fronterizo.', 'lat': 26.2100, 'lng': -98.8400},
  {'nombre': 'Museo La Casona', 'descripcion': 'Museo histórico local.', 'lat': 26.1980, 'lng': -98.8520},
];