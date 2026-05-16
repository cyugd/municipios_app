import '../../models/municipio.dart';
import '../../models/monumento.dart';

final gonzalez = Municipio(
  id: 'gonzalez',
  nombre: 'González',
  descripcionCorta: 'Tradición agrícola y paisajes rurales en el sur de Tamaulipas.',
  descripcionLarga: '''
## Introducción
González es un municipio del sur de Tamaulipas, conocido por su riqueza agrícola y su ambiente tranquilo. Su cabecera, Villa de González, fue fundada en 1749 con el nombre de San Juan Bautista de Horcasitas. Es un lugar donde la vida transcurre entre cañaverales, cítricos y ganadería, y donde las tradiciones norteñas se mantienen vivas. El Cerro del Bernal de Horcasitas es uno de sus principales atractivos naturales.

## Geografía
Se localiza al sur de Tamaulipas, en una amplia llanura con influencia de la Sierra Madre Oriental. Relieve principalmente plano. Clima cálido subhúmedo, veranos intensos y lluvias en temporada. Cuenta con el río Guayalejo y varios arroyos.

## Población
Aproximadamente 41,470 habitantes (2020), con densidad baja, mayoritariamente rural.

## Historia
Fundado el 11 de mayo de 1749 por el capitán José Antonio de Oyervides, con el nombre de Villa de San Juan Bautista de Horcasitas. En 1901, la llegada del ferrocarril transformó la región. En 1927 adoptó el nombre de González en honor a la familia propietaria de los terrenos.

## Economía
- **Agricultura:** maíz, sorgo, frijol, caña de azúcar, cítricos.
- **Ganadería:** bovina, porcina, caprina.
- **Comercio local:** tiendas, talleres.
- **Industria:** incipiente.

## Turismo
- **Cerro del Bernal de Horcasitas:** elevación emblemática, senderismo y vistas.
- **Plaza Principal:** jardín con kiosco, edificios históricos.
- **Iglesia de San Juan Bautista:** templo del siglo XVIII.
- **Río Guayalejo:** pesca y paseos.
- **Áreas rurales:** recorridos por campos de cítricos y caña.
- **Presa de González:** pesca de mojarra.

## Gastronomía
Carne asada, frijoles charros, tamales, barbacoa, guisos tradicionales, productos lácteos, dulces artesanales.

## Cultura y Tradiciones
Fiestas patronales de San Juan Bautista (24 de junio) con procesiones, jaripeos, bailes. Fiestas Patrias, Día de Muertos. Música norteña. Artesanías: talabartería, tejidos de palma.

## Educación
Escuelas básicas, bachillerato (COBAT, CBTIS). Para estudios superiores, acuden a El Mante o Ciudad Victoria.

## Infraestructura
Hospital general, clínicas. Carreteras pavimentadas.

## Personajes Ilustres
- Familia González: propietaria de los terrenos.
- General José Antonio de Oyervides: fundador.
- Profesor Alfonso López (1920-2000): educador y poeta.

## Datos Curiosos
- El Cerro del Bernal de Horcasitas es un ícono de la región.
- La caña de azúcar es uno de los principales cultivos.
- El ferrocarril fue clave para el desarrollo.
- Se produce uno de los mejores cítricos de Tamaulipas.
- La iglesia fue construida con piedra de cantera.
''',
  imagenAsset: 'assets/images/gonzalez.jpg',
  imagenes: [
    'assets/fotos/gonzales.png',
    'assets/fotos/gonzales.jpg',
    'assets/fotos/gonzales2.jpg'
  ],
  poblacion: '41,470 hab.',
  superficie: '3,500 km²',
  gentilicio: 'Gonzaleño',
  monumentos3D: [],
  imagenesGastronomia: [],
  imagenesTurismo: [],
);

final List<Map<String, dynamic>> lugaresGonzalez = [
  {'nombre': 'Cerro del Bernal de Horcasitas', 'descripcion': 'Elevación natural, senderismo.', 'lat': 22.7500, 'lng': -98.7667},
  {'nombre': 'Plaza Principal', 'descripcion': 'Centro de convivencia social.', 'lat': 22.7480, 'lng': -98.7700},
  {'nombre': 'Iglesia de San Juan Bautista', 'descripcion': 'Templo del siglo XVIII.', 'lat': 22.7470, 'lng': -98.7710},
];