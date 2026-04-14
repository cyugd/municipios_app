import '../../models/municipio.dart';
import '../../models/monumento.dart';

final jaumave = Municipio(
  id: 'jaumave',
  nombre: 'Jaumave',
  descripcionCorta: 'Valle de tradición y producción citrícola.',
  descripcionLarga: '''
## Historia
Jaumave, Tamaulipas, es uno de los municipios más antiguos y emblemáticos del altiplano tamaulipeco. Su nombre proviene del vocablo indígena “Xaumave”, relacionado con la presencia de grupos originarios que habitaron la región antes de la llegada de los españoles.

Rodeado por montañas, valles agrícolas y parajes naturales, Jaumave fue un punto clave para pueblos indígenas, misioneros y colonizadores.

- **Época prehispánica:** habitado por grupos huastecos y jonaces dedicados a la agricultura y recolección.
- **Época colonial:** establecimiento de misiones y rutas en la región.
- **Fundación oficial:** 19 de mayo de 1747 por José de Escandón.
- **Siglo XIX:** desarrollo de haciendas y actividad agrícola.
- **Siglo XX:** modernización y fortalecimiento económico.

## Geografía
Jaumave se ubica en el suroeste de Tamaulipas, rodeado por la Sierra Madre Oriental. Su territorio incluye sierras, valles y zonas agrícolas.

- Altitud media: 350 a 400 metros sobre el nivel del mar.
- Temperatura media: entre 23°C y 25°C.
- Cuerpos de agua: río Purificación, manantial de San Vicente, arroyo Jaumave y presa San Lorencito.
- Vegetación: matorral, mezquite, palma y bosque en zonas altas.

## Economía
La economía de Jaumave se basa en la agricultura, ganadería y comercio local.

- **Agricultura**: producción de cítricos, maíz, sorgo y hortalizas.
- **Ganadería**: cría de bovinos, caprinos y ovinos.
- **Comercio**: venta de productos locales, miel, lácteos y artesanías.
- **Industria pequeña**: panaderías, talleres y empacadoras.
- **Turismo**: en crecimiento gracias a sus paisajes naturales.

## Cultura
La cultura de Jaumave refleja su historia y su vida en el valle. Incluye música regional, bailes tradicionales y festividades religiosas que fortalecen la identidad del municipio.

## Valores
- Respeto: base de la convivencia.
- Solidaridad: apoyo entre familias.
- Unión familiar: núcleo de la sociedad.
- Hospitalidad: amabilidad con visitantes.
- Cuidado del entorno: respeto por la naturaleza.

## Costumbres
- Danzas tradicionales en festividades.
- Fiestas patronales con actividades religiosas y sociales.
- Ferias regionales con comida, música y participación comunitaria.

## Gastronomía
- Cabrito al pastor preparado de forma tradicional.
- Enchiladas serranas con salsa casera.
- Tamales de elote, típicos en reuniones.

## Educación
La educación es fundamental para el desarrollo del municipio. Cuenta con niveles básicos y medio superior.

## Sociedad
La sociedad de Jaumave se caracteriza por su unión y trabajo. Solidaridad entre habitantes, cuidado del medio ambiente y participación en actividades sociales.

## Turismo
Jaumave cuenta con atractivos naturales importantes: Río Purificación, Valle de Jaumave, Ojo de Agua. Paisajes naturales ideales para el ecoturismo.

## Conclusión
Jaumave, Tamaulipas, es un municipio lleno de historia, naturaleza y tradiciones. Su gente trabajadora y su entorno lo convierten en un lugar único dentro del estado.
''',
  imagenAsset: 'assets/images/jaumave.jpg',
  imagenes: [
    'assets/fotos/jaumave.png',
  ],
  poblacion: '15,000 hab.',
  superficie: '1,500 km²',
  gentilicio: 'Jaumavense',

  monumentos3D: [
    Monumento(
      nombre: 'La madre jaumave',
      descripcion: 'Un monumento icónico de la ciudad de Jaumave.',
      rutaModelo: 'assets/models/Jaumave.glb',
      escala: 1.0,
    ),
  ],
);
