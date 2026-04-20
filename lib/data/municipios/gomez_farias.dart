import '../../models/municipio.dart';
import '../../models/monumento.dart';

final gomez_farias = Municipio(
  id: 'gomez_farias',
  nombre: 'Gómez Farías',
  descripcionCorta: 'Corazón natural de Tamaulipas, con la Reserva de la Biosfera El Cielo.',
  descripcionLarga:  '''
## Introducción
Gómez Farías es un municipio ubicado en el centro-sur de Tamaulipas, dentro de la Sierra Madre Oriental. Es conocido mundialmente por albergar la Reserva de la Biosfera “El Cielo”, un santuario de biodiversidad declarado Patrimonio de la Humanidad por la UNESCO. Sus paisajes de montaña, ríos cristalinos y cascadas lo convierten en un destino privilegiado para el ecoturismo y la aventura. La calidez de su gente y la conservación de tradiciones huastecas y rurales completan su atractivo. Es un lugar ideal para los amantes de la naturaleza.

## Historia
El municipio fue fundado como Congregación de Joya de Indios el 19 de mayo de 1749 por José de Escandón. En 1869 recibió el nombre de Villa de Gómez Farías en honor a Valentín Gómez Farías, médico y político liberal, presidente de México en varias ocasiones. Durante el siglo XIX, la villa fue testigo de conflictos como la Guerra de Reforma, la Intervención Francesa y la Revolución Mexicana. En el siglo XX, comenzó la construcción de carreteras, escuelas y servicios. En 1985 se decretó la Reserva de la Biósfera “El Cielo” y en 1987 fue reconocida por la UNESCO, posicionando a Gómez Farías como referente ecológico.

## Geografía y Población
Gómez Farías se ubica en la región centro-sur de Tamaulipas, dentro de la Sierra Madre Oriental. Su altitud va de los 200 a los 2,300 metros, generando diversos climas. Destacan ríos como el Guayalejo, sitios como La Poza Azul, El Nacimiento del Río Frío, y la zona boscosa de El Cielo.  
Población: 16,431 habitantes (2020), mayormente rural y joven, con familias que dependen del campo y el turismo.

## Economía
- **Agricultura:** Maíz, frijol, sorgo, caña de azúcar.  
- **Ganadería:** Bovino, porcino, caprino.  
- **Turismo:** Ecoturismo, hospedaje rural, venta de artesanías y alimentos típicos.  
- **Comercio local:** Pequeños negocios.

## Cultura y Tradiciones
**Fiestas:** San Antonio de Padua (13 de junio) con procesiones, ferias y eventos culturales; Feria de la Poza Azul (semana santa o verano); Día de Muertos; Fiestas Patrias.  
**Artesanías:** Tejidos de palma, bordados, productos de madera.  
**Gastronomía:** Cabrito, discada, enchiladas tamaulipecas, tamales, gorditas; langostinos, pescado frito; café de olla, atole, champurrado.  
**Valores:** Unidad familiar, solidaridad, respeto por la naturaleza.

## Turismo y Atractivos
- **Reserva de la Biosfera "El Cielo":** Bosque de niebla, cascadas (El Salto, La Peñita), orquídeas, bromelias, senderismo, observación de aves, camping.  
- **La Poza Azul:** Poza de agua turquesa, ideal para nadar.  
- **El Nacimiento del Río Frío:** Manantial de aguas cristalinas.  
- **La Bocatoma:** Área de esparcimiento familiar.  
- **Miradores naturales:** Vistas panorámicas de la sierra.  
- **Museo Municipal y Centro Interpretativo Ecológico.**  
- **Río Guayalejo:** Paseos y pesca.

## Educación y Salud
Cuenta con escuelas de nivel básico y medio superior (telebachillerato). Para estudios superiores, los jóvenes viajan a Ciudad Victoria. En salud, un centro de salud y clínica rural.

## Personajes Ilustres
- **Valentín Gómez Farías (1781-1858):** Político liberal, presidente de México.  
- **Don José María López (1900-1980):** Promotor de la conservación de El Cielo.  
- **Profesora Marta González (1950-2015):** Fundadora del centro ecológico.

## Datos Curiosos
- El Cielo es una de las reservas más importantes del mundo por su biodiversidad.  
- Se pueden encontrar jaguares, ocelotes, monos aulladores y quetzales.  
- La Poza Azul cambia de color según la luz solar.  
- El municipio es un destino popular para científicos y naturalistas.  
- Hay más de 200 especies de orquídeas en la reserva.

## Perspectivas Futuras
Se busca fortalecer el turismo sostenible, mejorar la infraestructura ecoturística y capacitar a los pobladores en conservación ambiental.
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
      nombre: 'Monumento a Gómez Farias',
      descripcion: 'Un monumento icónico de la ciudad de Gomez Farias.',
      rutaModelo: 'assets/models/Gomez.glb',
      escala: 1.0,
    ),
  ],
);

final List<Map<String, dynamic>> lugaresGomezFarias = [
  {
    'nombre': 'Reserva de la Biosfera El Cielo',
    'descripcion': 'Bosque de niebla y cascadas.',
    'lat': 23.0833,
    'lng': -99.2000,
  },
  {
    'nombre': 'La Poza Azul',
    'descripcion': 'Poza de agua turquesa.',
    'lat': 23.0667,
    'lng': -99.2167,
  },
  {
    'nombre': 'El Nacimiento del Río Frío',
    'descripcion': 'Manantial de aguas cristalinas.',
    'lat': 23.0500,
    'lng': -99.2333,
  },
  {
    'nombre': 'La Bocatoma',
    'descripcion': 'Área recreativa familiar.',
    'lat': 23.0600,
    'lng': -99.2300,
  },
];