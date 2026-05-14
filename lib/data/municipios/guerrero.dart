import '../../models/municipio.dart';
import '../../models/monumento.dart';

final guerrero = Municipio(
  id: 'guerrero',
  nombre: 'Guerrero',
  descripcionCorta: 'Historia sumergida y tradición fronteriza.',
  descripcionLarga:  '''
## Introducción
Guerrero es un municipio del norte de Tamaulipas, ubicado a orillas del Río Bravo. Su cabecera es Nueva Ciudad Guerrero, fundada después de que la antigua ciudad quedara sumergida por la construcción de la Presa Falcón. Es un lugar con una historia fascinante, donde las ruinas de Guerrero Viejo emergen cuando el nivel del agua baja. La pesca deportiva y el turismo histórico son sus principales atractivos. Es un destino único en México.

## Historia
El municipio fue fundado el 10 de octubre de 1750 por José de Escandón con el nombre de Villa de Revilla. En 1829 cambió su nombre a Guerrero en honor a Vicente Guerrero. Fue un importante punto comercial en el norte del estado. En 1952, la construcción de la Presa Falcón provocó la reubicación de la ciudad, quedando la antigua cabecera bajo las aguas. Nació así Nueva Ciudad Guerrero. Las ruinas de Guerrero Viejo son hoy un atractivo turístico que se pueden visitar cuando la presa baja su nivel.

## Geografía y Población
Se localiza en la parte norte de Tamaulipas, a orillas del Río Bravo, colindando con Nuevo Laredo, Mier y Nuevo León. El clima es seco cálido, con temperaturas extremas. La Presa Falcón es el principal cuerpo de agua.  
Población total: 3,852 habitantes (2020). Cabecera: Nueva Ciudad Guerrero.

## Economía
- **Ganadería:** Bovina, ocupa gran parte del territorio.  
- **Pesca:** Deportiva en la Presa Falcón (lobina, tilapia, bagre).  
- **Agricultura:** Maíz, sorgo, productos de temporal (menor escala).  
- **Turismo:** Histórico (ruinas) y deportivo.

## Cultura y Tradiciones
**Fiestas:** Día de la Candelaria (2 de febrero), Día de Muertos, aniversario de la presa.  
**Gastronomía:** Discada norteña, carne asada, tortillas de harina, frijoles charros, asado de puerco.  
**Artesanías:** Talabartería.

## Turismo y Atractivos
- **Ruinas de Guerrero Viejo:** Antigua ciudad sumergida que emerge en épocas de sequía; se pueden visitar en lancha o caminando.  
- **Presa Falcón:** Pesca deportiva, camping, paseos en lancha, ski acuático.  
- **Museo regional:** Piezas históricas de la antigua ciudad.  
- **Palacio Municipal:** Edificio moderno.  
- **Malecón de la presa:** Área recreativa.  
- **Iglesia de Nuestra Señora del Refugio (ruinas):** Símbolo de la antigua ciudad.  
- **Mirador de la presa:** Vistas panorámicas.

## Educación y Salud
Cuenta con preescolar, primaria, secundaria y bachillerato (COBAT). Para estudios superiores, los jóvenes viajan a Nuevo Laredo o Reynosa. En salud, un centro de salud y clínica del IMSS-Bienestar.

## Personajes Ilustres
- **Vicente Guerrero (1782-1831):** Héroe de la Independencia, da nombre al municipio.  
- **Don Francisco Pérez (1900-1970):** Pionero de la pesca deportiva en la presa.  
- **Profesora Rosa Martínez (1920-1990):** Fundadora de la escuela primaria.

## Datos Curiosos
- Las ruinas de Guerrero Viejo son un sitio único en México.  
- La presa Falcón fue inaugurada en 1954.  
- Cada año, cuando baja el nivel del agua, los visitantes pueden caminar por las calles de la antigua ciudad.  
- La pesca de lobina es muy popular.  
- El antiguo templo aún tiene su torre en pie.

## Perspectivas Futuras
Se busca promover el turismo histórico y ecológico, mejorar la infraestructura pesquera y fortalecer la economía local.
''',
  imagenAsset: 'assets/images/guerrero.jpg',
  imagenes: [
    'assets/fotos/gerrero.png',
    'assets/fotos/guerrero2.jpg',
    'assets/fotos/GUerreroViejo2.jpg',
  ],
  poblacion: '4,500 hab.',
  superficie: '900 km²',
  gentilicio: 'Guerrerense',

  monumentos3D: [
    Monumento(
      nombre: 'Cabeza de Lazaro Cardenaz',
      descripcion: 'Un monumento icónico de la ciudad de Guerrero.',
      rutaModelo: 'assets/models/Guerrero.glb',
      escala: 1.0,
    ),
  ],
);


final List<Map<String, dynamic>> lugaresGuerrero = [
  {
    'nombre': 'Ruinas de Guerrero Viejo',
    'descripcion': 'Antigua ciudad sumergida.',
    'lat': 26.6000,
    'lng': -99.2000,
  },
  {
    'nombre': 'Presa Falcón',
    'descripcion': 'Pesca deportiva y paseos en lancha.',
    'lat': 26.5500,
    'lng': -99.2500,
  },
  {
    'nombre': 'Museo regional',
    'descripcion': 'Historia de la antigua ciudad.',
    'lat': 26.4000,
    'lng': -99.0167,
  },
  {
    'nombre': 'Malecón',
    'descripcion': 'Área recreativa frente a la presa.',
    'lat': 26.4050,
    'lng': -99.0200,
  },
];