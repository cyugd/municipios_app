import '../../models/municipio.dart';
import '../../models/monumento.dart';

import '../../models/municipio.dart';

final nuevo_morelos = Municipio(
  id: 'nuevo_morelos',
  nombre: 'Nuevo Morelos',
  descripcionCorta: 'Municipio con historia de resurgimiento y tradición rural.',
  descripcionLarga: '''
## Historia
El municipio de Morelos tiene sus orígenes en el siglo XIX cuando se fundó la localidad conocida como Congregación de Mesillas. Con el paso del tiempo la comunidad comenzó a crecer gracias a las actividades agrícolas y ganaderas de sus habitantes. Durante la época de la Revolución Mexicana la población se vio afectada por la inestabilidad del país, lo que provocó que algunos habitantes abandonaran temporalmente la zona. Posteriormente la comunidad fue repoblada y continuó su desarrollo, consolidándose como un municipio con identidad propia dentro del estado de Tamaulipas.

## Línea del tiempo
- **1890:** Primeros asentamientos en el paraje conocido como Mesillas, base del futuro Nuevo Morelos.
- **1861:** La comunidad obtiene el nombre de Villa de Nuevo Morelos y se convierte en cabecera municipal.
- **1921:** El poblado es abandonado durante la Revolución Mexicana y repoblado en 1921 por una comisión local.
- **1980:** Durante los años 80 se mejora la infraestructura y los servicios básicos.
- **2000:** El municipio impulsa la cultura y el turismo ecológico en el nuevo milenio.
- **2025:** Hoy, Nuevo Morelos apuesta por el desarrollo sostenible, preservando sus valores rurales y naturales.

## Geografía
El municipio de Morelos se localiza en la zona sur del estado de Tamaulipas. Su territorio está formado por áreas rurales, tierras agrícolas y zonas naturales que favorecen actividades como la agricultura y la ganadería. El clima y las condiciones del suelo permiten el desarrollo de diferentes cultivos y actividades del campo.

## Población
La población del municipio está formada principalmente por comunidades pequeñas y zonas rurales. La mayoría de los habitantes se dedican a actividades agrícolas, ganaderas o al comercio local. La vida comunitaria es importante para los habitantes, ya que muchas tradiciones y actividades se realizan en conjunto.

## Economía
La economía del municipio se basa principalmente en la agricultura y la ganadería. Los habitantes trabajan en el cultivo de productos del campo y en la cría de animales, lo que representa una fuente importante de ingresos para la región. También existen pequeños comercios y actividades económicas locales que contribuyen al desarrollo del municipio.

## Cultura
La cultura de Morelos está influenciada por sus tradiciones rurales y la convivencia entre los habitantes. Las celebraciones comunitarias, eventos locales y actividades sociales forman parte de la vida cultural del municipio y fortalecen la identidad de la población.

## Valores
Entre los valores más importantes de la comunidad destacan el respeto, la solidaridad y el trabajo en conjunto. Estos valores se reflejan en la convivencia diaria entre los habitantes y en la manera en que colaboran en actividades sociales y comunitarias.

## Costumbres
Las costumbres del municipio incluyen celebraciones tradicionales, reuniones familiares y eventos comunitarios que se realizan en diferentes épocas del año. Estas tradiciones se han transmitido de generación en generación y forman parte de la identidad cultural de la comunidad.

## Gastronomía
La gastronomía del municipio está basada en productos del campo y recetas tradicionales de la región. Entre los platillos más comunes se encuentran alimentos preparados con maíz, frijol, carne y otros ingredientes típicos del norte de México, los cuales se consumen en reuniones familiares y celebraciones.

## Turismo
El municipio cuenta con algunos espacios naturales y lugares representativos que forman parte de su identidad. Los visitantes pueden conocer paisajes rurales, tradiciones locales y algunos sitios históricos que reflejan la historia y cultura de la comunidad.

## Conclusión
El municipio de Morelos es una comunidad que destaca por su historia, sus tradiciones y su estilo de vida rural. A pesar de los retos que enfrenta, mantiene una fuerte identidad cultural basada en la convivencia, el trabajo comunitario y el respeto por sus tradiciones.
''',

  imagenAsset: 'assets/images/nuevo_morelos.jpg',
  imagenes: [
    'assets/images/nuevo_morelos_1.jpg',
    'assets/images/nuevo_morelos_2.jpg',
    'assets/images/nuevo_morelos_3.jpg',
  ],
  poblacion: '4,000 hab.',
  superficie: '200 km²',
  gentilicio: 'Morelense',

  monumentos3D: [
    Monumento(
      nombre: 'Cruz Central',
      descripcion: 'Un monumento icónico de la ciudad de Nuevo Morelos.',
      rutaModelo: 'assets/models/Morelos.glb',
      escala: 1.0,
    ),
  ],
);