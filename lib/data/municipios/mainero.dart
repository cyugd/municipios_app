import '../../models/municipio.dart';
import '../../models/monumento.dart';

final mainero = Municipio(
  id: 'mainero',
  nombre: 'Mainero',
  descripcionCorta: 'Esencia rural del altiplano tamaulipeco.',
  descripcionLarga: '''
## Introducción
Mainero es un municipio pequeño del altiplano de Tamaulipas, ubicado en la región centro-norte del estado. Se caracteriza por su baja densidad poblacional, su vida tranquila y el fuerte sentido de comunidad entre sus habitantes. Su importancia radica en su historia, sus tradiciones y la forma en que su entorno ha influido en su desarrollo social y económico.

## Geografía
Territorio con lomeríos y relieve ondulado propio de la Sierra Madre Oriental. Clima semiseco y cálido, lluvias escasas en verano. Predominan matorrales y pastizales.

## Población
Aproximadamente 1,104 habitantes (2020), uno de los municipios menos poblados del estado. Predomina población adulta por migración juvenil.

## Historia
Fundado oficialmente el 1 de marzo de 1866 durante el gobierno de Santiago Vidaurri. Recibe su nombre en honor a Bernardo G. de Mainero. Durante el Porfiriato creció con base en agricultura y ganadería. En la Revolución Mexicana enfrentó inestabilidad.

## Economía
- **Agricultura de temporal:** maíz, frijol, sorgo.
- **Ganadería:** bovina, caprina (extensiva).
- **Comercio:** tiendas de abarrotes.

## Turismo
- **Plaza Principal:** jardín con kiosco.
- **Templo de Santa Rosalía:** iglesia sencilla.
- **Caminos rurales:** recorridos por el altiplano.
- **Miradores naturales:** vistas de la sierra.

## Gastronomía
Cabrito asado, carne seca con huevo, frijoles charros, tamales, tortillas de harina, café de olla.

## Cultura y Tradiciones
Fiestas de Santa Rosalía (septiembre). Día de la Independencia. Artesanías: talabartería, tejidos de palma.

## Educación
Preescolar, primaria, telesecundaria, telebachillerato. Para estudios superiores, viajan a Ciudad Victoria.

## Infraestructura
Centro de salud rural. Caminos rurales.

## Personajes Ilustres
- Bernardo G. de Mainero (1820-1880): político tamaulipeco.
- Don José López (1900-1980): promotor de la agricultura.
- Profesora María Hernández (1930-2010): fundadora de la escuela.

## Datos Curiosos
- Mainero es uno de los municipios más pequeños de Tamaulipas.
- La fiesta de Santa Rosalía atrae visitantes.
- El cabrito asado es el platillo típico.
- En la sierra se pueden observar venados.
- La plaza principal tiene un kiosco de hierro.
''',
  imagenAsset: 'assets/images/mainero.jpg',
  imagenes: [
    'assets/fotos/mainero.png',
    'assets/fotos/mainero.jpg',
    'assets/fotos/mainero2.jpg',
  ],
  poblacion: '1,104 hab.',
  superficie: '400 km²',
  gentilicio: 'Mainerenese',
  monumentos3D: [
    Monumento(
      nombre: 'Monumento a las madres',
      descripcion: 'Escultura en la plaza.',
      rutaModelo: 'assets/models/Mainero.glb',
      escala: 1.0,
    ),
  ],
  imagenesGastronomia: [],
  imagenesTurismo: [],
);

final List<Map<String, dynamic>> lugaresMainero = [
  {'nombre': 'Plaza Principal', 'descripcion': 'Centro social.', 'lat': 24.5000, 'lng': -99.6000},
  {'nombre': 'Templo de Santa Rosalía', 'descripcion': 'Iglesia principal.', 'lat': 24.4990, 'lng': -99.6010},
  {'nombre': 'Miradores naturales', 'descripcion': 'Vistas de la sierra.', 'lat': 24.5100, 'lng': -99.5900},
];