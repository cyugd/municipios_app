import '../../models/municipio.dart';
import '../../models/monumento.dart';

final palmillas = Municipio(
  id: 'palmillas',
  nombre: 'Palmillas',
  descripcionCorta: 'Historia, tradición y paisajes del altiplano tamaulipeco.',
  descripcionLarga: '''
## Introducción
Palmillas es un municipio ubicado en el suroeste de Tamaulipas, reconocido por su riqueza histórica, sus tradiciones rurales y su entorno natural que combina montañas, rutas antiguas y paisajes agrícolas. Fundado en el siglo XVIII, Palmillas forma parte del histórico Camino Real de Tula y ha conservado su identidad comunitaria a través de sus costumbres, gastronomía y festividades religiosas.

## Historia
Palmillas tiene sus orígenes en el siglo XVIII, cuando formó parte del asentamiento de pueblos establecidos entre Tula y Jaumave sobre antiguas rutas comerciales. Su nombre proviene de la abundancia de palmas en la región. Ha sido un punto clave en rutas religiosas, ganaderas y agrícolas del altiplano tamaulipeco.

## Geografía y Población
Se localiza en el altiplano suroeste de Tamaulipas, rodeado de serranías y llanuras de cultivo. Su clima es templado-seco y cuenta con comunidades pequeñas que mantienen un estilo de vida rural. Se ubica en la región centro-sur del estado de Tamaulipas, dentro de la zona serrana que forma parte del extremo oriental de la Sierra Madre Oriental. Su entorno presenta lomeríos, valles estrechos y zonas de vegetación abundante gracias a la cercanía con corrientes naturales como el río Guayalejo.

## Economía
La economía de Palmillas se basa en la agricultura, la ganadería y la producción de maíz, frijol, tomate y forrajes. También destaca la producción de pan artesanal, dulces regionales y trabajo artesanal.

**Principales actividades económicas:**
- **Agricultura:** maíz, frijol, sorgo y hortalizas de temporada.
- **Ganadería:** bovino, caprino y producción de derivados.
- **Comercio local:** venta de alimentos, pan artesanal y productos tradicionales.
- **Artesanías:** talabartería, tejidos y productos hechos a mano.
- **Turismo rural:** visitas a zonas históricas y rutas escénicas.

## Cultura y Patrimonio
Sus tradiciones se conservan gracias a festividades, música regional y encuentros comunitarios. El templo de San Antonio y su plaza principal son íconos de identidad municipal.

**Fiesta Patronal de San Antonio de Padua** – Celebrada el 13 de junio, incluye procesiones, música y actividades religiosas.

**Feria del Maíz y el Campo** – Evento que honra la labor agrícola, con exposiciones y gastronomía típica.

**Reuniones comunitarias** – Costumbre local en la que las familias se reúnen para compartir comida y música.

**Día de Muertos** – Se colocan altares tradicionales en casas y espacios públicos.

**Artesanías comunes:**
- Elaboración de tejidos de palma
- Productos hechos a mano como fajas, rebozos y servilletas bordadas
- Figuras en madera y piedra
- Artículos religiosos artesanales

## Valores
Las familias palmillenses destacan por su hospitalidad, unión y sentido religioso. El respeto, el trabajo y la solidaridad forman parte del carácter comunitario. Palmillas es reconocido como un sitio de profundo valor histórico debido a su arquitectura antigua, su plaza, su iglesia y los caminos que conectaban a los primeros asentamientos del noreste mexicano.

## Costumbres y Fiestas
Entre las más importantes están las celebraciones de San Antonio, la Semana Santa y fiestas patronales. Se acompañan de música norteña, bailes regionales y convivencia comunitaria. Palmillas celebra sus fiestas patronales con gran entusiasmo. Durante estos días, la plaza principal se llena de música, antojitos, danzas folklóricas, juegos tradicionales y actividades religiosas que unen a toda la comunidad. Estas celebraciones no solo fortalecen la fe, sino también la convivencia comunitaria, ya que participan tanto familias enteras como visitantes de ejidos cercanos.

## Gastronomía
Palmillas destaca por su comida casera, auténtica y llena de tradición rural. Sus platillos se preparan con recetas antiguas que han pasado de generación en generación, acompañados de tortillas hechas a mano, carnes asadas y guisos típicos del centro de Tamaulipas. Entre sus sabores más representativos están los asados, tamales, pan artesanal, caldos, enchiladas y dulces hechos con piloncillo.

## Educación
El municipio cuenta con instituciones de educación básica y media superior. La educación comunitaria es fundamental para el desarrollo juvenil del municipio. Palmillas cuenta con escuelas de nivel básico y medio superior que atienden a la mayor parte de la población estudiantil:
- Jardín de Niños "Francisco Villa"
- Escuela Primaria "Benito Juárez"
- Escuela Primaria "Pedro José Méndez"
- Telesecundaria de Palmillas
- CBTIS o Telebachillerato Comunitario (según zona)
- Centros comunitarios de alfabetización

## Sociedad
La sociedad palmillense se caracteriza por su convivencia tranquila y fuerte arraigo familiar. La participación en festividades y labores comunitarias refuerza su cohesión social. Los grupos vecinales ayudan en la organización de festividades religiosas, limpieza de áreas públicas, apoyo a familias vulnerables y mantenimiento de espacios históricos. Estas actividades fortalecen los vínculos entre los pobladores y fomentan la cooperación. Además, se realizan eventos culturales y deportivos en la plaza principal, donde se reúnen familias, jóvenes y personas mayores, manteniendo vivas las tradiciones y promoviendo una convivencia armónica.

## Turismo y Lugares
Destacan su plaza principal, el templo de San Antonio, el antiguo Camino Real y áreas naturales ideales para senderismo. Su cercanía a Tula permite explorar rutas históricas y paisajes coloniales.

## Conclusión
Palmillas es un municipio lleno de historia, tradiciones y paisajes del altiplano tamaulipeco. Su identidad rural, su cultura viva y su importancia histórica lo convierten en un lugar valioso dentro del estado de Tamaulipas.
''',

  imagenAsset: 'assets/images/palmillas.jpg',
  imagenes: [
    'assets/fotos/Palmillas.png',
  ],
  poblacion: '2,000 hab.',
  superficie: '150 km²',
  gentilicio: 'Palmillense',

  monumentos3D: [
    Monumento(
      nombre: 'Santa Cruz',
      descripcion: 'Un monumento icónico de la ciudad de Palmillas.',
      rutaModelo: 'assets/models/Palmillas.glb',
      escala: 1.0,
    ),
  ],
);
