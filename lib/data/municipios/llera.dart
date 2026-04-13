import '../../models/municipio.dart';
import '../../models/monumento.dart';

final llera = Municipio(
  id: 'llera',
  nombre: 'Llera',
  descripcionCorta: 'Primera villa del Nuevo Santander, con historia y naturaleza.',
  descripcionLarga: '''
## Introducción
Llera de Canales es un municipio con gran valor histórico y natural. Fue la primera villa fundada en el antiguo Nuevo Santander y destaca por su riqueza cultural, su entorno natural y la hospitalidad de su gente. Su identidad combina tradiciones, historia y actividades rurales.

## Ubicación
Se localiza en la región centro-sur del estado de Tamaulipas, entre la Sierra Madre Oriental y el valle del Río Guayalejo. Su altitud aproximada es de 291 metros sobre el nivel del mar.

## Población
Cuenta con una población aproximada de 14,645 habitantes según el censo 2020, distribuida entre la cabecera municipal y comunidades rurales.

## Historia
Fue fundada el 25 de diciembre de 1748 por José de Escandón, siendo la primera villa del Nuevo Santander. Su nombre honra a la familia Llera y posteriormente se añadió “de Canales” en honor al general Servando Canales. A lo largo del tiempo ha mantenido su ubicación original, conservando su identidad histórica.

## Economía
La economía se basa principalmente en la agricultura, la ganadería y actividades artesanales, además de un turismo en crecimiento.

**Agricultura**: Destacan cultivos como sorgo, cítricos, cebolla y productos agrícolas que dependen del agua del río Guayalejo.

**Ganadería**: Incluye la cría de bovinos y otras especies, además de la producción de miel, siendo la apicultura una actividad importante.

**Comercio**: Se compone de pequeños negocios, mercados locales y venta de productos artesanales como tejidos, madera y alfarería.

## Gastronomía
Se basa en platillos regionales elaborados con carne, queso y productos del campo, además de dulces tradicionales como pemoles y marranitos.

## Turismo
El turismo se enfoca en la naturaleza, la historia y la tranquilidad del municipio, atrayendo visitantes locales.

**Atractivos turísticos**: Destacan el Río Guayalejo, la plaza principal y edificios históricos del centro.

**Naturaleza**: El municipio cuenta con zonas serranas, ríos, arroyos y vegetación variada. Además, está relacionado con la Reserva de la Biosfera El Cielo, uno de los ecosistemas más importantes del noreste de México.

**Espacios públicos**: La plaza principal y el centro histórico son lugares de convivencia social, eventos culturales y reuniones familiares.

## Festividades
Se celebran fiestas patronales en honor a San José, eventos agrícolas y tradiciones comunitarias con música y gastronomía típica.

## Educación
El municipio cuenta con educación básica y programas comunitarios que apoyan el desarrollo académico de la población.

**Infraestructura educativa**: Existen escuelas en la cabecera municipal y comunidades rurales que brindan educación a niños y jóvenes.

**Servicios educativos**: Se promueven programas sociales, actividades culturales y apoyo a estudiantes para mejorar su formación.

**Retos educativos**: Entre los principales retos están mejorar la infraestructura, ampliar el acceso a tecnología y evitar la migración de jóvenes.
''',

  imagenAsset: 'assets/images/llera.jpg',
  imagenes: [
    'assets/images/llera_1.jpg',
    'assets/images/llera_2.jpg',
    'assets/images/llera_3.jpg',
  ],
  poblacion: '5,000 hab.',
  superficie: '800 km²',
  gentilicio: 'Llerense',

  monumentos3D: [
    Monumento(
      nombre: 'Monumento con obelisco',
      descripcion: 'Un monumento icónico de la ciudad de Llera.',
      rutaModelo: 'assets/models/Llera.glb',
      escala: 1.0,
    ),
  ],
);