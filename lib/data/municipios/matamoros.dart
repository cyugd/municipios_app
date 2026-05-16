import '../../models/municipio.dart';
import '../../models/monumento.dart';

final matamoros = Municipio(
  id: 'matamoros',
  nombre: 'Matamoros',
  descripcionCorta: 'Heroica ciudad fronteriza con gran importancia histórica e industrial.',
  descripcionLarga: '''
## Introducción
Heroica Matamoros es un municipio ubicado en el extremo noreste de Tamaulipas, en la frontera con Estados Unidos. Es una ciudad de gran importancia histórica, industrial y comercial, con una identidad forjada en la defensa de la soberanía nacional. Su cercanía con Brownsville, Texas, le otorga un dinamismo binacional único. Además, cuenta con la hermosa Playa Bagdad y una rica tradición cultural.

## Geografía
Localizada en la llanura costera del Golfo, a orillas del Río Bravo. Clima subtropical, veranos calurosos, inviernos suaves. Laguna Madre cercana.

## Población
Supera los 500,000 habitantes (2020), segunda ciudad más poblada de Tamaulipas. Mayoría dedicada al comercio, industria y servicios.

## Historia
Fundada en 1774 como Congregación de San Juan de los Esteros. En 1826 recibió el nombre de Matamoros en honor a Mariano Matamoros. Durante la Guerra México-Estados Unidos (1846-1848) fue ocupada, pero sus habitantes resistieron. En 1851 obtuvo el título de "Heroica, Invicta y Leal". En 1913 se realizó el primer reparto agrario del país.

## Economía
- **Industria maquiladora:** más de 100 plantas (automotriz, electrónica, textil).
- **Comercio exterior:** cruce fronterizo, zona libre.
- **Agricultura:** algodón, sorgo, maíz, frijol.
- **Ganadería:** bovina, porcina, caprina.
- **Pesca:** en la Laguna Madre.
- **Turismo:** Playa Bagdad, historia, compras.

## Turismo
- **Playa Bagdad:** playa extensa con palapas, restaurantes, pesca deportiva.
- **Catedral de Nuestra Señora del Refugio:** templo histórico.
- **Museo Casamata:** edificio que resguarda documentos históricos.
- **Puente Internacional Gateway:** conexión con Brownsville.
- **Plaza Hidalgo:** centro social.
- **Plaza de Toros Monumental.**
- **Laguna Madre:** pesca y avistamiento de aves.

## Gastronomía
Carne asada, gorditas rellenas, mariscos (mojarra, camarón), cortadillo, cabrito. Dulces: glorias, jamoncillos, pan de polvo.

## Cultura y Tradiciones
Fiestas Mexicanas (febrero-marzo) con desfiles binacionales. Feria Expo Matamoros (octubre). Día de la Virgen de Guadalupe (12 de diciembre). Semana Santa. Música norteña, banda, huapango. Artesanías: talabartería, bordados, trabajos en plata.

## Educación
UAT campus Matamoros, Instituto Tecnológico de Matamoros, universidades privadas.

## Infraestructura
Hospitales del IMSS, ISSSTE, clínicas particulares.

## Personajes Ilustres
- Mariano Matamoros (1770-1814): héroe de la Independencia.
- General Servando Canales (1795-1872): militar tamaulipeco.
- Profesor José López (1920-2000): educador.

## Datos Curiosos
- Matamoros fue el primer lugar en México donde se izó la bandera nacional el 2 de marzo de 1846.
- La Playa Bagdad fue el punto de desembarco de las tropas estadounidenses en 1846.
- El Museo Casamata fue un cuartel militar.
- La ciudad tiene un puente ferroviario internacional histórico.
- El carnaval de Matamoros es famoso en la región.
''',
  imagenAsset: 'assets/images/matamoros.jpg',
  imagenes: [
    'assets/fotos/Matamoros.png',
    'assets/fotos/matamoros.jpg',
    'assets/fotos/matamoros2.jpg'
  ],
  poblacion: '500,000 hab.',
  superficie: '4,000 km²',
  gentilicio: 'Matamorense',
  monumentos3D: [
    Monumento(
      nombre: 'Monumento Azteca y Antorcha liberal',
      descripcion: 'Monumento emblemático.',
      rutaModelo: 'assets/models/Matamoros.glb',
      escala: 1.0,
    ),
  ],
  imagenesGastronomia: [],
  imagenesTurismo: [],
);

final List<Map<String, dynamic>> lugaresMatamoros = [
  {'nombre': 'Playa Bagdad', 'descripcion': 'Principal playa.', 'lat': 25.9200, 'lng': -97.1500},
  {'nombre': 'Catedral de Nuestra Señora del Refugio', 'descripcion': 'Templo emblemático.', 'lat': 25.8794, 'lng': -97.5033},
  {'nombre': 'Museo Casamata', 'descripcion': 'Edificio histórico y museo.', 'lat': 25.8800, 'lng': -97.5020},
  {'nombre': 'Puente Internacional Gateway', 'descripcion': 'Cruce fronterizo.', 'lat': 25.8900, 'lng': -97.4800},
];