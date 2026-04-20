import '../../models/municipio.dart';
import '../../models/monumento.dart';

final mainero = Municipio(
  id: 'mainero',
  nombre: 'Mainero',
  descripcionCorta: 'Esencia rural del altiplano tamaulipeco.',
  descripcionLarga:   '''
## Introducción
Mainero es un municipio pequeño del altiplano de Tamaulipas, ubicado en la región centro-norte del estado. Se caracteriza por su baja densidad poblacional, su vida tranquila y el fuerte sentido de comunidad entre sus habitantes. Su importancia radica en su historia, sus tradiciones y la forma en que su entorno ha influido en su desarrollo social y económico. Es un lugar ideal para el descanso.

## Historia
Mainero fue fundado oficialmente el 1 de marzo de 1866 durante el gobierno de Santiago Vidaurri. Recibe su nombre en honor a Bernardo G. de Mainero. Durante el porfiriato creció con base en la agricultura y ganadería. En la Revolución Mexicana enfrentó inestabilidad económica, y en el siglo XX mejoró su infraestructura básica. Actualmente mantiene su identidad rural, aunque enfrenta retos como la migración.

## Geografía y Población
El territorio presenta lomeríos y relieve ondulado propio de la Sierra Madre Oriental. El clima es semiseco y cálido, con lluvias escasas en verano. Predominan matorrales y pastizales, adecuados para la ganadería.  
Población: aproximadamente 1,104 habitantes (2020), uno de los municipios menos poblados del estado. Predomina la población adulta debido a la migración de jóvenes.

## Economía
- **Agricultura de temporal:** Maíz, frijol, sorgo.  
- **Ganadería:** Bovina, caprina (extensiva).  
- **Comercio:** Tiendas de abarrotes, pequeños negocios.

## Cultura y Tradiciones
**Fiestas:** Día de la Independencia, fiestas patronales de Santa Rosalía (septiembre).  
**Gastronomía:** Cabrito asado, carne seca con huevo, frijoles charros, tamales, tortillas de harina; café de olla.  
**Artesanías:** Talabartería, tejidos de palma.  
**Valores:** Solidaridad, respeto, responsabilidad comunitaria, unión familiar.

## Turismo y Atractivos
- **Plaza Principal:** Jardín con kiosco.  
- **Templo de Santa Rosalía:** Iglesia sencilla.  
- **Caminos rurales:** Recorridos por el altiplano.  
- **Miradores naturales:** Vistas de la sierra.  
- **Áreas recreativas comunitarias.**

## Educación y Salud
Cuenta con preescolar, primaria, telesecundaria y telebachillerato. Para estudios superiores, los jóvenes viajan a Ciudad Victoria. En salud, un centro de salud rural.

## Personajes Ilustres
- **Bernardo G. de Mainero (1820-1880):** Político tamaulipeco.  
- **Don José López (1900-1980):** Promotor de la agricultura local.  
- **Profesora María Hernández (1930-2010):** Fundadora de la escuela.

## Datos Curiosos
- Mainero es uno de los municipios más pequeños de Tamaulipas.  
- La fiesta de Santa Rosalía atrae a visitantes de la región.  
- El cabrito asado es el platillo típico.  
- En la sierra se pueden observar venados.  
- La plaza principal tiene un kiosco de hierro.

## Perspectivas Futuras
Se busca mejorar la infraestructura, apoyar la ganadería y fomentar el turismo rural.
''',
  imagenAsset: 'assets/images/mainero.jpg',
  imagenes: [
    'assets/fotos/mainero.png',
    'assets/fotos/mainero.jpg',
    'assets/fotos/mainero2.jpg',

  ],
  poblacion: '2,000 hab.',
  superficie: '400 km²',
  gentilicio: 'Mainerenese',

  monumentos3D: [
    Monumento(
      nombre: 'Monumento a las madres',
      descripcion: 'Un monumento icónico de la ciudad de Mainero.',
      rutaModelo: 'assets/models/Mainero.glb',
      escala: 1.0,
    ),
  ],
);
final List<Map<String, dynamic>> lugaresMainero = [
  {
    'nombre': 'Plaza Principal',
    'descripcion': 'Centro social.',
    'lat': 24.5000,
    'lng': -99.6000,
  },
  {
    'nombre': 'Templo de Santa Rosalía',
    'descripcion': 'Iglesia principal.',
    'lat': 24.4990,
    'lng': -99.6010,
  },
  {
    'nombre': 'Miradores naturales',
    'descripcion': 'Vistas de la sierra.',
    'lat': 24.5100,
    'lng': -99.5900,
  },
];
