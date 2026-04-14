import '../../models/municipio.dart';
import '../../models/monumento.dart';

final padilla = Municipio(
  id: 'padilla',
  nombre: 'Padilla',
  descripcionCorta: 'Municipio con historia y tradición en el sur de Tamaulipas.',
  descripcionLarga: '''
## Introducción
Padilla es un municipio ubicado en el sur del estado de Tamaulipas. Se caracteriza por su ambiente rural, su historia ligada a la agricultura y ganadería, y la calidez de su gente. Sus tradiciones y costumbres reflejan la identidad de la región.

## Historia
Padilla fue fundado en el siglo XVIII como parte del proceso de colonización del Nuevo Santander. Durante la época colonial se desarrolló como un asentamiento agrícola y ganadero. En el siglo XIX participó en los movimientos independentistas y en la Revolución Mexicana tuvo influencia local. A lo largo del tiempo, ha mantenido su carácter rural y su identidad comunitaria.

## Geografía
Se localiza en la región sur de Tamaulipas, en una zona de llanuras y áreas semiáridas. Su altitud es baja y su clima es cálido subhúmedo, con lluvias en verano. El territorio es apto para la agricultura y la ganadería.

## Población
Cuenta con una población aproximada de 4,500 habitantes (2020), distribuidos entre la cabecera municipal y comunidades rurales. La población es mayoritariamente joven, aunque la migración hacia ciudades más grandes es común.

## Economía
La economía se basa principalmente en la agricultura (maíz, sorgo, frijol) y la ganadería (bovinos, caprinos). También existen pequeños comercios locales y servicios básicos.

## Cultura
La cultura de Padilla está influenciada por las tradiciones norteñas y rurales. Las fiestas patronales, la música norteña y las reuniones familiares son parte importante de la vida cotidiana.

## Gastronomía
La gastronomía incluye platillos como cabrito al pastor, carne asada, tamales, gorditas y dulces regionales.

## Turismo
El municipio cuenta con atractivos naturales como paisajes rurales, áreas de cultivo y espacios para la convivencia. La plaza principal y la iglesia local son puntos de encuentro.

## Conclusión
Padilla es un municipio que conserva su identidad rural y sus tradiciones. A pesar de los retos de desarrollo, su comunidad mantiene un fuerte sentido de pertenencia y arraigo cultural.
''',

  imagenAsset: 'assets/images/padilla.jpg',
  imagenes: [
    'assets/fotos/Padilla.png',
  ],
  poblacion: '7,000 hab.',
  superficie: '600 km²',
  gentilicio: 'Padillense',

  monumentos3D: [
    Monumento(
      nombre: 'Antigua catedral abandonada',
      descripcion: 'Un monumento icónico de la ciudad de Padilla.',
      rutaModelo: 'assets/models/Padilla.glb',
      escala: 1.0,
    ),
  ],
);
