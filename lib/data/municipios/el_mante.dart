import '../../models/municipio.dart';
import '../../models/monumento.dart';

final el_mante = Municipio(
  id: 'el_mante',
  nombre: 'El Mante',
  descripcionCorta: 'Tradición cañera y riqueza agrícola en el sur de Tamaulipas.',
  descripcionLarga: '''
## Introducción
El Mante es un municipio ubicado en la región sur del estado de Tamaulipas, dentro de la fértil región huasteca. Es conocido como la “Capital de la Caña de Azúcar” por su enorme producción azucarera, la cual ha moldeado su economía, cultura y paisaje. Rodeado por el río Mante y la Sierra Madre Oriental, este municipio combina la tradición agrícola con bellezas naturales como cascadas, lagunas y grutas. Su gente, cálida y trabajadora, conserva vivas las tradiciones huastecas, el huapango y una gastronomía única. Es un destino imperdible para los amantes de la naturaleza.

## Historia
La historia de El Mante se remonta a la época prehispánica, cuando la región estaba habitada por grupos huastecos que aprovechaban los fértiles valles y el río Guayalejo. Durante la colonia, se establecieron haciendas ganaderas y cañeras. Fue en el siglo XX cuando el municipio despegó gracias a la construcción del ingenio azucarero “Aaron Sáenz” (hoy Ingenio El Mante), que atrajo inversión y población.  
El ferrocarril y la carretera nacional contribuyeron a su crecimiento. Durante la Revolución Mexicana, la región fue escenario de paso de tropas y reparto de tierras. En 1926, El Mante fue elevado a villa y en 1950 a ciudad. Hoy es un importante centro comercial y de servicios del sur de Tamaulipas.

## Geografía y Población
Se localiza en el sur del estado, en el valle del río Guayalejo, rodeado de lomeríos y la Sierra Madre Oriental. Su altitud promedio es de 80 msnm. El clima es cálido subhúmedo, con temperatura media de 24°C y lluvias en verano.  
Población: aproximadamente 120,000 habitantes (2020), siendo la cuarta ciudad más poblada del estado. La economía gira en torno al ingenio, la agricultura (caña, maíz, sorgo, cítricos), el comercio y el turismo ecológico.

## Economía
- **Agricultura:** Caña de azúcar (principal cultivo), maíz, sorgo, frijol, cítricos.  
- **Industria:** Ingenio azucarero, empacadoras de cítricos, fábricas de alimentos.  
- **Comercio y servicios:** Centros comerciales, hoteles, restaurantes, servicios financieros.  
- **Turismo:** Cascadas, balnearios, grutas y ecoturismo.

## Cultura y Tradiciones
El Mante es cuna del huapango huasteco y de la música norteña. Las festividades más importantes son:  
- **Feria del Azúcar (abril):** Desfiles, juegos mecánicos, conciertos y exposiciones.  
- **Fiestas patronales (San Antonio de Padua, 13 de junio):** Procesiones, danzas y jaripeos.  
- **Día de Muertos:** Altares y catrinas.  
- **Semana Santa:** Representaciones del viacrucis en el Cerro de la Cruz.  
**Artesanías:** Bordados huastecos, cestería, talabartería.  
**Gastronomía:** Cecina enchilada, enchiladas huastecas, zacahuil (tamal gigante), tamales de elote, asado de boda, pescado frito del río; postres: pan de caña, dulce de calabaza, jamoncillos; bebidas: atole de masa, café de olla.  
**Leyendas:** Se dice que en la Cascada de Micos habita una sirena que protege las pozas.

## Turismo y Atractivos
- **Cascada de Micos:** Cascada de 15 m con pozas turquesas, ideal para nadar y rapel.  
- **Laguna del Nacimiento:** Manantial de agua cristalina rodeado de vegetación.  
- **Cañón del Novillo:** Cañón con paredes de roca, cascada y senderismo.  
- **Grutas de Quintero:** Cavernas con formaciones calcáreas.  
- **Presa San José:** Pesca y paseos en lancha.  
- **Parroquia de San Antonio de Padua:** Iglesia principal.  
- **Cerro de la Cruz:** Mirador de la ciudad.  
- **Balneario El Chorrito:** Aguas termales.

## Educación y Salud
Cuenta con el CBTA 97 (agropecuario), COBAT, CETIS, CONALEP, y campus de la UAT. En salud, hospital general, clínicas del IMSS e ISSSTE.

## Personajes Ilustres
- **Don Aarón Sáenz (1891-1983):** Impulsor del ingenio azucarero.  
- **General Pedro José Méndez (1795-1866):** Héroe tamaulipeco.  
- **Profesor Juan López (1920-2000):** Educador local.

## Datos Curiosos
- La Cascada de Micos es uno de los balnearios más famosos de Tamaulipas.  
- El zacahuil es un tamal gigante que puede pesar hasta 30 kg.  
- El ingenio produce azúcar de alta calidad.  
- En la laguna del Nacimiento hay tilapias gigantes.  
- El Cañón del Novillo es ideal para rappel.

## Perspectivas Futuras
Se busca fortalecer el turismo sostenible, mejorar la infraestructura de las cascadas y grutas, y diversificar la agricultura.
''',
  imagenAsset: 'assets/images/el_mante.jpg',
  imagenes: [
    'assets/fotos/el mante.png',
    'assets/fotos/elmante1.jpg',
    'assets/fotos/ciudad-mante-tamaulipas.jpg'
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


final List<Map<String, dynamic>> lugaresElMante = [
  {
    'nombre': 'Cascada de Micos',
    'descripcion': 'Cascada y pozas de agua turquesa.',
    'lat': 22.8167,
    'lng': -98.9333,
  },
  {
    'nombre': 'Laguna del Nacimiento',
    'descripcion': 'Manantial de agua cristalina.',
    'lat': 22.8000,
    'lng': -98.9667,
  },
  {
    'nombre': 'Cañón del Novillo',
    'descripcion': 'Cañón con cascada y senderismo.',
    'lat': 22.7833,
    'lng': -99.0000,
  },
  {
    'nombre': 'Grutas de Quintero',
    'descripcion': 'Cuevas con estalactitas.',
    'lat': 22.7600,
    'lng': -98.9000,
  },
];