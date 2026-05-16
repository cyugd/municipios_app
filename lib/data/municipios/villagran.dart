import '../../models/municipio.dart';
import '../../models/monumento.dart';

final villagran = Municipio(
  id: 'villagran',
  nombre: 'Villagrán',
  descripcionCorta: 'Municipio rural con historia colonial y tradición agrícola.',
  descripcionLarga: '''
## Introducción
Villagrán es un municipio rural del centro-sur de Tamaulipas, fundado el 8 de mayo de 1757 con el nombre de Villa Real de Borbón. Tras la Independencia, en 1827, cambió su nombre a Villagrán en honor al insurgente Julián de Villagrán, quien luchó por la libertad del país. Durante la colonia fue un asentamiento agrícola y ganadero, con familias dedicadas al cultivo de maíz y la cría de ganado. En la Independencia tuvo un papel como zona de paso estratégico, y durante la Revolución Mexicana sufrió efectos económicos y sociales, con saqueos y migración de habitantes. En el siglo XX se consolidó como municipio rural, con desarrollo basado en ejidos y actividades del campo.

## Geografía
Se ubica en la región centro-sur de Tamaulipas, al pie del Cerro de Santiago. Su relieve combina llanuras y pequeñas elevaciones que favorecen la agricultura y la ganadería. El clima es semiseco cálido, con lluvias en verano. No cuenta con grandes ríos, pero sí con arroyos temporales que abastecen a las comunidades rurales. La vegetación predominante es el matorral espinoso, mezquite y huizache. La fauna incluye venado cola blanca, coyote, liebre, conejo y aves canoras.

## Población
Aproximadamente 5,361 habitantes (2020), con tendencia a disminuir por la migración hacia otras ciudades y Estados Unidos. La dispersión poblacional en ejidos y rancherías refleja su carácter rural. Predominan los adultos mayores, ya que los jóvenes emigran.

## Historia
Fundado el 8 de mayo de 1757 por Domingo de Ungaza como Villa Real de Borbón. En 1827 cambió a Villagrán en honor a Julián de Villagrán. Durante el Porfiriato creció con base agrícola. En la Revolución Mexicana hubo saqueos y migración. En el siglo XX se mejoró la infraestructura básica.

## Economía
- **Agricultura:** maíz, sorgo.
- **Ganadería:** bovinos, caprinos, aves. Producción de queso y carne seca.
- **Comercio y servicios:** tiendas de abarrotes, talleres.
- **Remesas** desde EE. UU., que apoyan la economía familiar.

## Turismo
- **Cerro de Santiago:** elevación natural con una cruz en la cima, ideal para caminatas y vistas panorámicas.
- **Plaza Principal:** kiosco, jardín y bancas, centro de la vida social.
- **Parroquia local:** templo del siglo XIX, de estilo neoclásico sencillo.

## Gastronomía
Cabrito asado, carne seca con huevo, frijoles charros, tamales de puerco, tortillas de harina, gorditas de maíz, dulces de leche (glorias, jamoncillos). Bebidas: café de olla, atole.

## Cultura y Tradiciones
Fiestas de Santa Rosalía (septiembre) con procesiones, misas, danzas y jaripeos. Día de la Independencia (15 y 16 de septiembre) con desfile y grito. Día de Muertos con altares y visitas al panteón. Música norteña y banda. Artesanías: talabartería (cinturones, monturas), tejidos de palma y bordados.

## Educación
Preescolar, primaria, telesecundaria, telebachillerato. Para estudios superiores, los jóvenes viajan a Ciudad Victoria.

## Infraestructura
Centro de salud rural. Caminos rurales de terracería. Servicios básicos en la cabecera.

## Personajes Ilustres
- Julián de Villagrán: insurgente.
- Bernardo G. Mainero (1820-1880): político tamaulipeco.
- Don José López (1900-1980): promotor agrícola.

## Datos Curiosos
- Originalmente se llamaba Villa Real de Borbón, en honor a la dinastía española.
- El nombre actual honra a Julián de Villagrán, insurgente.
- El Cerro de Santiago tiene una cruz en la cima y es sitio de peregrinación.
- La parroquia fue construida en el siglo XIX con piedra de cantera.
- Los tamales de puerco son típicos de las fiestas.
''',
  imagenAsset: 'assets/images/villagran.jpg',
  imagenes: [
    'assets/fotos/Villagran.png',
    'assets/fotos/villagrant.jpg',
    'assets/fotos/villagrant2.jpg'
  ],
  poblacion: '5,361 hab.',
  superficie: '800 km²',
  gentilicio: 'Villagranense',
  monumentos3D: [
    Monumento(
      nombre: 'Monumento de los caidos',
      descripcion: 'Homenaje a los revolucionarios.',
      rutaModelo: 'assets/models/Villagran.glb',
      escala: 1.0,
    ),
  ],
  imagenesGastronomia: [],
  imagenesTurismo: [],
);

final List<Map<String, dynamic>> lugaresVillagran = [
  {
    'nombre': 'Cerro de Santiago',
    'descripcion': 'Elevación natural, ideal para caminatas.',
    'lat': 24.1667,
    'lng': -99.5000,
  },
  {
    'nombre': 'Plaza Principal',
    'descripcion': 'Centro de convivencia social y cultural.',
    'lat': 24.1500,
    'lng': -99.5000,
  },
  {
    'nombre': 'Parroquia local',
    'descripcion': 'Templo del siglo XIX.',
    'lat': 24.1480,
    'lng': -99.5020,
  },
];