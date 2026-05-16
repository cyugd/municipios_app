import '../../models/municipio.dart';
import '../../models/monumento.dart';

final cruillas = Municipio(
  id: 'cruillas',
  nombre: 'Cruillas',
  descripcionCorta: 'Tierra de historia, tradición y raíces rurales en el centro-norte de Tamaulipas.',
  descripcionLarga: '''
## Introducción
Cruillas es un municipio pequeño pero lleno de historia y tradición, ubicado en el centro-norte de Tamaulipas. Fundado en 1751, su identidad está profundamente ligada a la vida rural, la agricultura y la ganadería. Sus habitantes mantienen un estilo de vida tranquilo, basado en valores comunitarios, festividades religiosas y costumbres que han pasado de generación en generación. Es un lugar ideal para quienes buscan paz y contacto con la naturaleza.

## Geografía
Cruillas se localiza en la región centro-norte de Tamaulipas, dentro de una zona de llanuras y lomeríos bajos. Su clima es semiseco cálido, con temperaturas que oscilan entre 10°C y 38°C. La vegetación predominante es el matorral espinoso, con mezquite, huizache y nopal. No cuenta con ríos permanentes, solo arroyos intermitentes. La fauna incluye venado cola blanca, coyote, liebre y armadillo.

## Población
Aproximadamente 1,800 habitantes (2020), distribuidos en la cabecera y pequeñas comunidades rurales. La migración hacia ciudades más grandes es frecuente, especialmente entre los jóvenes.

## Historia
Cruillas fue fundado el 3 de mayo de 1751 por el Capitán José de Escandón y Helguera, como parte de la colonización del Nuevo Santander. Su nombre honra al Duque de Cruillas, virrey de Nueva España. Durante la época colonial, fue un punto de apoyo para la ganadería y la agricultura. En la Revolución Mexicana, la región fue escenario de reparto de tierras y formación de ejidos.

## Economía
- **Agricultura:** maíz, sorgo, frijol (temporal).
- **Ganadería:** bovina, caprina, ovina. Producción de cabrito y queso.
- **Comercio local:** pequeñas tiendas de abarrotes y servicios básicos.
- **Remesas:** importante apoyo de familiares en Estados Unidos.

## Turismo
- **Plaza Principal:** Jardín con kiosco y bancas.
- **Parroquia de la Virgen de Guadalupe:** Templo sencillo del siglo XIX.
- **Paisajes rurales:** campos de cultivo y pastizales para caminatas.
- **Presa de Cruillas:** pesca de mojarra.
- **Rutas de cabalgata:** recorridos por el campo.

## Gastronomía
Discada norteña, carne asada, tamales, asado de puerco, queso fresco y crema. Dulces: jamoncillos, conservas.

## Cultura y Tradiciones
Fiestas patronales en honor a la Virgen de Guadalupe (12 de diciembre) y San Isidro Labrador (15 de mayo), con procesiones, jaripeos, bailes y juegos pirotécnicos. Aniversario de la fundación. Música norteña y banda. Artesanías: tejidos de palma, talabartería.

## Educación
Preescolar, primaria, telesecundaria y telebachillerato. Para estudios superiores, los jóvenes se trasladan a Ciudad Victoria o Reynosa.

## Infraestructura
Centro de salud rural. Caminos de terracería. Servicios básicos en la cabecera.

## Personajes Ilustres
- Don José María González (1850-1920): fundador de la primera escuela.
- Profesora María López (1900-1980): promotora de la cultura local.

## Datos Curiosos
- El nombre Cruillas proviene de un título nobiliario español.
- La discada es el platillo típico de las fiestas.
- En la plaza principal aún se conserva un árbol centenario.
- El municipio tiene una pequeña zona de manantiales.
- Las cabalgatas son tradición cada 12 de diciembre.
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
      descripcion: 'Templo dedicado a la Virgen de Guadalupe.',
      rutaModelo: 'assets/models/Cruilla.glb',
      escala: 1.0,
    ),
  ],
  imagenesGastronomia: [],
  imagenesTurismo: [],
);

final List<Map<String, dynamic>> lugaresCruillas = [
  {'nombre': 'Plaza Principal', 'descripcion': 'Centro de convivencia social.', 'lat': 24.4500, 'lng': -98.6667},
  {'nombre': 'Parroquia de la Virgen de Guadalupe', 'descripcion': 'Templo principal.', 'lat': 24.4490, 'lng': -98.6670},
  {'nombre': 'Áreas rurales', 'descripcion': 'Paisajes agrícolas y ganaderos.', 'lat': 24.4600, 'lng': -98.6600},
];