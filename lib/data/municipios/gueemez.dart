import '../../models/municipio.dart';
import '../../models/monumento.dart';

final gueemez = Municipio(
  id: 'gueemez',
  nombre: 'Güémez',
  descripcionCorta: 'Ruralidad, historia y naturaleza cerca de la capital.',
  descripcionLarga:  '''
## Introducción
Güémez es un municipio del centro de Tamaulipas, ubicado al pie de la Sierra Madre Oriental, muy cerca de Ciudad Victoria. Su nombre proviene del general José de Güémez. Es una zona de transición entre el valle y la sierra, con paisajes que combinan llanuras agrícolas y montañas boscosas. La presa Las Pilas y el Salto del Tigre son algunos de sus atractivos naturales. Es ideal para el ecoturismo y el descanso.

## Historia
La historia de Güémez se remonta al proceso de colonización del noreste de México en el siglo XVIII, encabezado por José de Escandón. El municipio surgió como un punto estratégico para la organización territorial y el desarrollo agrícola, rodeado de haciendas y rutas comerciales. En el siglo XIX, fue escenario de enfrentamientos durante la Guerra de Reforma y la Intervención Francesa. En el siglo XX, se consolidó como una comunidad rural con fuerte identidad histórica y tradición.

## Geografía y Población
Güémez se localiza en la zona centro del estado de Tamaulipas. Su territorio combina llanuras con áreas cercanas a la Sierra Madre Oriental, lo que le proporciona diversidad natural. Cuenta con ríos, presas (Las Pilas) y zonas agrícolas.  
Población: aproximadamente 15,000 habitantes (2020), con baja densidad, principalmente rural.

## Economía
- **Agricultura:** Maíz, sorgo, frijol, cítricos, hortalizas.  
- **Ganadería:** Bovina, caprina, ovina.  
- **Comercio local:** Pequeños negocios.  
- **Turismo:** Ecoturismo en la sierra.

## Cultura y Tradiciones
**Fiestas:** Patronales en honor a San José (19 de marzo), Semana Santa, Día de Muertos.  
**Gastronomía:** Carne asada, cabrito, tamales serranos, discada, atole de masa.  
**Artesanías:** Tejidos de palma, talabartería.

## Turismo y Atractivos
- **El Salto del Tigre:** Cascada y poza natural, ideal para senderismo.  
- **Presa Las Pilas:** Pesca, paseos en lancha, camping.  
- **Sierra Madre Oriental:** Miradores, caminatas.  
- **Parroquia de San José:** Templo del siglo XVIII.  
- **Río Santa Bárbara:** Paseos y pesca.

## Educación y Salud
Cuenta con escuelas de nivel básico y medio superior (COBAT). Para estudios superiores, los jóvenes acuden a Ciudad Victoria. En salud, un centro de salud y clínica del IMSS.

## Personajes Ilustres
- **General José de Güémez (1800-1860):** Militar tamaulipeco.  
- **Don Manuel López (1920-2000):** Promotor de la agricultura local.  
- **Profesora Carmen García (1930-2010):** Fundadora de la escuela secundaria.

## Datos Curiosos
- El Salto del Tigre es una cascada estacional.  
- La presa Las Pilas es ideal para la pesca de lobina.  
- En la sierra se pueden observar venados y armadillos.  
- El municipio es conocido por sus tamales serranos.  
- La parroquia de San José data de 1780.

## Perspectivas Futuras
Se busca impulsar el ecoturismo, mejorar los caminos y apoyar la producción artesanal.
''',
  imagenAsset: 'assets/images/gueemez.jpg',
  imagenes: [
    'assets/fotos/guemez.png',
    'assets/fotos/guemez1.jpg',
    'assets/fotos/guemez2.jpg',
  ],
  poblacion: '7,000 hab.',
  superficie: '450 km²',
  gentilicio: 'Güemecense',

  monumentos3D: [
    Monumento(
      nombre: 'Monumento a la Patria',
      descripcion: 'Un monumento icónico de la ciudad de Guemez.',
      rutaModelo: 'assets/models/Guemez.glb',
      escala: 1.0,
    ),
  ],
);
final List<Map<String, dynamic>> lugaresGueemez = [
  {
    'nombre': 'El Salto del Tigre',
    'descripcion': 'Cascada y poza natural.',
    'lat': 23.9833,
    'lng': -99.2667,
  },
  {
    'nombre': 'Presa Las Pilas',
    'descripcion': 'Pesca y recreación.',
    'lat': 24.0000,
    'lng': -99.2500,
  },
  {
    'nombre': 'Parroquia de San José',
    'descripcion': 'Templo histórico.',
    'lat': 23.9667,
    'lng': -99.2833,
  },
];