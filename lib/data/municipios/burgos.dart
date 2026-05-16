import '../../models/municipio.dart';
import '../../models/monumento.dart';

final burgos = Municipio(
  id: 'burgos',
  nombre: 'Burgos',
  descripcionCorta: 'Tranquilidad y belleza natural en el noreste de Tamaulipas.',
  descripcionLarga: '''
## Introducción
Burgos es un municipio del noreste de Tamaulipas, fundado en 1749. Es un lugar tranquilo, con una fuerte identidad rural, donde la agricultura y la ganadería son el sustento de sus habitantes. Su arquitectura colonial, sus paisajes semiáridos y sus tradiciones norteñas lo convierten en un destino para quienes buscan escapar del bullicio y conectarse con la naturaleza. Conserva el encanto de los pueblos viejos, con calles empedradas, casas de adobe y una plaza principal que invita al descanso.

## Geografía
Se ubica en el norte de Tamaulipas, con una extensión de más de 1,900 km². Presenta un relieve variado con lomeríos y zonas serranas, influenciado por la Sierra de San Carlos. El clima es cálido y semiseco, con temperaturas promedio de 24 °C y lluvias moderadas. Cuenta con ríos como el Conchos y el Burgos, además de presas. La vegetación predominante es de matorral, mezquite, huizache y nopal.

## Población
Aproximadamente 4,256 habitantes (2020), distribuida en pequeñas comunidades rurales. La migración hacia ciudades más grandes es común, sobre todo de jóvenes. La cabecera municipal concentra los servicios básicos.

## Historia
Burgos fue fundado el 20 de febrero de 1749 por José de Escandón durante el proceso de colonización del Seno Mexicano. La villa se estableció como un punto estratégico para el control del territorio y la pacificación de grupos indígenas. Antes de la llegada de los españoles, la región estaba habitada por grupos nómadas como los tamaulipecos, huastecos y janambres. Durante la época colonial, Burgos se consolidó como una comunidad agrícola y ganadera. En la Revolución Mexicana, el municipio vivió el reparto de tierras y la creación de ejidos.

## Economía
- **Agricultura:** maíz, sorgo, frijol, trigo (temporal).
- **Ganadería:** bovinos, caprinos, ovinos. La producción de cabrito es importante.
- **Comercio local:** tiendas, talleres, servicios básicos.
- **Turismo y pesca** complementan. Las remesas también son importantes.

## Turismo
- **Iglesia de Nuestra Señora de Loreto:** Templo del siglo XVIII, estilo barroco sencillo.
- **Parque Recreativo Los Chorros:** Área natural con cascadas y pozas, ideal para picnic y baño.
- **Cerro de Burgos:** Elevación desde donde se observa todo el valle; hay un mirador.
- **Plaza Principal:** Jardín con kiosco, rodeada de edificios históricos.
- **Rutas de cabalgata:** Recorridos por el campo y la sierra.
- **Presa La Lajilla:** Pesca de lobina y mojarra.

## Gastronomía
Machaca con huevo, barbacoa, cecina, carne asada, tamales, caldos, cabrito al pastor. Dulces tradicionales: glorias, jamoncillos, pan de polvo.

## Cultura y Tradiciones
Fiestas patronales en honor a la Virgen de Loreto (septiembre). Aniversario de fundación (20 de febrero). Día de Muertos y Semana Santa. Música norteña. Artesanías: talabartería, tejidos de palma, bordados.

## Educación
Preescolar, primaria, telesecundaria y telebachillerato. Para estudios superiores, los jóvenes se trasladan a Reynosa o Nuevo Laredo.

## Infraestructura
Centro de salud rural y clínica del IMSS-Bienestar. Caminos rurales. Servicios de agua potable, electricidad y drenaje en la cabecera.

## Personajes Ilustres
- General Jesús García (1885-1930): revolucionario que combatió en la región.
- Profesora Martha López (1950-2015): fundadora de la biblioteca municipal.
- Don Francisco Martínez (1920-2000): promotor de la ganadería caprina.

## Datos Curiosos
- El nombre de Burgos proviene de la ciudad española de Burgos.
- Los Chorros se forman por manantiales subterráneos.
- En el Cerro de Burgos hay petrograbados indígenas.
- La producción de cabrito es famosa en la región.
- El municipio tiene una pequeña zona de cactus gigantes.
''',
  imagenAsset: 'assets/images/burgos.jpeg',
  imagenes: [
    'assets/fotos/burgos.png',
    'assets/fotos/bugos1.jpg',
    'assets/fotos/burgos2.jpeg'
  ],
  poblacion: '4,256 hab.',
  superficie: '1,900 km²',
  gentilicio: 'Burguense',
  monumentos3D: [
    Monumento(
      nombre: 'Monumento a la Virgen de Loreto',
      descripcion: 'Escultura en la plaza principal.',
      rutaModelo: 'assets/models/Burgos.glb',
      escala: 1.0,
    ),
  ],
  imagenesGastronomia: [],
  imagenesTurismo: [],
);

final List<Map<String, dynamic>> lugaresBurgos = [
  {'nombre': 'Iglesia de Nuestra Señora de Loreto', 'descripcion': 'Templo barroco del siglo XVIII.', 'lat': 27.0000, 'lng': -99.0000},
  {'nombre': 'Parque Recreativo Los Chorros', 'descripcion': 'Cascadas y pozas naturales.', 'lat': 26.9833, 'lng': -99.0167},
  {'nombre': 'Cerro de Burgos', 'descripcion': 'Mirador natural.', 'lat': 27.0100, 'lng': -98.9900},
];