import '../../models/municipio.dart';
import '../../models/monumento.dart';

final jimenez = Municipio(
  id: 'jimenez',
  nombre: 'Jiménez',
  descripcionCorta: 'Tranquilidad rural y tradición en el sur del estado.',
  descripcionLarga:  '''
## Introducción
Jiménez es un municipio del sur de Tamaulipas, caracterizado por su tranquila vida rural, su ambiente de campo y la fortaleza de su comunidad. Su nombre completo es Mariano Jiménez, en honor al héroe de la Independencia. La economía se basa en la agricultura y la ganadería, y sus habitantes conservan tradiciones, valores y costumbres que reflejan la identidad del norte del país. Es un lugar ideal para el descanso.

## Historia
El municipio tiene origen en el periodo colonial, cuando surgió como asentamiento agrícola y ganadero. En el siglo XIX recibió el nombre de Mariano Jiménez, en honor al héroe de la Independencia. A lo largo del tiempo participó indirectamente en eventos como la Reforma y la Revolución Mexicana, consolidándose como una comunidad estable en el siglo XX. La construcción de caminos y la llegada del ferrocarril impulsaron su desarrollo.

## Geografía y Población
Se localiza en la zona sur del estado de Tamaulipas, en una región de llanuras y áreas semiáridas. Su altitud promedio es cercana a los 100 metros sobre el nivel del mar. El clima es cálido subhúmedo. La vegetación incluye matorral, mezquite y huizache.  
Población: aproximadamente 9,935 habitantes (2020), distribuidos entre la cabecera municipal y comunidades rurales.

## Economía
- **Agricultura:** Maíz, sorgo, frijol, hortalizas.  
- **Ganadería:** Bovina, ovina, caprina, producción de leche, queso y carne.  
- **Comercio:** Tiendas, mercados, talleres, tianguis.

## Cultura y Tradiciones
**Fiestas:** Patronal en honor a la Virgen del Carmen (16 de julio), Día de Muertos, Fiestas Patrias (desfiles, eventos comunitarios).  
**Gastronomía:** Carne asada, cortadillo, barbacoa, enchiladas, gorditas, tamales; café de olla; dulces tradicionales.  
**Artesanías:** Talabartería, tejidos de palma.

## Turismo y Atractivos
- **Río Purificación:** Paseos y pesca.  
- **Plaza Principal:** Jardín con kiosco.  
- **Áreas naturales:** Paisajes de llanura ideales para caminatas.  
- **Iglesia de la Virgen del Carmen:** Templo principal.  
- **Presa de Jiménez:** Pesca de mojarra.

## Educación y Salud
Cuenta con preescolar, primaria, telesecundaria y telebachillerato. Para estudios superiores, los jóvenes viajan a El Mante o Ciudad Victoria. En salud, un centro de salud rural.

## Personajes Ilustres
- **Mariano Jiménez (1781-1811):** Héroe de la Independencia.  
- **Don José María López (1900-1980):** Promotor de la agricultura local.  
- **Profesora Carmen García (1930-2010):** Fundadora de la escuela primaria.

## Datos Curiosos
- El río Purificación es conocido por sus pozas.  
- La Virgen del Carmen es la patrona del municipio.  
- Los tamales son típicos de las fiestas.  
- En la plaza principal hay un kiosco de hierro forjado.  
- El municipio es productor de frijol.

## Perspectivas Futuras
Se busca mejorar la infraestructura, apoyar la producción agrícola y fomentar el turismo rural.
''',
  imagenAsset: 'assets/images/jimenez.jpg',
  imagenes: [
    'assets/fotos/jimenez.png',
    'assets/fotos/jimenez.jpg',
    'assets/fotos/jimenez2.jpg'
  ],
  poblacion: '6,000 hab.',
  superficie: '1,100 km²',
  gentilicio: 'Jimense',

  monumentos3D: [
    Monumento(
      nombre: 'Monumento a Santander Jiménez',
      descripcion: 'Un monumento icónico de la ciudad de Jiménez.',
      rutaModelo: 'assets/models/Jimenez.glb',
      escala: 1.0,
    ),
  ],
);
final List<Map<String, dynamic>> lugaresJimenez = [
  {
    'nombre': 'Río Purificación',
    'descripcion': 'Paseos y pesca.',
    'lat': 24.1167,
    'lng': -98.7333,
  },
  {
    'nombre': 'Plaza Principal',
    'descripcion': 'Centro de convivencia social.',
    'lat': 24.1150,
    'lng': -98.7350,
  },
  {
    'nombre': 'Iglesia de la Virgen del Carmen',
    'descripcion': 'Templo principal.',
    'lat': 24.1140,
    'lng': -98.7360,
  },
];