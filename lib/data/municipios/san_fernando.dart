import '../../models/municipio.dart';
import '../../models/monumento.dart';

final san_fernando = Municipio(
  id: 'san_fernando',
  nombre: 'San Fernando',
  descripcionCorta: 'Municipio con historia, tradición y playas vírgenes.',
  descripcionLarga:  '''
## Historia
San Fernando fue fundado el 19 de marzo de 1749 por José de Escandón como parte de la colonización del Nuevo Santander, bajo el nombre de Villa de San Fernando de la Llave. Originalmente se asentó cerca de la Barra de Salinas, pero debido a inundaciones se trasladó a su ubicación actual.  
Las primeras familias provenían del Nuevo Reino de León y la actividad económica principal fue la ganadería, complementada con pesca y sal. Durante la época colonial, los franciscanos introdujeron educación y evangelización, dejando una huella cultural y religiosa que aún se conserva.  
San Fernando fue elevada a ciudad en 1980 y ha pasado por diversas etapas históricas: época colonial, Independencia, Revolución Mexicana, siglo XX y siglo XXI, adaptándose a cambios sociales, económicos y culturales. Su historia refleja la transición de una villa agrícola y pesquera a un municipio con identidad propia y relevancia regional.

## Geografía y Población
El municipio tiene una extensión de 6,847.45 km², siendo el más grande de Tamaulipas. Su relieve es mayormente plano (80%) y semiplano (20%), con clima semicálido subhúmedo y periodos secos intensos.  
El uso del suelo se destina principalmente a agricultura (52%), con cuerpos de agua (16%) y zonas urbanas (0.5%). Predomina el matorral como vegetación y existen especies de fauna como venados, coyotes y aves migratorias.  
En 2020, tenía 51,405 habitantes, con densidad de 7.43 hab/km² y población indígena y afrodescendiente minoritaria. La población se distribuye en comunidades rurales y urbanas, con fuerte arraigo en actividades del campo y la pesca. La migración hacia Estados Unidos y ciudades grandes es un fenómeno constante, lo que ha influido en la dinámica social y económica.

## Economía
San Fernando tiene una economía diversificada:  
- **Sector primario:** Agricultura (maíz, sorgo, frijol, algodón), ganadería (bovino, caprino, ovino, porcino), pesca artesanal y silvicultura.  
- **Sector secundario:** Industria manufacturera, construcción y servicios de electricidad y agua.  
- **Sector terciario:** Comercio local y regional, servicios educativos, de salud, transporte, hoteles y restaurantes.  

El comercio exterior es moderado, con importaciones principalmente desde Estados Unidos y China. Las actividades económicas más representativas incluyen oficinas gubernamentales, servicios religiosos, educación, comercio, restauración y transporte.  
En años recientes, se han impulsado proyectos de turismo rural y costero, así como producción artesanal de alimentos y productos locales, buscando diversificar la economía y generar empleo.

## Cultura y Valores
San Fernando mantiene una identidad rural ligada a la agricultura, ganadería y pesca. La música norteña y la polka son representativas de la región, acompañando celebraciones comunitarias y ferias locales.  
La comunidad valora el trabajo, la solidaridad, la cooperación, la hospitalidad, el respeto por la tradición y el entorno natural, así como la unidad y el humanismo.  
Se celebran festividades como ferias locales, Día de Muertos, eventos culturales y actividades en espacios costeros y rurales, promoviendo la convivencia y la transmisión de tradiciones. La Casa de la Cultura organiza talleres de música, danza y artes plásticas que refuerzan la identidad cultural.

## Costumbres
Las costumbres sociales incluyen reuniones familiares, convivencia en torno a comidas, pesca o ganadería, festividades patronales y ferias municipales.  
En la Feria Tamaulipas 2025, el stand de San Fernando ofertó degustaciones de mariscos, carne asada y productos locales, mostrando la riqueza gastronómica y cultural del municipio.  
Las festividades patronales y comunitarias refuerzan la unión social y la transmisión de valores, siendo espacios donde se mezclan tradición, religión y convivencia.

## Gastronomía
La cocina combina productos del campo y del mar, destacando:  
- Cabrito al pastor.  
- Carne asada norteña.  
- Camarón sanfernandense.  
- Pescado a la talla.  
- Asado de puerco.  
La gastronomía refleja la identidad local y la vida comunitaria, siendo un atractivo turístico y cultural. Los mariscos frescos y las carnes asadas son parte esencial de las reuniones familiares y festividades.

## Educación
Cuenta con escuelas de nivel básico y medio (primarias, secundarias y privadas), así como bibliotecas y centros culturales.  
La Casa de la Cultura ofrece talleres de música, danza y arte, fomentando la participación juvenil y la preservación de tradiciones. Aunque existe cobertura educativa, aún hay retos en infraestructura y acceso a educación superior, lo que obliga a muchos jóvenes a trasladarse a ciudades cercanas.

## Turismo y Lugares Emblemáticos
San Fernando destaca por su combinación de historia y naturaleza:  
- **Plaza Benito Juárez:** punto central de convivencia y comercio.  
- **Playa Carbonera:** actividades de descanso, pesca y esparcimiento.  
- **Faro Punta de Piedra:** atractivo natural y paisajístico.  
Además, sus zonas rurales y costeras ofrecen experiencias de turismo ecológico y cultural, con potencial para atraer visitantes interesados en la historia y la naturaleza.

## Conclusión
San Fernando combina historia, tradición y naturaleza. Su comunidad mantiene fuertes raíces culturales y valores locales, mientras que sus espacios emblemáticos, zonas rurales y costeras muestran un municipio con identidad, cultura y atractivos turísticos relevantes en el norte de Tamaulipas.  
El futuro de San Fernando depende de la capacidad de su población y autoridades para equilibrar el desarrollo económico con la preservación de su entorno natural y cultural, consolidándose como un municipio con gran potencial en turismo, agricultura y cohesión social.
''',
  imagenAsset: 'assets/images/san_fernando.jpg',
  imagenes: [
    'assets/fotos/San_fernando.png',
    'assets/fotos/San_Fernando_Centro,_Tamaulipas.jpg',
    'assets/fotos/san fernando.jpg',

  ],
  poblacion: '51,405 hab.',
  superficie: '6,847.45 km²',
  gentilicio: 'Sanfernandense',

  monumentos3D: [
    Monumento(
      nombre: 'Gazebo plaza principal',
      descripcion: 'Un monumento icónico de la ciudad de San Fernando.',
      rutaModelo: 'assets/models/Sanfernando.glb',
      escala: 1.0,
    ),
  ],
);

final List<Map<String, dynamic>> lugaresSanFernando = [
  {
    'nombre': 'Playa Carbonera',
    'descripcion': 'Playa virgen para descanso y pesca.',
    'lat': 24.8000,
    'lng': -97.9000,
  },
  {
    'nombre': 'Faro Punta de Piedra',
    'descripcion': 'Atractivo natural con vistas al mar.',
    'lat': 24.8200,
    'lng': -97.8800,
  },
  {
    'nombre': 'Plaza Benito Juárez',
    'descripcion': 'Centro de convivencia social y cultural.',
    'lat': 24.8500,
    'lng': -98.1500,
  },
];

