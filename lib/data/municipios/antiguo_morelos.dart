import '../../models/municipio.dart';
import '../../models/monumento.dart';

final antiguo_morelos = Municipio(
  id: 'antiguo_morelos',
  nombre: 'Antiguo Morelos',
  descripcionCorta: 'Municipio con raíces huastecas y tradición rural en el sur de Tamaulipas.',
  descripcionLarga: '''
## Introducción
Antiguo Morelos es un municipio del sur de Tamaulipas, en la región de la Huasteca. Su cabecera es la Villa de Antiguo Morelos, fundada sobre un antiguo asentamiento huasteco llamado Tampemol. Se caracteriza por su ambiente rural, sus tradiciones indígenas y mestizas, y su cercanía a la Sierra Madre Oriental. La caña de azúcar y los cítricos son la base de su economía, y el turismo rural está en desarrollo. Es un lugar ideal para quienes buscan tranquilidad y contacto con la naturaleza.

## Geografía
Se ubica en el sur de Tamaulipas, colindando con Ocampo, El Mante, Nuevo Morelos y San Luis Potosí. Extensión de 561.30 km², altitud de 178 msnm. Relieve con lomeríos y zonas de la Sierra Madre Oriental. Clima semicálido húmedo con lluvias en verano. Vegetación de encino y chaca. Fauna: venado cola blanca, coyote, armadillo, conejo y diversas aves.

## Población
8,850 habitantes (2020). Población joven (edad promedio 27 años). Alrededor de 60 personas hablan lenguas indígenas como náhuatl y tenek. La migración hacia otras ciudades es frecuente.

## Historia
Antiguo Morelos tiene su origen en un asentamiento huasteco llamado Tampemol. Su fundación formal fue en 1751. En 1827 recibió el nombre de Villa Morelos en honor a José María Morelos y Pavón. Durante el Porfiriato tuvo auge económico gracias a la agricultura, pero en la Revolución Mexicana fue atacado y quedó parcialmente abandonado. Se repobló en 1920.

## Economía
- **Agricultura:** caña de azúcar (principal cultivo, destinada al Ingenio El Mante), maíz, sorgo, frijol, cítricos.
- **Ganadería:** bovina, porcina, caprina, aves, producción de miel.
- **Comercio:** pequeños negocios, tiendas de abarrotes.
- **Turismo:** rural y ecológico, con visitas a grutas, presas y templos.

## Turismo
- **Templo de San José:** construcción del siglo XVIII, estilo barroco.
- **Presa El Oyul:** pesca de mojarra, paseos en lancha, camping.
- **Cerro La Peña:** senderismo y vistas panorámicas.
- **Grutas del Ejido Praxedis Guerrero:** formaciones calcáreas aún poco exploradas.
- **Museo local:** piezas prehispánicas y de la Revolución.
- **Plaza Principal:** jardín con kiosco rodeado de edificios históricos.

## Gastronomía
Cecina, machaca con huevo, cabrito, mole, gorditas, tamales, carnitas, barbacoa, capirotada, empanadas y dulce de calabaza. Café de olla y atole.

## Cultura y Tradiciones
Las fiestas patronales de San José se celebran del 18 al 31 de marzo con procesiones, jaripeos, bailes, danza de Matlachines. El Día de Muertos se colocan altares y se visitan los cementerios. En Semana Santa se realiza el viacrucis. Las artesanías incluyen tejidos de palma, bordados, cestería y talabartería. La música huapango y norteña son parte de las celebraciones.

## Educación
El municipio cuenta con escuelas de nivel básico, una secundaria técnica y telebachillerato. Para educación superior, los jóvenes se trasladan a El Mante o Ciudad Victoria.

## Infraestructura
Hay un centro de salud rural y consultorios particulares. Los caminos rurales son de terracería y hay servicio de autobuses foráneos.

## Personajes Ilustres
- General Mariano Sánchez (1880-1940): revolucionario que participó en la toma de El Mante.
- Profesor Juan García (1920-1995): fundador de la primera escuela secundaria.
- Don Pedro Hernández (1900-1980): promotor de la agricultura de caña.

## Datos Curiosos
- El nombre "Tampemol" significa "lugar de búhos" en huasteco.
- La Presa El Oyul es popular para la pesca de mojarra tilapia.
- En la fiesta de San José, se realiza la "bajada del santo" con andas adornadas.
- El municipio tiene una pequeña zona arqueológica con petrograbados.
- La caña de azúcar se transporta en burros todavía en algunas rancherías.
''',
  imagenAsset: 'assets/images/antiguo_morelos.jpg',
  imagenes: [
    'assets/fotos/antiguo morelos.png',
    'assets/fotos/Antiguo-Morelos-1.jpg',
    'assets/fotos/Antiguo-Morelos-2.jpg'
  ],
  poblacion: '8,850 hab.',
  superficie: '561.30 km²',
  gentilicio: 'Antiguomorelense',
  monumentos3D: [
    Monumento(
      nombre: 'Monumento a la Patria',
      descripcion: 'Monumento icónico de Antiguo Morelos.',
      rutaModelo: 'assets/models/Antiguomorelos.glb',
      escala: 1.0,
    ),
  ],
  imagenesGastronomia: [],
  imagenesTurismo: [],
);

final List<Map<String, dynamic>> lugaresAntiguoMorelos = [
  {'nombre': 'Templo de San José', 'descripcion': 'Iglesia principal del siglo XVIII.', 'lat': 22.5000, 'lng': -99.2000},
  {'nombre': 'Presa El Oyul', 'descripcion': 'Pesca y paseos familiares.', 'lat': 22.4800, 'lng': -99.2200},
  {'nombre': 'Cerro La Peña', 'descripcion': 'Senderismo y vistas.', 'lat': 22.5200, 'lng': -99.1800},
  {'nombre': 'Grutas de Praxedis Guerrero', 'descripcion': 'Cavernas poco exploradas.', 'lat': 22.4700, 'lng': -99.2500},
];