import '../../models/municipio.dart';
import '../../models/monumento.dart';

final matamoros = Municipio(
  id: 'matamoros',
  nombre: 'Matamoros',
  descripcionCorta: 'Heroica ciudad fronteriza con gran importancia histórica e industrial.',
  descripcionLarga: '''
    ## Introducción
Heroica Matamoros es un municipio ubicado en el extremo noreste de Tamaulipas, en la frontera con Estados Unidos. Es una ciudad de gran importancia histórica, industrial y comercial, con una identidad forjada en la defensa de la soberanía nacional. Su cercanía con Brownsville, Texas, le otorga un dinamismo binacional único. Además, cuenta con la hermosa Playa Bagdad y una rica tradición cultural que combina lo mexicano y lo texano. Es un destino que ofrece historia, naturaleza y modernidad.

## Historia
Matamoros fue fundada en 1774 como Congregación de San Juan de los Esteros. En 1826, recibió su nombre actual en honor a Mariano Matamoros, héroe de la Independencia.
Durante la Guerra de Independencia y la Guerra México-Estados Unidos (1846-1848), la ciudad fue ocupada por tropas invasoras, pero sus habitantes resistieron. En 1851, defendió heroicamente la ciudad, obteniendo el título de “Heroica, Invicta y Leal”.
En 1913, se realizó el primer reparto agrario del país. En el siglo XX, el auge del algodón y luego de las maquiladoras transformaron su economía. Hoy es un importante centro industrial y comercial.

## Geografía y Población
Se localiza en la llanura costera del Golfo, a orillas del Río Bravo, que forma frontera con Estados Unidos. El clima es subtropical, con veranos calurosos e inviernos suaves.
Población: supera los 500,000 habitantes (2020), siendo la segunda ciudad más poblada de Tamaulipas. La mayoría se dedica al comercio, la industria y servicios.

## Economía
- **Industria maquiladora:** Más de 100 plantas de manufactura (automotriz, electrónica, textil).
- **Comercio exterior:** Cruce fronterizo de mercancías, zona libre.
- **Agricultura:** Algodón, sorgo, maíz, frijol.
- **Ganadería:** Bovina, porcina, caprina.
- **Pesca:** En la Laguna Madre.
- **Turismo:** Playa Bagdad, historia, compras.

## Cultura y Tradiciones
- **Fiestas Mexicanas (febrero-marzo):** Celebraciones binacionales con desfiles y eventos culturales.
- **Feria Expo Matamoros (octubre):** Ganadera, comercial y artesanal.
- **Día de la Virgen de Guadalupe (12 de diciembre):** Peregrinaciones y mañanitas.
- **Semana Santa:** Procesiones y viacrucis.
**Música:** Norteña, banda, huapango.
**Artesanías:** Talabartería, bordados, trabajos en plata.
**Gastronomía:** Carne asada, gorditas rellenas, mariscos (mojarra, camarón), cortadillo, cabrito; postres: glorias, jamoncillos, pan de polvo.
**Leyendas:** Se habla de túneles secretos en la ciudad vieja.

## Turismo y Atractivos
- **Playa Bagdad:** Playa extensa con palapas, restaurantes y pesca deportiva.
- **Catedral de Nuestra Señora del Refugio:** Templo histórico.
- **Museo Casamata:** Edificio que resguarda documentos históricos.
- **Puente Internacional Gateway:** Conexión con Brownsville.
- **Plaza Hidalgo:** Centro social.
- **Plaza de Toros Monumental.**
- **Laguna Madre:** Área natural para pesca y avistamiento de aves.
- **Parque Olímpico:** Deportes y recreación.

## Educación y Salud
Cuenta con la UAT campus Matamoros, Instituto Tecnológico de Matamoros, universidades privadas. En salud, hospitales del IMSS, ISSSTE y clínicas particulares.

## Personajes Ilustres
- **Mariano Matamoros (1770-1814):** Héroe de la Independencia.
- **General Servando Canales (1795-1872):** Militar tamaulipeco.
- **Profesor José López (1920-2000):** Educador local.

## Datos Curiosos
- Matamoros fue el primer lugar en México donde se izó la bandera nacional el 2 de marzo de 1846.
- La Playa Bagdad fue el punto de desembarco de las tropas estadounidenses en 1846.
- El Museo Casamata fue un cuartel militar.
- La ciudad tiene un puente ferroviario internacional histórico.
- El carnaval de Matamoros es famoso en la región.

## Perspectivas Futuras
Se busca fortalecer la industria maquiladora, mejorar la infraestructura turística y promover el turismo histórico.
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
      descripcion: 'Un monumento icónico de la ciudad de Matamoros.',
      rutaModelo: 'assets/models/Matamoros.glb',
      escala: 1.0,
    ),
  ],
);

final List<Map<String, dynamic>> lugaresMatamoros = [
  {
    'nombre': 'Playa Bagdad',
    'descripcion': 'Principal playa del municipio.',
    'lat': 25.9200,
    'lng': -97.1500,
  },
  {
    'nombre': 'Catedral de Nuestra Señora del Refugio',
    'descripcion': 'Templo emblemático.',
    'lat': 25.8794,
    'lng': -97.5033,
  },
  {
    'nombre': 'Museo Casamata',
    'descripcion': 'Edificio histórico y museo.',
    'lat': 25.8800,
    'lng': -97.5020,
  },
  {
    'nombre': 'Puente Internacional Gateway',
    'descripcion': 'Cruce fronterizo importante.',
    'lat': 25.8900,
    'lng': -97.4800,
  },
];