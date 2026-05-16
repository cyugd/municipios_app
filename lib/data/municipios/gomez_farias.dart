import '../../models/municipio.dart';
import '../../models/monumento.dart';

final gomez_farias = Municipio(
  id: 'gomez_farias',
  nombre: 'Gómez Farías',
  descripcionCorta: 'Corazón natural de Tamaulipas, con la Reserva de la Biosfera El Cielo.',
  descripcionLarga: '''
## Introducción
Gómez Farías es un municipio ubicado en el centro-sur de Tamaulipas, dentro de la Sierra Madre Oriental. Es conocido mundialmente por albergar la Reserva de la Biosfera “El Cielo”, un santuario de biodiversidad declarado Patrimonio de la Humanidad por la UNESCO. Sus paisajes de montaña, ríos cristalinos y cascadas lo convierten en un destino privilegiado para el ecoturismo y la aventura.

## Geografía
Se ubica en la región centro-sur de Tamaulipas, dentro de la Sierra Madre Oriental. Altitud de 200 a 2,300 metros. Clima variado: templado en las partes altas, cálido en los valles. Destacan el río Guayalejo, La Poza Azul y El Nacimiento del Río Frío. Vegetación de bosque de niebla, pino y encino. Fauna: jaguar, ocelote, mono aullador, quetzal, águila.

## Población
16,431 habitantes (2020), mayormente rural y joven.

## Historia
Fundado como Congregación de Joya de Indios el 19 de mayo de 1749 por José de Escandón. En 1869 recibió el nombre de Villa de Gómez Farías en honor a Valentín Gómez Farías. En 1985 se decretó la Reserva de la Biósfera “El Cielo” y en 1987 fue reconocida por la UNESCO.

## Economía
- **Agricultura:** maíz, frijol, sorgo, caña de azúcar.
- **Ganadería:** bovino, porcino, caprino.
- **Turismo:** ecoturismo, hospedaje rural, venta de artesanías.
- **Comercio local:** pequeños negocios.

## Turismo
- **Reserva de la Biosfera "El Cielo":** bosque de niebla, cascadas (El Salto, La Peñita), orquídeas, bromelias, senderismo, observación de aves, camping.
- **La Poza Azul:** poza de agua turquesa, ideal para nadar.
- **El Nacimiento del Río Frío:** manantial de aguas cristalinas.
- **La Bocatoma:** área de esparcimiento familiar.
- **Miradores naturales:** vistas de la sierra.
- **Museo Municipal y Centro Interpretativo Ecológico.**

## Gastronomía
Cabrito, discada, enchiladas tamaulipecas, tamales, gorditas, langostinos, pescado frito, café de olla, atole, champurrado.

## Cultura y Tradiciones
Fiestas de San Antonio de Padua (13 de junio) con procesiones y feria. Feria de la Poza Azul (Semana Santa o verano). Día de Muertos. Fiestas Patrias. Artesanías: tejidos de palma, bordados, productos de madera.

## Educación
Preescolar, primaria, secundaria, telebachillerato. Para estudios superiores, viajan a Ciudad Victoria.

## Infraestructura
Centro de salud y clínica rural. Caminos de terracería y carretera pavimentada.

## Personajes Ilustres
- Valentín Gómez Farías (1781-1858): político liberal, presidente de México.
- Don José María López (1900-1980): promotor de la conservación de El Cielo.
- Profesora Marta González (1950-2015): fundadora del centro ecológico.

## Datos Curiosos
- El Cielo es una de las reservas más importantes del mundo por su biodiversidad.
- Se pueden encontrar jaguares, ocelotes, monos aulladores y quetzales.
- La Poza Azul cambia de color según la luz solar.
- El municipio es un destino popular para científicos y naturalistas.
- Hay más de 200 especies de orquídeas en la reserva.
''',
  imagenAsset: 'assets/images/gomez_farias.jpg',
  imagenes: [
    'assets/fotos/gomez farias.png',
    'assets/fotos/gomez farias 1.jpg',
    'assets/fotos/gomezfarias2.jpg',
  ],
  poblacion: '16,431 hab.',
  superficie: '800 km²',
  gentilicio: 'Gomezfaríense',
  monumentos3D: [
    Monumento(
      nombre: 'Monumento a Gómez Farías',
      descripcion: 'Escultura en la plaza principal.',
      rutaModelo: 'assets/models/Gomez.glb',
      escala: 1.0,
    ),
  ],
  imagenesGastronomia: [],
  imagenesTurismo: [],
);

final List<Map<String, dynamic>> lugaresGomezFarias = [
  {'nombre': 'Reserva de la Biosfera El Cielo', 'descripcion': 'Bosque de niebla y cascadas.', 'lat': 23.0833, 'lng': -99.2000},
  {'nombre': 'La Poza Azul', 'descripcion': 'Poza de agua turquesa.', 'lat': 23.0667, 'lng': -99.2167},
  {'nombre': 'El Nacimiento del Río Frío', 'descripcion': 'Manantial de aguas cristalinas.', 'lat': 23.0500, 'lng': -99.2333},
  {'nombre': 'La Bocatoma', 'descripcion': 'Área recreativa familiar.', 'lat': 23.0600, 'lng': -99.2300},
];