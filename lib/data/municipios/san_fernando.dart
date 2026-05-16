import '../../models/municipio.dart';
import '../../models/monumento.dart';

final san_fernando = Municipio(
  id: 'san_fernando',
  nombre: 'San Fernando',
  descripcionCorta: 'Municipio con historia, tradición y playas vírgenes.',
  descripcionLarga: '''
## Introducción
San Fernando es un municipio del noreste de Tamaulipas, fundado en 1749. Es el municipio más extenso del estado, con una superficie de más de 6,800 km². Su historia está ligada a la colonización del Nuevo Santander, y cuenta con hermosas playas vírgenes como Playa Carbonera y una rica tradición pesquera y ganadera. Es un destino ideal para quienes buscan tranquilidad y contacto con la naturaleza.

## Geografía
Tiene una extensión de 6,847.45 km², siendo el más grande de Tamaulipas. Relieve mayormente plano (80%) y semiplano (20%). Clima semicálido subhúmedo con periodos secos. Vegetación de matorral, pastizales y manglares en la costa. Fauna: venado, coyote, aves migratorias.

## Población
En 2020 tenía 51,405 habitantes, con densidad baja. Población indígena y afrodescendiente minoritaria. Migración hacia Estados Unidos y ciudades grandes.

## Historia
Fundado el 19 de marzo de 1749 por José de Escandón como Villa de San Fernando de la Llave. Originalmente cerca de la Barra de Salinas, se trasladó por inundaciones. Durante la colonia, los franciscanos introdujeron educación y evangelización. San Fernando fue elevada a ciudad en 1980.

## Economía
- **Agricultura:** maíz, sorgo, frijol, algodón.
- **Ganadería:** bovino, caprino, ovino, porcino.
- **Pesca artesanal.**
- **Industria manufacturera** incipiente.
- **Turismo rural y costero.**

## Turismo
- **Playa Carbonera:** playa virgen para descanso y pesca.
- **Faro Punta de Piedra:** atractivo natural con vistas al mar.
- **Plaza Benito Juárez:** centro de convivencia.
- **Cascadas y lagunas** interiores.

## Gastronomía
Cabrito al pastor, carne asada norteña, camarón sanfernandense, pescado a la talla, asado de puerco, mariscos frescos.

## Cultura y Tradiciones
Fiestas patronales de San Fernando (30 de mayo). Feria regional. Día de Muertos. Música norteña y polka. Artesanías: talabartería, tejidos de palma.

## Educación
Escuelas básicas, secundarias, preparatorias. Casa de la Cultura con talleres de música y danza.

## Infraestructura
Centro de salud, clínicas del IMSS. Carretera pavimentada. Servicios básicos en cabecera.

## Personajes Ilustres
- Fundadores de la villa.
- Pescadores y ganaderos destacados.

## Datos Curiosos
- Es el municipio más extenso de Tamaulipas.
- Playa Carbonera es una playa virgen sin urbanizar.
- El faro Punta de Piedra es un ícono costero.
- La pesca de camarón es una actividad importante.
- La feria regional atrae visitantes de municipios vecinos.
''',
  imagenAsset: 'assets/images/san_fernando.jpg',
  imagenes: [
    'assets/fotos/San_fernando.png',
    'assets/fotos/San_Fernando_Centro,_Tamaulipas.jpg',
    'assets/fotos/san fernando.jpg',
  ],
  poblacion: '51,405 hab.',
  superficie: '6,847 km²',
  gentilicio: 'Sanfernandense',
  monumentos3D: [
    Monumento(
      nombre: 'Gazebo plaza principal',
      descripcion: 'Quiosco emblemático.',
      rutaModelo: 'assets/models/Sanfernando.glb',
      escala: 1.0,
    ),
  ],
  imagenesGastronomia: [],
  imagenesTurismo: [],
);

final List<Map<String, dynamic>> lugaresSanFernando = [
  {
    'nombre': 'Playa Carbonera',
    'descripcion': 'Playa virgen para descanso y pesca.',
    'lat': 24.8000,
    'lng': -97.9000,
  },
  {
    'nombre': 'Faro Punta de Piedra',
    'descripcion': 'Atractivo natural.',
    'lat': 24.8200,
    'lng': -97.8800,
  },
  {
    'nombre': 'Plaza Benito Juárez',
    'descripcion': 'Centro de convivencia.',
    'lat': 24.8500,
    'lng': -98.1500,
  },
];