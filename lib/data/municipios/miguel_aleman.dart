import '../../models/municipio.dart';
import '../../models/monumento.dart';

final miguel_aleman = Municipio(
  id: 'miguel_aleman',
  nombre: 'Miguel Alemán',
  descripcionCorta: 'Ciudad fronteriza con identidad binacional y desarrollo comercial.',
  descripcionLarga: '''
## Introducción
Ciudad Miguel Alemán es un municipio fronterizo del norte de Tamaulipas, frente a Roma, Texas, a orillas del Río Bravo. Es una ciudad joven, fundada a mediados del siglo XX, que ha crecido gracias a la agricultura, el comercio binacional y, en años recientes, al turismo cinegético (caza de paloma ala blanca). Su identidad combina la tradición rural con la influencia texana, ofreciendo una experiencia única de frontera. Es un lugar de paso para muchos migrantes y un punto de intercambio cultural.

## Historia
La región tiene antecedentes históricos desde la época colonial, cuando se establecieron ganaderías. Sin embargo, el municipio fue creado oficialmente el 11 de octubre de 1950 mediante el Decreto Núm. 294. Su cabecera se formó a partir del poblado de San Pedro de Roma, adoptando el nombre de Miguel Alemán en honor al presidente Miguel Alemán Valdés.  
El desarrollo se vio impulsado por el comercio en el río Bravo, la construcción del puente internacional (1950) y la presa Marte R. Gómez (1958). En las últimas décadas, la maquila y el turismo de caza han diversificado la economía. La ciudad ha crecido de manera ordenada, con fraccionamientos y zonas comerciales.

## Geografía y Población
Se ubica en una llanura aluvial, con clima cálido semiseco, temperaturas extremas. La hidrografía está dominada por el Río Bravo y la presa Marte R. Gómez.  
Población: aproximadamente 27,000 habitantes (2020), mayoritariamente joven, con influencia de migrantes internos. La mayoría se dedica al comercio, la agricultura y los servicios.

## Economía
- **Agricultura:** Maíz, sorgo, algodón, melón, hortalizas (bajo riego).  
- **Ganadería:** Bovina, porcina, ovina, caprina.  
- **Pesca:** En la presa Marte R. Gómez (tilapia, bagre).  
- **Comercio transfronterizo:** Puente internacional con Roma, Texas.  
- **Turismo:** Cinegético (paloma ala blanca), pesca deportiva, eventos culturales.  
- **Maquiladoras:** Algunas plantas de manufactura.

## Cultura y Tradiciones
**Aniversario del municipio (11 de octubre):** Desfiles, conciertos, feria regional.  
**Torneo de Pesca (marzo):** En la presa.  
**Semana Santa y Día de Muertos** con tradiciones mexicanas.  
**Música norteña y banda** predominan.  
**Artesanías:** Talabartería, trabajos en cuero, bordados.  
**Gastronomía:** Carne asada, cabrito al pastor, tamales, enchiladas, machacado, frijoles charros; postres: cajetas, glorias, empanadas.  
**Valores:** Hospitalidad, laboriosidad, unidad familiar, resiliencia.

## Turismo y Atractivos
- **Presa Marte R. Gómez:** Ideal para pesca, camping y deportes acuáticos.  
- **Puente Internacional Miguel Alemán – Roma:** Cruce fronterizo.  
- **Plaza Principal:** Jardín y kiosco, centro de eventos.  
- **Iglesia de San Pedro Apóstol:** Templo moderno.  
- **Ranchos cinegéticos:** Caza de paloma ala blanca.  
- **Malecón del Río Bravo:** Área de esparcimiento.  
- **Parque Recreativo:** Albercas y áreas verdes.

## Educación y Salud
Cuenta con CBTIS 125, preparatorias, secundarias técnicas, y la Universidad Miguel Alemán (extensión de la UAT). En salud, hospital general y clínicas del IMSS.

## Personajes Ilustres
- **Miguel Alemán Valdés (1900-1983):** Presidente de México.  
- **Don José López (1920-2000):** Pionero de la agricultura de riego.  
- **Profesora María Hernández (1930-2015):** Educadora local.

## Datos Curiosos
- El municipio fue creado en 1950.  
- La presa Marte R. Gómez fue inaugurada en 1958.  
- La caza de paloma ala blanca atrae a turistas estadounidenses.  
- El puente internacional es un cruce importante para el comercio.  
- La ciudad tiene un diseño urbano moderno.

## Perspectivas Futuras
Se busca diversificar la economía, promover el turismo cinegético y mejorar la infraestructura.
''',
  imagenAsset: 'assets/images/miguel_aleman.jpg',
  imagenes: [
    'assets/fotos/Miguel.png',
    'assets/fotos/miguel-aleman-2.jpg',
    'assets/fotos/miguelA2.png',

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
final List<Map<String, dynamic>> lugaresMiguelAleman = [
  {
    'nombre': 'Presa Marte R. Gómez',
    'descripcion': 'Pesca, camping y deportes acuáticos.',
    'lat': 26.3333,
    'lng': -99.0333,
  },
  {
    'nombre': 'Puente Internacional',
    'descripcion': 'Cruce hacia Roma, Texas.',
    'lat': 26.4000,
    'lng': -99.0167,
  },
  {
    'nombre': 'Plaza Principal',
    'descripcion': 'Centro de la ciudad.',
    'lat': 26.3990,
    'lng': -99.0200,
  },
  {
    'nombre': 'Iglesia de San Pedro Apóstol',
    'descripcion': 'Templo principal.',
    'lat': 26.3980,
    'lng': -99.0220,
  },
];