import '../../models/municipio.dart';
import '../../models/monumento.dart';

final casas = Municipio(
  id: 'casas',
  nombre: 'Casas',
  descripcionCorta: 'Historia colonial y tradiciones rurales en el centro de Tamaulipas.',
  descripcionLarga: '''
## Introducción
Casas es un municipio ubicado en el centro del estado de Tamaulipas, fundado en 1770 con el nombre de Croix. Su nombre actual honra a Juan Bautista de las Casas, insurgente de la Independencia. Es una comunidad rural que ha conservado sus tradiciones, su arquitectura colonial y su identidad cultural. Rodeado por la Sierra de Tamaulipas, ofrece paisajes naturales ideales para el descanso y el ecoturismo.

## Geografía
Casas se localiza en la parte media de Tamaulipas, con una geografía que combina zonas montañosas, semiplanas y llanuras. Su territorio forma parte de la Sierra de Tamaulipas, lo que le brinda paisajes naturales variados. Clima semiárido. Vegetación: matorral, pastizales, mezquite y huizache. Fauna: venado, coyote, armadillo, conejo, aves canoras.

## Población
Aproximadamente 4,143 habitantes (2020), densidad baja, carácter rural. La cabecera municipal cuenta con servicios básicos y la mayoría de las viviendas son de adobe o ladrillo.

## Historia
La historia de Casas se remonta al periodo de colonización del noreste de la Nueva España, cuando se establecieron poblaciones estratégicas para consolidar el dominio español. En 1770 se fundó con el nombre de Croix en honor al virrey Carlos Francisco de Croix. Posteriormente, en 1827, se le dio el nombre actual en reconocimiento a Juan Bautista de las Casas, quien participó en la lucha por la Independencia de México. Durante la Revolución Mexicana, hubo reparto de tierras y formación de ejidos.

## Economía
- **Agricultura:** maíz, sorgo, frijol.
- **Ganadería:** bovina y caprina. Producción de queso y carne seca.
- **Comercio local:** pequeños negocios que abastecen a la población.
- **Potencial:** turismo y producción forestal.

## Turismo
- **Parroquia de la Purísima Concepción:** Templo del siglo XIX, estilo neoclásico.
- **Centro histórico:** Plaza principal con kiosco y casas de adobe con techos de teja.
- **Sierra de Tamaulipas:** Senderismo, miradores, observación de aves.
- **Rutas rurales:** recorridos por ejidos y rancherías.
- **Presa de Casas:** pesca de mojarra y lobina.
- **Grutas de la Sierra:** pequeñas cuevas con formaciones calcáreas.

## Gastronomía
Carne asada, tamales, gorditas de maíz, asado de puerco, dulces tradicionales (calabaza, camote).

## Cultura y Tradiciones
Fiesta patronal de la Virgen de la Purísima Concepción (8 de diciembre) con procesiones, danzas, jaripeos, carreras de caballos. Aniversario de la fundación. Música norteña y banda. Artesanías: talabartería, tejidos de palma, bordados.

## Educación
Preescolar, primaria, telesecundaria y telebachillerato. Para estudios superiores, los jóvenes se trasladan a Ciudad Victoria.

## Infraestructura
Centro de salud rural. Caminos rurales.

## Personajes Ilustres
- Juan Bautista de las Casas (1760-1811): insurgente que dio nombre al municipio.
- Don José María González (1880-1950): promotor de la agricultura local.
- Profesora Ana María López (1930-2000): fundadora de la escuela primaria.

## Datos Curiosos
- El nombre original "Croix" se debe al virrey.
- En la sierra se han encontrado pinturas rupestres.
- Las casas de adobe son características del municipio.
- La fiesta de la Purísima Concepción atrae visitantes de la región.
- El municipio cuenta con una pequeña zona de manantiales.
''',
  imagenAsset: 'assets/images/casas.jpg',
  imagenes: [
    'assets/fotos/casas.png',
    'assets/fotos/casaa1.jpg',
    'assets/fotos/casas2.webp'
  ],
  poblacion: '4,143 hab.',
  superficie: '1,500 km²',
  gentilicio: 'Casense',
  monumentos3D: [
    Monumento(
      nombre: 'Gazebo de la plaza principal',
      descripcion: 'Quiosco emblemático.',
      rutaModelo: 'assets/models/Casas.glb',
      escala: 1.0,
    ),
  ],
  imagenesGastronomia: [],
  imagenesTurismo: [],
);

final List<Map<String, dynamic>> lugaresCasas = [
  {'nombre': 'Parroquia de la Purísima Concepción', 'descripcion': 'Templo del siglo XIX.', 'lat': 23.6667, 'lng': -98.7333},
  {'nombre': 'Plaza Principal', 'descripcion': 'Centro de convivencia social.', 'lat': 23.6650, 'lng': -98.7340},
  {'nombre': 'Sierra de Tamaulipas', 'descripcion': 'Área natural para senderismo.', 'lat': 23.7000, 'lng': -98.7000},
];