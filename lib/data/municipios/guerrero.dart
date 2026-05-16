import '../../models/municipio.dart';
import '../../models/monumento.dart';

final guerrero = Municipio(
  id: 'guerrero',
  nombre: 'Guerrero',
  descripcionCorta: 'Historia sumergida y tradición fronteriza en el norte de Tamaulipas.',
  descripcionLarga: '''
## Introducción
Guerrero es un municipio del norte de Tamaulipas, ubicado a orillas del Río Bravo. Su cabecera es Nueva Ciudad Guerrero, fundada después de que la antigua ciudad quedara sumergida por la construcción de la Presa Falcón. Es un lugar con una historia fascinante, donde las ruinas de Guerrero Viejo emergen cuando el nivel del agua baja. La pesca deportiva y el turismo histórico son sus principales atractivos.

## Geografía
Se localiza en la parte norte de Tamaulipas, a orillas del Río Bravo, colindando con Nuevo Laredo, Mier y Nuevo León. El clima es seco cálido, con temperaturas extremas. La Presa Falcón es el principal cuerpo de agua.

## Población
Población total: 3,852 habitantes (2020). Cabecera: Nueva Ciudad Guerrero.

## Historia
El municipio fue fundado el 10 de octubre de 1750 por José de Escandón con el nombre de Villa de Revilla. En 1829 cambió su nombre a Guerrero en honor a Vicente Guerrero. Fue un importante punto comercial. En 1952, la construcción de la Presa Falcón provocó la reubicación de la ciudad, quedando la antigua cabecera bajo las aguas. Nació así Nueva Ciudad Guerrero.

## Economía
- **Ganadería:** bovina.
- **Pesca:** deportiva en la Presa Falcón (lobina, tilapia, bagre).
- **Agricultura:** maíz, sorgo (temporal).
- **Turismo:** histórico (ruinas) y deportivo.

## Turismo
- **Ruinas de Guerrero Viejo:** antigua ciudad sumergida que emerge en épocas de sequía.
- **Presa Falcón:** pesca deportiva, camping, paseos en lancha.
- **Museo regional:** piezas históricas.
- **Palacio Municipal:** edificio moderno.
- **Malecón de la presa:** área recreativa.
- **Iglesia de Nuestra Señora del Refugio (ruinas):** símbolo de la antigua ciudad.
- **Mirador de la presa:** vistas panorámicas.

## Gastronomía
Discada norteña, carne asada, tortillas de harina, frijoles charros, asado de puerco.

## Cultura y Tradiciones
Día de la Candelaria (2 de febrero). Día de Muertos. Aniversario de la presa. Artesanías: talabartería.

## Educación
Preescolar, primaria, secundaria, bachillerato (COBAT). Para estudios superiores, viajan a Nuevo Laredo o Reynosa.

## Infraestructura
Centro de salud y clínica del IMSS-Bienestar. Carretera pavimentada.

## Personajes Ilustres
- Vicente Guerrero (1782-1831): héroe de la Independencia.
- Don Francisco Pérez (1900-1970): pionero de la pesca deportiva.
- Profesora Rosa Martínez (1920-1990): fundadora de la escuela primaria.

## Datos Curiosos
- Las ruinas de Guerrero Viejo son un sitio único en México.
- La presa Falcón fue inaugurada en 1954.
- Cada año, cuando baja el nivel del agua, se puede caminar por las calles de la antigua ciudad.
- La pesca de lobina es muy popular.
- El antiguo templo aún tiene su torre en pie.
''',
  imagenAsset: 'assets/images/guerrero.jpg',
  imagenes: [
    'assets/fotos/gerrero.png',
    'assets/fotos/guerrero2.jpg',
    'assets/fotos/GUerreroViejo2.jpg',
  ],
  poblacion: '3,852 hab.',
  superficie: '900 km²',
  gentilicio: 'Guerrerense',
  monumentos3D: [],
  imagenesGastronomia: [],
  imagenesTurismo: [],
);

final List<Map<String, dynamic>> lugaresGuerrero = [
  {'nombre': 'Ruinas de Guerrero Viejo', 'descripcion': 'Antigua ciudad sumergida.', 'lat': 26.6000, 'lng': -99.2000},
  {'nombre': 'Presa Falcón', 'descripcion': 'Pesca deportiva y paseos.', 'lat': 26.5500, 'lng': -99.2500},
  {'nombre': 'Museo regional', 'descripcion': 'Historia de la antigua ciudad.', 'lat': 26.4000, 'lng': -99.0167},
  {'nombre': 'Malecón', 'descripcion': 'Área recreativa frente a la presa.', 'lat': 26.4050, 'lng': -99.0200},
];