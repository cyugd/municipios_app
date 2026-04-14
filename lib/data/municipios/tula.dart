import '../../models/municipio.dart';
import '../../models/monumento.dart';

final tula = Municipio(
  id: 'tula',
  nombre: 'Tula',
  descripcionCorta: 'Pueblo Mágico con historia insurgente y tradición artesanal.',
  descripcionLarga: '''
## Historia
Tula es uno de los municipios más antiguos de Tamaulipas, fundado el 22 de julio de 1617 por Juan Bautista de Mollinedo. En 1744 fue elevada a villa por José de Escandón y Helguera.

Tuvo participación en la Independencia con insurgentes como Mateo Acuña y Bernardo Gómez de Lara. En 1835 se convirtió en ciudad y en el siglo XIX fue un punto estratégico importante. Durante la Intervención Francesa destacó la batalla liderada por Pedro José Méndez.

En el Porfiriato tuvo auge económico gracias al ixtle, y en la Revolución fue escenario de conflictos. En 2012 fue nombrado Pueblo Mágico por su valor histórico y cultural.

## Línea del Tiempo
- **1617:** Fundación de Tula
- **1744:** Elevación a villa
- **1824:** Integración al estado de Tamaulipas
- **1835:** Nombramiento como ciudad
- **Siglo XIX:** Auge económico y relevancia regional
- **2012:** Nombramiento como Pueblo Mágico
- **Actualidad:** Crecimiento turístico y cultural

## Geografía y Población
Tula se ubica en el suroeste de Tamaulipas, dentro de la Sierra Madre Oriental. Su territorio es muy diverso: montañas, valles, llanuras y zonas semidesérticas.

El clima varía entre templado, seco y frío en invierno. Cuenta con arroyos y manantiales, aunque no tiene grandes ríos.

Tiene más de 28 mil habitantes, con baja densidad poblacional y comunidades dispersas. Es un municipio mayormente rural, con población joven pero también con presencia de adultos mayores que conservan tradiciones.

## Economía
Se basa en:
- **Agricultura:** maíz, frijol, sorgo y frutas
- **Ganadería:** bovinos, caprinos y aves
- **Artesanías:** especialmente la cuera tamaulipeca
- **Comercio y turismo:** en crecimiento por ser Pueblo Mágico

También recibe ingresos por remesas, aunque enfrenta retos como pobreza rural y migración.

## Cultura
La cultura de Tula está profundamente arraigada en tradiciones coloniales y rurales. Destacan las festividades religiosas, la música norteña y la vida comunitaria.

Su patrimonio incluye el centro histórico, iglesias antiguas y artesanías como la cuera tamaulipeca.

## Valores
Predominan valores como:
- Unidad familiar
- Cooperación comunitaria
- Respeto por tradiciones
- Cuidado del medio ambiente
- Orgullo por la identidad local

## Costumbres y Fiestas
Las tradiciones giran en torno a la convivencia comunitaria:
- Reuniones en la plaza principal
- Visitas familiares y hospitalidad
- Faenas comunitarias
- Fiestas religiosas (Semana Santa, Día de Muertos, fiestas patronales)
- Música norteña y bailes
- Uso de vestimenta tradicional

## Gastronomía
Destacan platillos tradicionales como:
- Enchiladas tultecas
- Barbacoa de horno
- Cabrito
- Tamales de elote y de cerdo
- Gorditas

En postres: nieves artesanales, dulces regionales y pan casero. Es una cocina ligada a la vida rural y familiar.

## Educación y Sociedad
Cuenta con educación básica en el municipio y opciones de bachillerato como telebachilleratos. Para estudios superiores, los jóvenes suelen salir a otras ciudades.

La sociedad es unida, tranquila y tradicional. Predomina la convivencia familiar, el apoyo entre vecinos y el respeto a los adultos mayores.

## Turismo
Tula destaca por su arquitectura colonial y paisajes naturales. Sus principales atractivos son:
- Iglesia de San Antonio de Padua
- Plaza principal
- Cerro de la Cruz
- Zona arqueológica de Tammapul
- Museos y ex haciendas

Es un destino turístico cultural y natural en crecimiento.

## Conclusión
Tula es un municipio con gran riqueza histórica, cultural y natural. Su identidad se mantiene viva gracias a sus tradiciones, su gente y su patrimonio. Como Pueblo Mágico, representa un importante símbolo de historia y cultura en Tamaulipas, con un futuro prometedor basado en el turismo y la conservación de sus raíces.
''',
  imagenAsset: 'assets/images/tula.jpg',
  imagenes: [
    'assets/fotos/Tula.png',
  ],
  poblacion: '28,000 hab.',
  superficie: '3,000 km²',
  gentilicio: 'Tulteca',

  monumentos3D: [
    Monumento(
      nombre: 'Los atlanticos',
      descripcion: 'Un monumento icónico de la ciudad de Tula.',
      rutaModelo: 'assets/models/Tula.glb',
      escala: 1.0,
    ),
  ],
);
