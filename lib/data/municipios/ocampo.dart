import '../../models/municipio.dart';
import '../../models/monumento.dart';

final ocampo = Municipio(
  id: 'ocampo',
  nombre: 'Ocampo',
  descripcionCorta: 'Región de historia minera y tradición, puerta a la Reserva El Cielo.',
  descripcionLarga: '''
## Introducción
Ocampo es un municipio ubicado en el suroeste de Tamaulipas, en la región centro-occidental. Su cabecera es Ciudad Ocampo, que originalmente se llamaba Villa de Santa Bárbara. Es una zona con paisajes variados, clima semiárido y una población que conserva tradiciones, costumbres y una fuerte identidad cultural. Ocampo es considerado un municipio estratégico por su ubicación geográfica, ya que conecta la Sierra Madre Oriental con las llanuras del Golfo.

## Geografía
Se ubica al suroeste de Tamaulipas, en una zona entre la Sierra Madre Oriental y las llanuras del Golfo. Extensión de 1,691.71 km², altitud 1,173 msnm. Su territorio presenta zonas planas y montañosas, con ríos y arroyos intermitentes. El clima es semiárido. Vegetación de matorral espinoso y bosque de pino-encino en zonas altas. Fauna: venado, coyote, armadillo, águila.

## Población
Según el censo 2020 tiene 13,190 habitantes. La población es mayoritariamente joven y el municipio presenta un carácter rural con baja densidad. Existe migración hacia ciudades grandes y Estados Unidos.

## Historia
Antes de la llegada de los españoles, la región estaba habitada por pueblos nómadas que dejaron pinturas rupestres. Fue fundada como Villa de Santa Bárbara in 1749 por José de Escandón. En 1869 cambió su nombre a Ocampo en honor a Melchor Ocampo. Durante la Revolución Mexicana vivió cambios con la creación de ejidos.

## Economía
- **Agricultura:** maíz, frijol, sorgo.
- **Ganadería:** bovinos, caprinos, aves.
- **Comercio:** negocios locales.
- **Turismo:** ecoturismo en la Reserva El Cielo.

## Turismo
- **Reserva de la Biosfera El Cielo:** bosque de niebla, biodiversidad única, senderismo.
- **Iglesia de Santa Bárbara:** templo histórico del siglo XVIII.
- **Mirador de la Sierra:** vista panorámica de la Sierra Madre Oriental.
- **Rutas ecoturísticas** hacia cascadas y cañones.

## Gastronomía
Cabrito al pastor, tamales de cerdo, asado de puerco, capirotada, buñuelos, atole de maíz.

## Cultura y Tradiciones
Fiesta patronal de Santa Bárbara (noviembre-diciembre). Feria del Maíz. Semana Santa. Danza de Matlachines, rodeos charros. Artesanías: tejidos de palma, bordados.

## Educación
Preescolares, primarias, secundarias, bachillerato (COBAT). Para educación superior, los jóvenes acuden a Ciudad Victoria.

## Infraestructura
Centro de salud. Carreteras pavimentadas y caminos rurales.

## Personajes Ilustres
- Melchor Ocampo (1814-1861): político liberal.
- Fundadores de la Villa de Santa Bárbara.

## Datos Curiosos
- La Reserva El Cielo es Patrimonio de la Humanidad (UNESCO).
- La antigua Villa de Santa Bárbara fue reubicada tras una inundación.
- Se producen dulces de leche y conservas.
- Hay pinturas rupestres en la sierra.
- Es un destino para científicos y naturalistas.
''',
  imagenAsset: 'assets/images/ocampo.jpg',
  imagenes: [
    'assets/fotos/Ocampo.png',
    'assets/fotos/ocampo1.jpg',
    'assets/fotos/ocampo2.jpg'
  ],
  poblacion: '13,190 hab.',
  superficie: '1,691 km²',
  gentilicio: 'Ocampense',
  monumentos3D: [
    Monumento(
      nombre: 'Muralla de entrada a Ocampo',
      descripcion: 'Portal de bienvenida al municipio.',
      rutaModelo: 'assets/models/Ocampo.glb',
      escala: 1.0,
    ),
  ],
  imagenesGeografia: [
    'assets/Ciudad_geografia/Ciudad Ocampo_geografia.png',
  ],
  imagenesGastronomia: [
    'assets/Ciudad_gastronomia/Ciudad Ocampo_gastronomia.png',
    'assets/Ciudad_gastronomia/Ciudad Ocampo_gastronomia2.png',
    'assets/Ciudad_gastronomia/Ciudad Ocampo_gastronomia3.png',
    'assets/Ciudad_gastronomia/Ciudad Ocampo_gastronomia4.png',
  ],
  imagenesTurismo: [
    'assets/Ciudad_Turismo/Ciudad Ocampo_turismo.png',
    'assets/Ciudad_Turismo/Ciudad Ocampo_turismo2.png',
  ],
  imagenesCultura: [
    'assets/Ciudad_Cultura/Ciudad Ocampo_cultura.png',
  ],
);

final List<Map<String, dynamic>> lugaresOcampo = [
  {
    'nombre': 'Reserva de la Biosfera El Cielo',
    'descripcion': 'Bosque de niebla y gran biodiversidad.',
    'lat': 23.0833,
    'lng': -99.2000,
  },
  {
    'nombre': 'Iglesia de Santa Bárbara',
    'descripcion': 'Templo histórico del siglo XVIII.',
    'lat': 22.9500,
    'lng': -99.3333,
  },
  {
    'nombre': 'Mirador de la Sierra',
    'descripcion': 'Vista panorámica de la Sierra Madre Oriental.',
    'lat': 22.9667,
    'lng': -99.3000,
  },
];
