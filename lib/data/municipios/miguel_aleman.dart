import '../../models/municipio.dart';
import '../../models/monumento.dart';

final miguel_aleman = Municipio(
  id: 'miguel_aleman',
  nombre: 'Miguel Alemán',
  descripcionCorta: 'Ciudad fronteriza con identidad binacional y desarrollo comercial.',
  descripcionLarga: '''
## Introducción
Ciudad Miguel Alemán es un municipio fronterizo del norte de Tamaulipas, frente a Roma, Texas, a orillas del Río Bravo. Es una ciudad joven, fundada a mediados del siglo XX, que ha crecido gracias a la agricultura, el comercio binacional y, en años recientes, al turismo cinegético (caza de paloma ala blanca). Su identidad combina la tradición rural con la influencia texana.

## Geografía
Ubicado en una llanura aluvial, clima cálido semiseco, temperaturas extremas. Río Bravo y presa Marte R. Gómez.

## Población
Aproximadamente 27,000 habitantes (2020), mayoritariamente joven, con influencia de migrantes internos.

## Historia
El municipio fue creado oficialmente el 11 de octubre de 1950 mediante decreto. Su cabecera se formó a partir del poblado de San Pedro de Roma, adoptando el nombre de Miguel Alemán en honor al presidente Miguel Alemán Valdés. El desarrollo se vio impulsado por el comercio en el río Bravo, la construcción del puente internacional (1950) y la presa Marte R. Gómez (1958).

## Economía
- **Agricultura:** maíz, sorgo, algodón, melón, hortalizas (bajo riego).
- **Ganadería:** bovina, porcina, ovina, caprina.
- **Pesca:** en la presa Marte R. Gómez (tilapia, bagre).
- **Comercio transfronterizo:** puente internacional con Roma, Texas.
- **Turismo:** cinegético (paloma ala blanca), pesca deportiva.
- **Maquiladoras:** algunas plantas de manufactura.

## Turismo
- **Presa Marte R. Gómez:** pesca, camping, deportes acuáticos.
- **Puente Internacional Miguel Alemán – Roma:** cruce fronterizo.
- **Plaza Principal:** jardín y kiosco.
- **Iglesia de San Pedro Apóstol:** templo moderno.
- **Ranchos cinegéticos:** caza de paloma ala blanca.
- **Malecón del Río Bravo:** área de esparcimiento.
- **Parque Recreativo:** albercas y áreas verdes.

## Gastronomía
Carne asada, cabrito al pastor, tamales, enchiladas, machacado, frijoles charros. Dulces: cajetas, glorias, empanadas.

## Cultura y Tradiciones
Aniversario del municipio (11 de octubre) con desfiles, feria regional. Torneo de Pesca (marzo). Semana Santa, Día de Muertos. Música norteña y banda. Artesanías: talabartería, trabajos en cuero, bordados.

## Educación
CBTIS 125, preparatorias, Universidad Miguel Alemán (extensión de la UAT).

## Infraestructura
Hospital general, clínicas del IMSS. Carretera pavimentada.

## Personajes Ilustres
- Miguel Alemán Valdés (1900-1983): presidente de México.
- Don José López (1920-2000): pionero de la agricultura de riego.
- Profesora María Hernández (1930-2015): educadora.

## Datos Curiosos
- El municipio fue creado en 1950.
- La presa Marte R. Gómez fue inaugurada en 1958.
- La caza de paloma ala blanca atrae a turistas estadounidenses.
- El puente internacional es un cruce importante para el comercio.
- La ciudad tiene un diseño urbano moderno.
''',
  imagenAsset: 'assets/images/miguel_aleman.jpg',
  imagenes: [
    'assets/fotos/Miguel.png',
    'assets/fotos/miguel-aleman-2.jpg',
    'assets/fotos/miguelA2.png',
  ],
  poblacion: '27,000 hab.',
  superficie: '200 km²',
  gentilicio: 'Alemanense',
  monumentos3D: [
    Monumento(
      nombre: 'Monumento Benito Juárez',
      descripcion: 'Estatua del Benemérito.',
      rutaModelo: 'assets/models/Miguel.glb',
      escala: 1.0,
    ),
  ],
  imagenesGastronomia: [],
  imagenesTurismo: [],
);

final List<Map<String, dynamic>> lugaresMiguelAleman = [
  {'nombre': 'Presa Marte R. Gómez', 'descripcion': 'Pesca, camping.', 'lat': 26.3333, 'lng': -99.0333},
  {'nombre': 'Puente Internacional', 'descripcion': 'Cruce hacia Roma, Texas.', 'lat': 26.4000, 'lng': -99.0167},
  {'nombre': 'Plaza Principal', 'descripcion': 'Centro de la ciudad.', 'lat': 26.3990, 'lng': -99.0200},
  {'nombre': 'Iglesia de San Pedro Apóstol', 'descripcion': 'Templo principal.', 'lat': 26.3980, 'lng': -99.0220},
];