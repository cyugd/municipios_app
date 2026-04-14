import '../../models/municipio.dart';
import '../../models/monumento.dart';

final burgos = Municipio(
  id: 'burgos',
  nombre: 'Burgos',
  descripcionCorta: 'Conocido por su tranquilidad y belleza natural.',
  descripcionLarga: '''
## Introducción
Burgos es un municipio ubicado en el estado de Tamaulipas, al noreste de México. Se caracteriza por su tranquilidad y por la calidez de su gente, que conserva tradiciones y costumbres heredadas. La región presenta paisajes variados como llanuras, zonas semiáridas y vegetación típica del noreste.

## Historia
El municipio tiene antecedentes prehispánicos, ya que la región fue habitada por grupos indígenas como los Janambres y Pizones. Fue fundado el 20 de febrero de 1749 por José de Escandón con el nombre de Villa de Burgos. En 1828 se consolidó como municipio libre. Durante el siglo XIX participó en procesos importantes del estado y, en la Revolución Mexicana, hubo movimientos locales.

## Ubicación y Población
Burgos se encuentra en la parte central de Tamaulipas, en la región conocida como la Cuenca Central, a unos 180 metros sobre el nivel del mar. Tiene una población total de 4,200 habitantes (2020), de los cuales 2,150 viven en la cabecera municipal. Su ubicación es estratégica, ya que conecta con otros municipios y facilita el acceso a distintas regiones.

## Economía
La economía de Burgos se basa principalmente en actividades primarias como la agricultura y la ganadería, además del comercio local.

**Agricultura**
Es uno de los pilares económicos del municipio. Se cultivan productos como maíz, frijol, sorgo y hortalizas (tomate, chile y cebolla). Esta actividad emplea aproximadamente al 40% de la población económicamente activa.

**Ganadería**
Incluye la producción de ganado bovino (carne y leche), caprino, avicultura y apicultura. Existen más de 150 unidades de producción pecuaria, lo que la convierte en una actividad importante para la economía local.

**Comercio**
El comercio incluye tiendas, mercados, talleres, restaurantes y servicios. También hay intercambio comercial con municipios cercanos y venta de artesanías. La mayor actividad se concentra en el centro del municipio.

## Gastronomía
Destacan platillos como el cabrito al pastor, tamales de elote, gorditas de horno y dulces regionales. La gastronomía refleja la mezcla de tradiciones indígenas y españolas.

## Turismo
El turismo es una actividad en desarrollo que incluye turismo cultural, rural y gastronómico.

**Atractivos turísticos**
Cuenta con parque natural, iglesias, ríos, plazas y espacios recreativos. Estos lugares permiten conocer tanto la naturaleza como la cultura del municipio.

**Iglesias**
Destacan la Iglesia de Nuestra Señora de Loreto, la Capilla de San José y el Templo del Sagrado Corazón, además de ermitas en comunidades rurales.

**Naturaleza**
Incluye el río Burgos, manantiales, áreas de pesca y zonas para observar aves, ideales para actividades al aire libre.

**Espacios públicos**
La plaza principal, el Jardín Hidalgo, parques infantiles y andadores son puntos de convivencia social y recreación para los habitantes.

**Festividades**
Se celebran la feria municipal en febrero, el Día de Nuestra Señora de Loreto el 10 de diciembre, el Festival del Maíz y eventos de Semana Santa, que mantienen vivas las tradiciones.

## Educación
El sistema educativo ofrece niveles desde básico hasta medio superior, además de algunas extensiones universitarias.

**Infraestructura educativa**
Cuenta con 8 primarias, 3 secundarias, 2 preparatorias y centros de educación especial, cubriendo las necesidades básicas del municipio.

**Estadísticas educativas**
La alfabetización es del 93%, con una escolaridad promedio de 8.3 años. Hay 1,150 estudiantes, una deserción del 2.5% y una eficiencia del 90% en primaria.

**Servicios educativos**
Incluyen transporte escolar, bibliotecas, acceso a computadoras e internet, programas de alimentación y actividades deportivas y culturales.

**Retos educativos**
Los principales desafíos son mejorar la infraestructura, capacitar a docentes, ampliar el acceso a tecnología, fortalecer la educación a distancia y ofrecer más opciones técnicas.
''',
  imagenAsset: 'assets/images/burgos.jpg',
  imagenes: [
    'assets/fotos/burgos.png',
  ],
  poblacion: '4,200 hab.',
  superficie: '1,200 km²',
  gentilicio: 'Burguense',

  monumentos3D: [
    Monumento(
      nombre: 'Burgos',
      descripcion: 'Monumento de Burgos',
      rutaModelo: 'assets/models/Burgos.glb',
      escala: 1.0,
    ),
  ],
);
