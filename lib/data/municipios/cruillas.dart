import '../../models/municipio.dart';
import '../../models/monumento.dart';

final cruillas = Municipio(
  id: 'cruillas',
  nombre: 'Cruillas',
  descripcionCorta: 'Tierra de historia, tradición y raíces rurales.',
  descripcionLarga: '''
## Introducción
Cruillas es un municipio pequeño pero lleno de historia y tradición, ubicado en el centro-norte de Tamaulipas. Fundado en 1751, su identidad está profundamente ligada a la vida rural, la agricultura y la ganadería. Sus habitantes mantienen un estilo de vida tranquilo, basado en valores comunitarios, festividades religiosas y costumbres que han pasado de generación en generación. Es un lugar ideal para quienes buscan paz y contacto con la naturaleza.

## Historia
Cruillas fue fundado en 1751 y debe su nombre al Duque de Cruillas, virrey de Nueva España. Durante la época colonial, funcionó como punto de resguardo y apoyo agrícola. Su desarrollo estuvo ligado a haciendas, caminos comerciales y el trabajo del campo. En el siglo XIX, participó en la Guerra de Reforma y la Intervención Francesa. En la Revolución Mexicana, la región fue escenario de reparto de tierras y formación de ejidos. En el siglo XX, se mejoraron los caminos y servicios básicos. A pesar de los cambios, la comunidad ha conservado su esencia rural.

## Geografía y Población
Ubicado en la región centro-norte de Tamaulipas, Cruillas tiene un clima semiseco y terrenos amplios de llanura. La vegetación es de matorral, pastizal, mezquite y huizache. La fauna incluye venado, coyote, liebre, armadillo y aves.  
Población: aproximadamente 1,800 habitantes (2020), distribuida en la cabecera y pequeñas comunidades rurales. La migración hacia ciudades más grandes es frecuente.

## Economía
- **Ganadería:** Bovina, caprina, ovina. La producción de cabrito y queso de cabra es importante.  
- **Agricultura de temporal:** Sorgo, maíz, frijol.  
- **Comercio local:** Tiendas de abarrotes y servicios básicos.  
- **Remesas:** Apoyo de familiares en Estados Unidos.

## Cultura y Tradiciones
**Fiestas:** En honor a la Virgen de Guadalupe (12 de diciembre) y San Isidro Labrador (15 de mayo), con procesiones, misas, jaripeos, bailes y juegos pirotécnicos. También se celebra el aniversario de la fundación.  
**Gastronomía:** Discada norteña, carne asada, tamales, asado de puerco, queso fresco y crema. Dulces: jamoncillos, conservas.  
**Artesanías:** Tejidos de palma, talabartería.  
**Música:** Norteña y banda.

## Turismo y Atractivos
- **Plaza Principal:** Jardín con kiosco.  
- **Parroquia de la Virgen de Guadalupe:** Templo sencillo.  
- **Paisajes rurales:** Campos de cultivo y pastizales, ideales para caminatas y fotografía.  
- **Rutas de cabalgata:** Recorridos por el campo.  
- **Presa de Cruillas:** Pesca de mojarra.

## Educación y Salud
Cuenta con preescolar, primaria, telesecundaria y telebachillerato. Para estudios superiores, los jóvenes se trasladan a Ciudad Victoria o Reynosa. En salud, un centro de salud rural.

## Personajes Ilustres
- **Don José María González (1850-1920):** Fundador de la primera escuela.  
- **Profesora María López (1900-1980):** Promotora de la cultura local.

## Datos Curiosos
- El nombre Cruillas proviene de un título nobiliario español.  
- La discada es el platillo típico de las fiestas.  
- En la plaza principal aún se conserva un árbol centenario.  
- El municipio tiene una pequeña zona de manantiales.  
- Las cabalgatas son tradición cada 12 de diciembre.

## Perspectivas Futuras
Se busca promover el turismo rural, mejorar los caminos y apoyar la producción de queso artesanal.
''',

  imagenAsset: 'assets/images/cruillas.jpg',
  imagenes: [
    'assets/fotos/cruillas.png',
    'assets/fotos/cruilllas.jpg',
    'assets/fotos/cruillas.jpg'
  ],
  poblacion: '1,800 hab.',
  superficie: '1,200 km²',
  gentilicio: 'Cruillense',

  monumentos3D: [
    Monumento(
      nombre: 'Iglesia central',
      descripcion: 'Un monumento icónico de la ciudad de Cruillas.',
      rutaModelo: 'assets/models/Cruilla.glb',
      escala: 1.0,
    ),
  ],
);

final List<Map<String, dynamic>> lugaresCruillas = [
  {
    'nombre': 'Plaza Principal',
    'descripcion': 'Centro de convivencia social.',
    'lat': 24.4500,
    'lng': -98.6667,
  },
  {
    'nombre': 'Parroquia de la Virgen de Guadalupe',
    'descripcion': 'Templo principal.',
    'lat': 24.4490,
    'lng': -98.6670,
  },
  {
    'nombre': 'Áreas rurales',
    'descripcion': 'Paisajes agrícolas y ganaderos.',
    'lat': 24.4600,
    'lng': -98.6600,
  },
];