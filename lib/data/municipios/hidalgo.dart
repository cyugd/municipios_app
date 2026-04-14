import '../../models/municipio.dart';
import '../../models/monumento.dart';

final hidalgo = Municipio(
  id: 'hidalgo',
  nombre: 'Hidalgo',
  descripcionCorta: 'Tradición histórica y vida rural en el centro del estado.',
  descripcionLarga: '''
## Historia
Hidalgo, Tamaulipas es uno de los municipios con mayor tradición histórica en la región del antiguo Nuevo Santander. Su nombre honra al Padre de la Patria, Miguel Hidalgo y Costilla, y forma parte de las primeras villas fundadas durante el proceso de colonización encabezado por José de Escandón.

Rodeado por sierras, ríos y tierras fértiles, Hidalgo ha sido testigo del paso de pueblos originarios, misiones religiosas, asentamientos coloniales y movimientos sociales que marcaron el desarrollo del estado.

- **Época prehispánica:** territorio habitado por grupos indígenas de influencia huasteca, dedicados a la caza, pesca y agricultura.
- **Época colonial:** durante el siglo XVIII se establecieron misiones y rutas de conexión entre la Sierra Madre y las poblaciones del Nuevo Santander.
- **Fundación oficial:** la Villa de Hidalgo fue fundada el 14 de mayo de 1752 por José de Escandón.
- **Siglo XIX:** participación en movimientos nacionales y desarrollo ganadero.
- **Siglo XX:** modernización y fortalecimiento agrícola.

## Geografía
Hidalgo se localiza al centro-norte del estado de Tamaulipas, en una zona donde la Sierra Madre Oriental desciende hacia los valles y planicies.

- Altitud media: 250 a 300 metros sobre el nivel del mar.
- Temperatura media anual: 24°C.
- Cuerpos de agua: río Purificación, río San Antonio, presa La Escondida y manantial El Chorrito.
- Vegetación: matorral, pastizales, mezquite, huizache y zonas boscosas en áreas altas.

## Economía
La economía de Hidalgo se basa principalmente en la agricultura, ganadería y comercio local.

- **Agricultura**: cultivo de maíz, sorgo, frijol, cítricos y hortalizas.
- **Ganadería**: cría de bovinos, caprinos y ovinos.
- **Comercio**: venta de productos locales, alimentos y artesanías.
- **Industria pequeña**: talleres, panaderías y carpinterías.
- **Turismo**: en crecimiento gracias a sus espacios naturales y culturales.

## Cultura
La cultura de Hidalgo refleja la identidad y el espíritu comunitario de su gente. Se manifiesta en la música, la danza, las tradiciones y las celebraciones religiosas.

## Valores
- Respeto: base de la vida social.
- Solidaridad: apoyo entre habitantes.
- Unión familiar: eje de la comunidad.
- Hospitalidad: trato amable a visitantes.
- Cuidado del entorno: respeto por la naturaleza.

## Costumbres
- Danzas tradicionales en fiestas patronales.
- Fiesta de San José en marzo con celebraciones religiosas y eventos.
- Ferias regionales con comida, música y convivencia familiar.

## Gastronomía
- Asado de puerco preparado con chile y especias.
- Tamales de elote y rojos, comunes en festividades.
- Gorditas rellenas de diferentes guisos.

## Educación
La educación es un pilar importante en el municipio. Cuenta con niveles desde preescolar hasta bachillerato.

## Sociedad
La sociedad hidalguense se caracteriza por su unión y participación. Solidaridad entre vecinos, cuidado del medio ambiente y participación en actividades culturales.

## Turismo
Hidalgo cuenta con atractivos naturales y culturales: Río Purificación, Sierra Chiquita, Parador El Tomaseño. Paisajes naturales ideales para descanso y recreación.

## Conclusión
Hidalgo, Tamaulipas, es una comunidad rica en historia, tradiciones y valores. Su gente trabajadora y su entorno natural lo convierten en un lugar lleno de identidad y orgullo.
''',
  imagenAsset: 'assets/images/hidalgo.jpg',
  imagenes: [
    'assets/fotos/hidalgo.png',
  ],
  poblacion: '10,000 hab.',
  superficie: '300 km²',
  gentilicio: 'Hidalguense',

  monumentos3D: [
    Monumento(
      nombre: 'Virgen de la misericordia',
      descripcion: 'Un monumento icónico de la ciudad de Hidalgo.',
      rutaModelo: 'assets/models/Hidalgo.glb',
      escala: 1.0,
    ),
  ],
);
