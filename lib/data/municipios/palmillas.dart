import '../../models/municipio.dart';
import '../../models/monumento.dart';

final palmillas = Municipio(
  id: 'palmillas',
  nombre: 'Palmillas',
  descripcionCorta: 'Historia, tradición y paisajes del altiplano tamaulipeco.',
  descripcionLarga: '''
## Introducción
Palmillas es un municipio ubicado en el suroeste de Tamaulipas, reconocido por su riqueza histórica, sus tradiciones rurales y su entorno natural que combina montañas, rutas antiguas y paisajes agrícolas. Fundado en el siglo XVIII, Palmillas forma parte del histórico Camino Real de Tula, una ruta que conectaba comunidades del altiplano tamaulipeco con centros coloniales importantes. El municipio ha conservado su identidad comunitaria a través de sus costumbres, gastronomía y festividades religiosas.

## Geografía
Se localiza en el altiplano suroeste de Tamaulipas, rodeado de serranías y llanuras de cultivo. Su clima es templado-seco, con temperaturas que oscilan entre los 8°C en invierno y los 30°C en verano. La vegetación incluye matorral, pastizales y pequeñas áreas boscosas en las partes altas. Cuenta con arroyos intermitentes. La fauna local incluye venado cola blanca, coyote, liebre, conejo y aves canoras.

## Población
La población es reducida y dispersa, con aproximadamente 2,000 habitantes (2020). Familias dedicadas principalmente al campo. La vida comunitaria se caracteriza por la cooperación entre vecinos y la preservación de tradiciones.

## Historia
Palmillas tiene sus orígenes en el siglo XVIII, cuando formó parte del asentamiento de pueblos establecidos entre Tula y Jaumave sobre antiguas rutas comerciales. Su nombre proviene de la abundancia de palmas en la región. Fue un punto clave en rutas religiosas, ganaderas y agrícolas del altiplano. Durante el periodo colonial, sirvió como lugar de descanso para viajeros y comerciantes que transitaban por el Camino Real. En el siglo XX se consolidó como un centro comunitario con fuerte identidad rural.

## Economía
- **Agricultura:** maíz, frijol, tomate.
- **Ganadería:** bovino, caprino, producción de queso.
- **Pan artesanal:** muy reconocido en la región.
- **Turismo rural:** visitas a zonas históricas y rutas escénicas.

## Turismo
- **Templo de San Antonio:** iglesia histórica del siglo XVIII.
- **Plaza Principal:** jardín con kiosco.
- **Antiguo Camino Real:** ruta histórica que conecta con Tula y Jaumave.
- **Miradores naturales:** vistas de la sierra.

## Gastronomía
Asado de puerco, tamales, enchiladas, pan artesanal (pan de Palmillas). Dulces de leche. Bebidas: café de olla, atole.

## Cultura y Tradiciones
Fiesta patronal de San Antonio de Padua (13 de junio) con procesiones, música, danzas, jaripeos. Feria del Maíz y el Campo. Día de Muertos con altares. Artesanías: tejidos de palma, bordados, talabartería.

## Educación
Preescolar, primaria, telesecundaria, telebachillerato. Para estudios superiores, los jóvenes viajan a Ciudad Victoria o Tula.

## Infraestructura
Centro de salud rural. Caminos rurales. Servicios básicos en la cabecera.

## Personajes Ilustres
- Don Jesús González (1900-1980): fundador de la panadería tradicional.
- Profesor José Hernández (1930-2000): promotor de la educación rural.

## Datos Curiosos
- El Camino Real era usado por arrieros y comerciantes.
- El pan de Palmillas se hornea en hornos de leña.
- Hay vestigios de antiguos hornos de cal en los alrededores.
- Las fiestas incluyen cabalgatas y carreras de caballos.
- Se conservan casonas de adobe y techos de teja.
''',
  imagenAsset: 'assets/images/palmillas.jpg',
  imagenes: [
    'assets/fotos/Palmillas.png',
    'assets/fotos/palmillas.jpg',
    'assets/fotos/palmillas2.jpg'
  ],
  poblacion: '2,000 hab.',
  superficie: '150 km²',
  gentilicio: 'Palmillense',
  monumentos3D: [
    Monumento(
      nombre: 'Santa Cruz',
      descripcion: 'Cruz en el cerro del mirador.',
      rutaModelo: 'assets/models/Palmillas.glb',
      escala: 1.0,
    ),
  ],
  imagenesGeografia: [
    'assets/Ciudad_geografia/Palmillas_geografia.png',
  ],
  imagenesGastronomia: [
    'assets/Ciudad_gastronomia/Palmillas_gastronomia.jpg',
    'assets/Ciudad_gastronomia/Palmillas_gastronomia2.jpg',
    'assets/Ciudad_gastronomia/Palmillas_gastronomia3.png',
    'assets/Ciudad_gastronomia/Palmillas_gastronomia4.png',
  ],
  imagenesTurismo: [
    'assets/Ciudad_Turismo/Palmillas_turismo.png',
    'assets/Ciudad_Turismo/Palmillas_turismo2.png',
  ],
  imagenesCultura: [
    'assets/Ciudad_Cultura/Palmillas_cultura.png',
  ],
);

final List<Map<String, dynamic>> lugaresPalmillas = [
  {
    'nombre': 'Templo de San Antonio',
    'descripcion': 'Iglesia histórica del siglo XVIII.',
    'lat': 23.2833,
    'lng': -99.5333,
  },
  {
    'nombre': 'Plaza Principal',
    'descripcion': 'Centro de convivencia social.',
    'lat': 23.2830,
    'lng': -99.5330,
  },
  {
    'nombre': 'Antiguo Camino Real',
    'descripcion': 'Ruta histórica.',
    'lat': 23.2800,
    'lng': -99.5300,
  },
];
