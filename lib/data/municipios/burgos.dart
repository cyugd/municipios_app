import '../../models/municipio.dart';
import '../../models/monumento.dart';

final burgos = Municipio(
  id: 'burgos',
  nombre: 'Burgos',
  descripcionCorta: 'Conocido por su tranquilidad y belleza natural.',
  descripcionLarga:  '''
## Introducción
Burgos es un municipio del noreste de Tamaulipas, fundado en 1749. Es un lugar tranquilo, con una fuerte identidad rural, donde la agricultura y la ganadería son el sustento de sus habitantes. Su arquitectura colonial, sus paisajes semiáridos y sus tradiciones norteñas lo convierten en un destino para quienes buscan escapar del bullicio y conectarse con la naturaleza. Conserva el encanto de los pueblos viejos, con calles empedradas, casas de adobe y una plaza principal que invita al descanso.

## Historia
Burgos fue fundado el 20 de febrero de 1749 por José de Escandón durante el proceso de colonización del Seno Mexicano. La villa se estableció como un punto estratégico para el control del territorio y la pacificación de grupos indígenas.  
Antes de la llegada de los españoles, la región estaba habitada por grupos nómadas como los tamaulipecos, huastecos y janambres. Durante la época colonial, Burgos se consolidó como una comunidad agrícola y ganadera.  
Tras la Independencia de México, pasó a formar parte del estado de Tamaulipas. A lo largo del siglo XIX y XX, el municipio tuvo un crecimiento lento, manteniendo su carácter rural. En la actualidad, conserva su patrimonio histórico y tradiciones. La Revolución Mexicana trajo el reparto de tierras y la creación de ejidos.

## Geografía y Población
Burgos se ubica en el norte de Tamaulipas, con una extensión territorial de más de 1,900 km². Presenta un relieve variado con lomeríos y zonas serranas, influenciado por la Sierra de San Carlos. El clima es cálido y semiseco, con temperaturas promedio de 24 °C y lluvias moderadas. Cuenta con ríos como el Conchos y el Burgos, además de presas. La vegetación predominante es de matorral, mezquite, huizache y nopal.  
Población: aproximadamente 4,256 habitantes, distribuida en pequeñas comunidades rurales. La migración hacia ciudades más grandes es común, sobre todo de jóvenes.

## Economía
- **Agricultura:** Maíz, sorgo, frijol, trigo (temporal).  
- **Ganadería:** Bovinos, caprinos, ovinos. La producción de cabrito es importante.  
- **Comercio local:** Tiendas, talleres, servicios básicos.  
- **Turismo y pesca** complementan. Las remesas también son importantes.

## Cultura y Tradiciones
La cultura está influenciada por tradiciones norteñas, religiosas y rurales. La música norteña (acordeón y bajo sexto) es esencial. Las festividades religiosas, especialmente en honor a la Virgen de Loreto (septiembre), son eventos importantes que reúnen a la comunidad con procesiones, jaripeos y bailes.  
**Gastronomía:** Machaca con huevo, barbacoa, cecina, carne asada, tamales, caldos, cabrito al pastor. Dulces tradicionales: glorias, jamoncillos, pan de polvo.  
**Artesanías:** Talabartería (cinturones, monturas), tejidos de palma, bordados.  
**Fiestas:** 20 de febrero (aniversario de fundación), Día de Muertos, Semana Santa, 16 de septiembre.

## Turismo y Atractivos
- **Iglesia de Nuestra Señora de Loreto:** Templo del siglo XVIII, de estilo barroco sencillo.  
- **Parque Recreativo Los Chorros:** Área natural con cascadas y pozas, ideal para picnic y baño.  
- **Cerro de Burgos:** Elevación desde donde se observa todo el valle; hay un mirador.  
- **Plaza Principal:** Jardín con kiosco, rodeada de edificios históricos.  
- **Rutas de cabalgata:** Recorridos por el campo y la sierra.  
- **Presa La Lajilla:** Pesca de lobina y mojarra.

## Educación y Salud
Cuenta con preescolar, primaria, telesecundaria y telebachillerato. Para estudios superiores, los jóvenes se trasladan a Reynosa o Nuevo Laredo. En salud, un centro de salud rural y una clínica del IMSS-Bienestar.

## Personajes Ilustres
- **General Jesús García (1885-1930):** Revolucionario que combatió en la región.  
- **Profesora Martha López (1950-2015):** Fundadora de la biblioteca municipal.  
- **Don Francisco Martínez (1920-2000):** Promotor de la ganadería caprina.

## Datos Curiosos
- El nombre de Burgos proviene de la ciudad española de Burgos.  
- Los Chorros se forman por manantiales subterráneos.  
- En el Cerro de Burgos hay petrograbados indígenas.  
- La producción de cabrito es famosa en la región.  
- El municipio tiene una pequeña zona de cactus gigantes.

## Perspectivas Futuras
Se busca promover el turismo rural, mejorar los caminos, apoyar la producción de queso de cabra y fomentar la artesanía.
''',
  imagenAsset: 'assets/images/burgos.jpg',
  imagenes: [
    'assets/fotos/burgos.png',
    'assets/fotos/bugos1.jpg',
    'assets/fotos/burgos2.jpeg'
  ],
  poblacion: '4,200 hab.',
  superficie: '1,200 km²',
  gentilicio: 'Burguense',

  monumentos3D: [
    Monumento(
      nombre: 'Burgos',
      descripcion: 'Monumento de Burgos',
      rutaModelo: 'assets/models/Burgos.glb',
      escala: 1.0,
    ),
  ],
);
final List<Map<String, dynamic>> lugaresBurgos = [
  {
    'nombre': 'Iglesia de Nuestra Señora de Loreto',
    'descripcion': 'Templo barroco del siglo XVIII.',
    'lat': 27.0000,
    'lng': -99.0000,
  },
  {
    'nombre': 'Parque Recreativo Los Chorros',
    'descripcion': 'Cascadas y pozas naturales.',
    'lat': 26.9833,
    'lng': -99.0167,
  },
  {
    'nombre': 'Cerro de Burgos',
    'descripcion': 'Mirador natural.',
    'lat': 27.0100,
    'lng': -98.9900,
  },
];