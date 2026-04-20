import '../../models/municipio.dart';
import '../../models/monumento.dart';

final jaumave = Municipio(
  id: 'jaumave',
  nombre: 'Jaumave',
  descripcionCorta: 'Valle de tradición y producción citrícola.',
  descripcionLarga: '''
## Introducción
Jaumave es uno de los municipios más antiguos y emblemáticos del altiplano tamaulipeco. Su nombre proviene del vocablo indígena “Xaumave”, relacionado con grupos originarios que habitaron la región antes de la llegada de los españoles. Rodeado por montañas, valles agrícolas y parajes naturales, Jaumave fue un punto clave para pueblos indígenas, misioneros y colonizadores. Su identidad actual combina herencia indígena, tradición agrícola y costumbres arraigadas. Es conocido por su producción de cítricos, especialmente la naranja.

## Historia
Época prehispánica: habitado por grupos huastecos y jonaces dedicados a la agricultura y recolección. Época colonial: establecimiento de misiones y rutas en la región. Fundación oficial: 19 de mayo de 1747 por José de Escandón. Siglo XIX: desarrollo de haciendas y actividad agrícola. Siglo XX: modernización y fortalecimiento económico. Durante la Revolución Mexicana, hubo reparto de tierras.

## Geografía y Población
Jaumave se ubica en el suroeste de Tamaulipas, rodeado por la Sierra Madre Oriental. Su territorio incluye sierras, valles y zonas agrícolas. Altitud media: 350 a 400 metros. Temperatura media: entre 23°C y 25°C. Cuerpos de agua: río Purificación, manantial de San Vicente, arroyo Jaumave y presa San Lorencito. Vegetación: matorral, mezquite, palma y bosque en zonas altas.  
Población: aproximadamente 15,000 habitantes (2020), con baja densidad, mayoritariamente rural.

## Economía
- **Agricultura:** Cítricos (naranja, limón, toronja), maíz, sorgo, hortalizas.  
- **Ganadería:** Bovina, caprina, ovina.  
- **Comercio:** Venta de productos locales, miel, lácteos, artesanías.  
- **Industria pequeña:** Panaderías, talleres, empacadoras de cítricos.  
- **Turismo:** En crecimiento gracias a paisajes naturales.

## Cultura y Tradiciones
**Fiestas:** Patronales en honor a San Vicente (enero), con danzas tradicionales, ferias regionales, comida y música. Semana Santa, Día de Muertos.  
**Gastronomía:** Cabrito al pastor, enchiladas serranas, tamales de elote.  
**Artesanías:** Tejidos de palma, bordados.  
**Valores:** Respeto, solidaridad, unión familiar, hospitalidad, cuidado del entorno.

## Turismo y Atractivos
- **Río Purificación:** Paseos y pesca.  
- **Valle de Jaumave:** Paisajes agrícolas de cítricos.  
- **Ojo de Agua:** Manantial natural.  
- **Presa San Lorencito:** Pesca y camping.  
- **Manantial de San Vicente:** Agua cristalina.  
- **Parroquia de San Vicente:** Templo del siglo XVIII.  
- **Cerro del Calvario:** Mirador.

## Educación y Salud
Cuenta con escuelas de nivel básico y medio superior (COBAT). Para estudios superiores, los jóvenes viajan a Ciudad Victoria. En salud, un centro de salud y clínica del IMSS.

## Personajes Ilustres
- **San Vicente Ferrer:** Santo patrono.  
- **Don José López (1920-2000):** Promotor de la citricultura.  
- **Profesora María Hernández (1930-2015):** Fundadora de la escuela primaria.

## Datos Curiosos
- Jaumave es uno de los principales productores de cítricos de Tamaulipas.  
- El clima templado favorece la producción de naranja de alta calidad.  
- Las enchiladas serranas son un platillo emblemático.  
- El manantial de San Vicente es famoso por sus aguas.  
- La presa San Lorencito es ideal para la pesca.

## Perspectivas Futuras
Se busca fortalecer la producción citrícola, impulsar el ecoturismo y mejorar la infraestructura rural.
''',
  imagenAsset: 'assets/images/jaumave.jpg',
  imagenes: [
    'assets/fotos/jaumave.png',
    'assets/fotos/jaumave.jpeg',
    'assets/fotos/jaumave2.jpg',
  ],
  poblacion: '15,000 hab.',
  superficie: '1,500 km²',
  gentilicio: 'Jaumavense',

  monumentos3D: [
    Monumento(
      nombre: 'La madre jaumave',
      descripcion: 'Un monumento icónico de la ciudad de Jaumave.',
      rutaModelo: 'assets/models/Jaumave.glb',
      escala: 1.0,
    ),
  ],
);

final List<Map<String, dynamic>> lugaresJaumave = [
  {
    'nombre': 'Río Purificación',
    'descripcion': 'Paseos y pesca.',
    'lat': 23.4000,
    'lng': -99.3833,
  },
  {
    'nombre': 'Valle de Jaumave',
    'descripcion': 'Paisajes agrícolas de cítricos.',
    'lat': 23.4167,
    'lng': -99.4000,
  },
  {
    'nombre': 'Ojo de Agua',
    'descripcion': 'Manantial natural.',
    'lat': 23.4300,
    'lng': -99.3900,
  },
  {
    'nombre': 'Manantial de San Vicente',
    'descripcion': 'Agua cristalina.',
    'lat': 23.4200,
    'lng': -99.3800,
  },
];