import '../../models/municipio.dart';
import '../../models/monumento.dart';

final hidalgo = Municipio(
  id: 'hidalgo',
  nombre: 'Hidalgo',
  descripcionCorta: 'Tradición histórica y vida rural en el centro del estado.',
  descripcionLarga:  '''
## Introducción
Hidalgo es un municipio ubicado al centro-norte de Tamaulipas, en una zona donde la Sierra Madre Oriental desciende hacia los valles y planicies. Su nombre honra al Padre de la Patria, Miguel Hidalgo y Costilla, y forma parte de las primeras villas fundadas durante el proceso de colonización encabezado por José de Escandón. Rodeado por sierras, ríos y tierras fértiles, Hidalgo ha sido testigo del paso de pueblos originarios, misiones religiosas, asentamientos coloniales y movimientos sociales que marcaron el desarrollo del estado.

## Historia
Época prehispánica: territorio habitado por grupos indígenas de influencia huasteca, dedicados a la caza, pesca y agricultura en zonas cercanas al río Purificación. Época colonial: durante el siglo XVIII se establecieron misiones y rutas de conexión entre la Sierra Madre y las poblaciones del Nuevo Santander. Fundación oficial: la Villa de Hidalgo fue fundada el 14 de mayo de 1752 por José de Escandón. Siglo XIX: participación en movimientos nacionales y desarrollo ganadero. Siglo XX: modernización y fortalecimiento agrícola. La Revolución Mexicana dejó ejidos.

## Geografía y Población
Hidalgo se localiza al centro-norte del estado de Tamaulipas, en una zona donde la Sierra Madre Oriental desciende hacia los valles y planicies. Su territorio combina sierras, lomeríos y zonas fértiles. Altitud media: 250 a 300 metros. Temperatura media anual: 24°C. Cuerpos de agua: río Purificación, río San Antonio, presa La Escondida y manantial El Chorrito. Vegetación: matorral, pastizales, mezquite, huizache y zonas boscosas en áreas altas.  
Población: aproximadamente 22,000 habitantes (2020), mayoritariamente rural.

## Economía
- **Agricultura:** Maíz, sorgo, frijol, cítricos, hortalizas.  
- **Ganadería:** Bovina, caprina, ovina.  
- **Comercio:** Venta de productos locales, alimentos y artesanías.  
- **Industria pequeña:** Talleres, panaderías, carpinterías.  
- **Turismo:** En crecimiento gracias a espacios naturales y culturales.

## Cultura y Tradiciones
**Fiestas:** Fiesta de San José (19 de marzo) con celebraciones religiosas, danzas tradicionales, ferias regionales con comida, música y convivencia familiar. Día de Muertos y Semana Santa.  
**Gastronomía:** Asado de puerco, tamales de elote y rojos, gorditas rellenas.  
**Artesanías:** Talabartería, tejidos de palma, bordados.  
**Valores:** Respeto, solidaridad, unión familiar, hospitalidad, cuidado del entorno.

## Turismo y Atractivos
- **Río Purificación:** Paseos y pesca.  
- **Sierra Chiquita:** Senderismo y miradores.  
- **Parador El Tomaseño:** Área recreativa con albercas.  
- **Presa La Escondida:** Pesca y camping.  
- **Manantial El Chorrito:** Agua cristalina.  
- **Parroquia de San José:** Templo del siglo XVIII.  
- **Cerro de la Cruz:** Mirador.

## Educación y Salud
Cuenta con escuelas de nivel básico y medio superior (COBAT). Para estudios superiores, los jóvenes viajan a Ciudad Victoria. En salud, un centro de salud y clínica del IMSS.

## Personajes Ilustres
- **Miguel Hidalgo (1753-1811):** Padre de la Patria.  
- **Don José María López (1900-1980):** Promotor de la agricultura local.  
- **Profesora Elena García (1930-2015):** Fundadora de la biblioteca municipal.

## Datos Curiosos
- El río Purificación es conocido por sus pozas naturales.  
- La presa La Escondida es ideal para la pesca de mojarra.  
- En la sierra se pueden observar venados y águilas.  
- Los tamales de elote son típicos de la región.  
- El parador El Tomaseño es popular en Semana Santa.

## Perspectivas Futuras
Se busca fortalecer el turismo rural, mejorar la infraestructura y apoyar la producción de cítricos.
''',
  imagenAsset: 'assets/images/hidalgo.jpg',
  imagenes: [
    'assets/fotos/hidalgo.png',
    'assets/fotos/hidalgo1.jpeg',
    'assets/fotos/hidalgo2.jpeg',

  ],
  poblacion: '10,000 hab.',
  superficie: '300 km²',
  gentilicio: 'Hidalguense',

  monumentos3D: [
    Monumento(
      nombre: 'Virgen de la misericordia',
      descripcion: 'Un monumento icónico de la ciudad de Hidalgo.',
      rutaModelo: 'assets/models/Hidalgo.glb',
      escala: 1.0,
    ),
  ],
);

final List<Map<String, dynamic>> lugaresHidalgo = [
  {
    'nombre': 'Río Purificación',
    'descripcion': 'Paseos y pesca.',
    'lat': 24.2500,
    'lng': -99.4167,
  },
  {
    'nombre': 'Sierra Chiquita',
    'descripcion': 'Senderismo y miradores.',
    'lat': 24.2700,
    'lng': -99.4000,
  },
  {
    'nombre': 'Parador El Tomaseño',
    'descripcion': 'Área recreativa con albercas.',
    'lat': 24.2600,
    'lng': -99.4300,
  },
  {
    'nombre': 'Parroquia de San José',
    'descripcion': 'Templo del siglo XVIII.',
    'lat': 24.2400,
    'lng': -99.4200,
  },
];