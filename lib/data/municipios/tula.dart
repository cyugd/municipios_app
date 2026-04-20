import '../../models/municipio.dart';
import '../../models/monumento.dart';

final tula = Municipio(
  id: 'tula',
  nombre: 'Tula',
  descripcionCorta: 'Pueblo Mágico con historia insurgente y tradición artesanal.',
  descripcionLarga: '''
## Historia
Tula es uno de los municipios más antiguos de Tamaulipas, fundado el 22 de julio de 1617 por Juan Bautista de Mollinedo. En 1744 fue elevada a villa por José de Escandón y Helguera.  
Tuvo participación en la Independencia con insurgentes como Mateo Acuña y Bernardo Gómez de Lara. En 1835 se convirtió en ciudad y en el siglo XIX fue un punto estratégico importante para la región.  
Durante la Intervención Francesa, destacó la batalla liderada por Pedro José Méndez, héroe tamaulipeco que defendió la soberanía nacional.  
En el Porfiriato, Tula tuvo auge económico gracias al comercio del ixtle, fibra vegetal utilizada en la industria textil. En la Revolución Mexicana, fue escenario de conflictos armados y reorganización social.  
En 2012 fue nombrado Pueblo Mágico por su valor histórico y cultural, reconocimiento que ha impulsado el turismo y la conservación de su patrimonio.

## Línea del Tiempo
- 1617: Fundación de Tula.  
- 1744: Elevación a villa.  
- 1824: Integración al estado de Tamaulipas.  
- 1835: Nombramiento como ciudad.  
- Siglo XIX: Auge económico y relevancia regional.  
- 2012: Nombramiento como Pueblo Mágico.  
- Actualidad: Crecimiento turístico y cultural.  

## Geografía y Población
Tula se ubica en el suroeste de Tamaulipas, dentro de la Sierra Madre Oriental. Su territorio es muy diverso: montañas, valles, llanuras y zonas semidesérticas.  
El clima varía entre templado, seco y frío en invierno. Cuenta con arroyos y manantiales, aunque no tiene grandes ríos, lo que ha condicionado la vida agrícola y rural.  
Tiene más de 28 mil habitantes, con baja densidad poblacional y comunidades dispersas. Es un municipio mayormente rural, con población joven pero también con presencia de adultos mayores que conservan tradiciones y transmiten conocimientos ancestrales.

## Economía
La economía se basa en:  
- **Agricultura:** maíz, frijol, sorgo y frutas.  
- **Ganadería:** bovinos, caprinos y aves.  
- **Artesanías:** especialmente la cuera tamaulipeca, símbolo cultural del estado.  
- **Comercio y turismo:** en crecimiento por ser Pueblo Mágico.  
También recibe ingresos por remesas enviadas por migrantes. Sin embargo, enfrenta retos como pobreza rural, migración juvenil y falta de infraestructura moderna. El turismo cultural y ecológico se ha convertido en una alternativa para diversificar la economía.

## Cultura
La cultura de Tula está profundamente arraigada en tradiciones coloniales y rurales.  
Destacan las festividades religiosas, la música norteña y la vida comunitaria. Su patrimonio incluye el centro histórico, iglesias antiguas y artesanías como la cuera tamaulipeca.  
La identidad cultural se refleja en la hospitalidad de sus habitantes, en la preservación de sus costumbres y en la transmisión de valores comunitarios.

## Valores
Predominan valores como:  
- Unidad familiar.  
- Cooperación comunitaria.  
- Respeto por tradiciones.  
- Cuidado del medio ambiente.  
- Orgullo por la identidad local.  
Estos valores fortalecen la vida social y cultural del municipio, y se reflejan en la organización de festividades y en la vida cotidiana.

## Costumbres y Fiestas
Las tradiciones giran en torno a la convivencia comunitaria:  
- Reuniones en la plaza principal.  
- Visitas familiares y hospitalidad.  
- Faenas comunitarias.  
- Fiestas religiosas (Semana Santa, Día de Muertos, fiestas patronales).  
- Música norteña y bailes.  
- Uso de vestimenta tradicional como la cuera tamaulipeca.  
Estas prácticas mantienen viva la identidad tulteca y refuerzan el sentido de pertenencia.

## Gastronomía
Destacan platillos tradicionales como:  
- Enchiladas tultecas.  
- Barbacoa de horno.  
- Cabrito.  
- Tamales de elote y de cerdo.  
- Gorditas.  
**Postres:** nieves artesanales, dulces regionales y pan casero.  
La gastronomía está ligada a la vida rural y familiar, siendo un elemento central en festividades y reuniones comunitarias.

## Educación y Sociedad
Cuenta con educación básica en el municipio y opciones de bachillerato como telebachilleratos. Para estudios superiores, los jóvenes suelen salir a otras ciudades como Ciudad Victoria.  
La sociedad es unida, tranquila y tradicional. Predomina la convivencia familiar, el apoyo entre vecinos y el respeto a los adultos mayores. La vida comunitaria se organiza en torno a la plaza, la iglesia y las festividades.

## Turismo
Tula destaca por su arquitectura colonial y paisajes naturales.  
**Principales atractivos:**  
- Iglesia de San Antonio de Padua.  
- Plaza principal.  
- Cerro de la Cruz.  
- Zona arqueológica de Tammapul.  
- Museos y ex haciendas.  
El turismo cultural y natural está en crecimiento, impulsado por el nombramiento de Pueblo Mágico, lo que ha generado inversión en infraestructura turística y promoción cultural.

## Conclusión
Tula es un municipio con gran riqueza histórica, cultural y natural. Su identidad se mantiene viva gracias a sus tradiciones, su gente y su patrimonio.  
Como Pueblo Mágico, representa un importante símbolo de historia y cultura en Tamaulipas, con un futuro prometedor basado en el turismo, la conservación de sus raíces y el fortalecimiento de la economía local.
''',
  imagenAsset: 'assets/images/tula.jpg',
  imagenes: [
    'assets/fotos/Tula.png',
    'assets/fotos/tula-arroyo-loco-WEB.jpg',
    'assets/fotos/tula-tamaulipas.webp',
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

final List<Map<String, dynamic>> lugaresTula = [
  {
    'nombre': 'Iglesia de San Antonio de Padua',
    'descripcion': 'Templo histórico, centro religioso.',
    'lat': 23.0000,
    'lng': -99.7167,
  },
  {
    'nombre': 'Zona arqueológica de Tammapul',
    'descripcion': 'Vestigios prehispánicos de la cultura huasteca.',
    'lat': 22.9833,
    'lng': -99.7000,
  },
  {
    'nombre': 'Cerro de la Cruz',
    'descripcion': 'Mirador natural con vista de la ciudad.',
    'lat': 23.0050,
    'lng': -99.7200,
  },
];