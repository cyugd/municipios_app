import '../../models/municipio.dart';
import '../../models/monumento.dart';

final mendez = Municipio(
  id: 'mendez',
  nombre: 'Méndez',
  descripcionCorta: 'Comunidad rural con tradición agrícola y ganadera en el noreste de Tamaulipas.',
  descripcionLarga: '''
## Introducción
Méndez es un municipio ubicado en el noreste de Tamaulipas, dentro del Valle de San Fernando. Es una comunidad esencialmente rural, donde la vida transcurre entre campos de cultivo y ganadería. Su gente, trabajadora y hospitalaria, mantiene vivas las tradiciones norteñas, las fiestas patronales y una gastronomía auténtica.

## Geografía
Localizado en el noreste de Tamaulipas, dentro del Valle de San Fernando. Relieve plano, suelos fértiles. Clima cálido y semiárido, temperaturas >40°C en verano.

## Población
Aproximadamente 4,280 habitantes (2020), distribuida en pequeñas comunidades rurales. Migración hacia Reynosa, Matamoros y Estados Unidos.

## Historia
Origen el 1 de julio de 1866, cuando la Congregación La Laja fue elevada a Villa de la Laja. En 1868, mediante decreto estatal, se reconoció como municipio y se propuso el nombre de Méndez en honor a Pedro José Méndez, héroe tamaulipeco. La Revolución Mexicana trajo reparto de tierras.

## Economía
- **Agricultura:** sorgo, maíz, frijol, forrajes.
- **Ganadería:** bovina, caprina, ovina.
- **Comercio local:** tiendas de abarrotes.
- **Remesas:** apoyo de familiares en EE. UU.

## Turismo
- **Parroquia de Nuestra Señora de Monserrat:** templo sencillo.
- **Plaza principal:** jardín con kiosco.
- **Paisajes rurales:** campos de cultivo y pastizales.
- **Presa de Méndez:** pesca de mojarra.

## Gastronomía
Carne asada, cabrito al pastor, tamales, enchiladas, asado de puerco. Postres: empanadas de calabaza, pan casero. Bebidas: café de olla, atole.

## Cultura y Tradiciones
Fiestas patronales de Nuestra Señora de Monserrat (septiembre) con misas, procesiones, jaripeos. Feria de la Cosecha (agosto). Día de Muertos. Artesanías: talabartería, tejidos de palma.

## Educación
Preescolar, primaria, telesecundaria, telebachillerato. Para estudios superiores, viajan a Reynosa o Matamoros.

## Infraestructura
Centro de salud rural. Caminos rurales.

## Personajes Ilustres
- Pedro José Méndez (1795-1866): héroe de la Intervención Francesa.
- Don José López (1900-1980): promotor de la agricultura.
- Profesora María García (1930-2010): fundadora de la escuela.

## Datos Curiosos
- El municipio lleva el nombre de un héroe tamaulipeco.
- La feria de la cosecha atrae visitantes.
- El cabrito al pastor es el platillo típico.
- En la plaza principal hay un kiosco de hierro forjado.
- La parroquia fue construida en el siglo XIX.
''',
  imagenAsset: 'assets/images/mendez.jpg',
  imagenes: [
    'assets/fotos/Mendez.png',
    'assets/fotos/mendez-1.jpg',
    'assets/fotos/mendez-2.jpg'
  ],
  poblacion: '4,280 hab.',
  superficie: '1,200 km²',
  gentilicio: 'Mendecino',
  monumentos3D: [
    Monumento(
      nombre: 'Monumento a Pedro José Méndez',
      descripcion: 'Estatua del héroe.',
      rutaModelo: 'assets/models/Mendez.glb',
      escala: 1.0,
    ),
  ],
  imagenesGastronomia: [],
  imagenesTurismo: [],
);

final List<Map<String, dynamic>> lugaresMendez = [
  {'nombre': 'Parroquia de Nuestra Señora de Monserrat', 'descripcion': 'Templo principal.', 'lat': 25.1167, 'lng': -98.3333},
  {'nombre': 'Plaza Principal', 'descripcion': 'Centro de convivencia.', 'lat': 25.1160, 'lng': -98.3320},
  {'nombre': 'Áreas rurales', 'descripcion': 'Paisajes agrícolas.', 'lat': 25.1200, 'lng': -98.3300},
];