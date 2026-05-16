import '../../models/municipio.dart';
import '../../models/monumento.dart';

final el_mante = Municipio(
  id: 'el_mante',
  nombre: 'El Mante',
  descripcionCorta: 'Tradición cañera y riqueza agrícola en el sur de Tamaulipas.',
  descripcionLarga: '''
## Introducción
El Mante es un municipio ubicado en la región sur del estado de Tamaulipas, dentro de la fértil región huasteca. Es conocido como la “Capital de la Caña de Azúcar” por su enorme producción azucarera, la cual ha moldeado su economía, cultura y paisaje. Rodeado por el río Mante y la Sierra Madre Oriental, este municipio combina la tradición agrícola con bellezas naturales como cascadas, lagunas y grutas.

## Geografía
Se localiza en el sur del estado, en el valle del río Guayalejo, rodeado de lomeríos y la Sierra Madre Oriental. Altitud promedio 80 msnm. Clima cálido subhúmedo, temperatura media de 24°C y lluvias en verano. Vegetación de selva baja y pastizales. Fauna: venado, armadillo, coyote, aves.

## Población
Aproximadamente 120,000 habitantes (2020), siendo la cuarta ciudad más poblada del estado. Economía gira en torno al ingenio, la agricultura, el comercio y el turismo ecológico.

## Historia
La región estaba habitada por grupos huastecos. Durante la colonia se establecieron haciendas ganaderas y cañeras. El despegue ocurrió en el siglo XX con la construcción del ingenio azucarero “Aaron Sáenz” (hoy Ingenio El Mante), que atrajo inversión y población. El ferrocarril y la carretera nacional contribuyeron a su crecimiento. En 1926 fue elevado a villa y en 1950 a ciudad.

## Economía
- **Agricultura:** caña de azúcar (principal), maíz, sorgo, frijol, cítricos.
- **Industria:** ingenio azucarero, empacadoras de cítricos, fábricas de alimentos.
- **Comercio y servicios:** centros comerciales, hoteles, restaurantes.
- **Turismo:** cascadas, balnearios, grutas y ecoturismo.

## Turismo
- **Cascada de Micos:** cascada de 15 m con pozas turquesas, ideal para nadar y rapel.
- **Laguna del Nacimiento:** manantial de agua cristalina.
- **Cañón del Novillo:** cañón con paredes de roca, cascada y senderismo.
- **Grutas de Quintero:** cavernas con formaciones calcáreas.
- **Presa San José:** pesca y paseos en lancha.
- **Parroquia de San Antonio de Padua:** iglesia principal.
- **Cerro de la Cruz:** mirador de la ciudad.
- **Balneario El Chorrito:** aguas termales.

## Gastronomía
Cecina enchilada, enchiladas huastecas, zacahuil (tamal gigante), tamales de elote, asado de boda, pescado frito, pan de caña. Dulces: calabaza, jamoncillos. Bebidas: atole de masa, café de olla.

## Cultura y Tradiciones
Feria del Azúcar (abril) con desfiles, juegos mecánicos, conciertos. Fiestas patronales de San Antonio de Padua (13 de junio). Día de Muertos con altares. Semana Santa con viacrucis en el Cerro de la Cruz. Música huapango huasteca y norteña. Artesanías: bordados huastecos, cestería, talabartería.

## Educación
CBTA 97 (agropecuario), COBAT, CETIS, CONALEP, campus de la UAT.

## Infraestructura
Hospital general, clínicas del IMSS e ISSSTE. Carreteras pavimentadas.

## Personajes Ilustres
- Don Aarón Sáenz (1891-1983): impulsor del ingenio azucarero.
- General Pedro José Méndez (1795-1866): héroe tamaulipeco.
- Profesor Juan López (1920-2000): educador local.

## Datos Curiosos
- La Cascada de Micos es uno de los balnearios más famosos de Tamaulipas.
- El zacahuil puede pesar hasta 30 kg.
- El ingenio produce azúcar de alta calidad.
- En la laguna del Nacimiento hay tilapias gigantes.
- El Cañón del Novillo es ideal para rappel.
''',
  imagenAsset: 'assets/images/el_mante.jpg',
  imagenes: [
    'assets/fotos/el mante.png',
    'assets/fotos/elmante1.jpg',
    'assets/fotos/ciudad-mante-tamaulipas.jpg'
  ],
  poblacion: '120,000 hab.',
  superficie: '1,600 km²',
  gentilicio: 'Mantense',
  monumentos3D: [
    Monumento(
      nombre: 'Monumento a Juan Escales',
      descripcion: 'Escultura en la entrada de la ciudad.',
      rutaModelo: 'assets/models/Mante.glb',
      escala: 1.0,
    ),
  ],
  imagenesGastronomia: [],
  imagenesTurismo: [],
);

final List<Map<String, dynamic>> lugaresElMante = [
  {'nombre': 'Cascada de Micos', 'descripcion': 'Cascada y pozas de agua turquesa.', 'lat': 22.8167, 'lng': -98.9333},
  {'nombre': 'Laguna del Nacimiento', 'descripcion': 'Manantial de agua cristalina.', 'lat': 22.8000, 'lng': -98.9667},
  {'nombre': 'Cañón del Novillo', 'descripcion': 'Cañón con cascada y senderismo.', 'lat': 22.7833, 'lng': -99.0000},
  {'nombre': 'Grutas de Quintero', 'descripcion': 'Cuevas con estalactitas.', 'lat': 22.7600, 'lng': -98.9000},
];