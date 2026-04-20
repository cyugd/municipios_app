import '../../models/municipio.dart';
import '../../models/monumento.dart';

final casas = Municipio(
  id: 'casas',
  nombre: 'Casas',
  descripcionCorta: 'Historia colonial y tradiciones rurales en el centro de Tamaulipas.',
  descripcionLarga:  '''
## Introducción
Casas es un municipio ubicado en el centro del estado de Tamaulipas, fundado en 1770 con el nombre de Croix. Su nombre actual honra a Juan Bautista de las Casas, insurgente de la Independencia. Es una comunidad rural que ha conservado sus tradiciones, su arquitectura colonial y su identidad cultural. Rodeado por la Sierra de Tamaulipas, ofrece paisajes naturales ideales para el descanso y el ecoturismo. Es un lugar ideal para quienes buscan escapar del ruido y disfrutar de la tranquilidad del campo.

## Historia
La historia de Casas se remonta al periodo de colonización del noreste de la Nueva España, cuando se establecieron poblaciones estratégicas para consolidar el dominio español. En 1770 se fundó con el nombre de Croix en honor al virrey Carlos Francisco de Croix. Posteriormente, en 1827, se le dio el nombre actual en reconocimiento a Juan Bautista de las Casas, quien participó en la lucha por la Independencia de México. A lo largo de los años, el municipio ha evolucionado conservando su esencia histórica y su identidad como comunidad rural. Durante la Revolución Mexicana, hubo reparto de tierras y formación de ejidos.

## Geografía y Población
Casas se localiza en la parte media de Tamaulipas, con una geografía que combina zonas montañosas, semiplanas y llanuras. Su territorio forma parte de la Sierra de Tamaulipas, lo que le brinda paisajes naturales variados. Tiene una población aproximada de 4,143 habitantes y una densidad baja, lo que refleja su carácter rural. El clima es semiárido y favorece actividades agrícolas y ganaderas. La vegetación incluye matorral, pastizales, mezquite y huizache. La fauna: venado, coyote, armadillo, conejo, aves canoras.  
La cabecera municipal cuenta con servicios básicos y la mayoría de las viviendas son de adobe o ladrillo.

## Economía
- **Agricultura:** Maíz, sorgo, frijol.  
- **Ganadería:** Bovina y caprina. Producción de queso y carne seca.  
- **Comercio local:** Pequeños negocios que abastecen a la población.  
- **Potencial:** Turismo y producción forestal.

## Cultura y Tradiciones
**Fiestas:** Patronal de la Virgen de la Purísima Concepción (8 de diciembre) con procesiones, misas, danzas, jaripeos, carreras de caballos y juegos mecánicos. También se celebra el aniversario de la fundación (noviembre) y las fiestas patrias.  
**Gastronomía:** Carne asada, tamales, gorditas de maíz, asado de puerco, dulces tradicionales (calabaza, camote).  
**Artesanías:** Talabartería, tejidos de palma, bordados.  
**Música:** Norteña y banda.

## Turismo y Atractivos
- **Parroquia de la Purísima Concepción:** Templo del siglo XIX, de estilo neoclásico.  
- **Centro histórico:** Plaza principal con kiosco y casas de adobe con techos de teja.  
- **Sierra de Tamaulipas:** Senderismo, miradores, observación de aves (garzas, águilas).  
- **Rutas rurales:** Recorridos por ejidos y rancherías, donde se puede conocer la vida campesina.  
- **Presa de Casas:** Pesca de mojarra y lobina.  
- **Grutas de la Sierra:** Pequeñas cuevas con formaciones calcáreas (poco exploradas).

## Educación y Salud
Cuenta con preescolar, primaria, telesecundaria y telebachillerato. Para estudios superiores, los jóvenes se trasladan a Ciudad Victoria. En salud, un centro de salud rural.

## Personajes Ilustres
- **Juan Bautista de las Casas (1760-1811):** Insurgente que dio nombre al municipio.  
- **Don José María González (1880-1950):** Promotor de la agricultura local.  
- **Profesora Ana María López (1930-2000):** Fundadora de la escuela primaria.

## Datos Curiosos
- El nombre original "Croix" se debe al virrey.  
- En la sierra se han encontrado pinturas rupestres.  
- Las casas de adobe son características del municipio.  
- La fiesta de la Purísima Concepción atrae visitantes de la región.  
- El municipio cuenta con una pequeña zona de manantiales.

## Perspectivas Futuras
Se busca impulsar el turismo de naturaleza, mejorar los caminos rurales, apoyar la producción de queso artesanal y fomentar la conservación de las tradiciones.
''',
  imagenAsset: 'assets/images/casas.jpg',
  imagenes: [
    'assets/fotos/casas.png',
    'assets/fotos/casaa1.jpg',
    'assets/fotos/casas2.webp'
  ],
  poblacion: '4,143 hab.',
  superficie: '1,500 km²',
  gentilicio: 'Casense',

  monumentos3D: [
    Monumento(
      nombre: 'Gazebo de la plaza principal',
      descripcion: 'Un monumento icónico de la ciudad de Casas.',
      rutaModelo: 'assets/models/Casas.glb',
      escala: 1.0,
    ),
  ],
);

final List<Map<String, dynamic>> lugaresCasas = [
  {
    'nombre': 'Parroquia de la Purísima Concepción',
    'descripcion': 'Templo del siglo XIX.',
    'lat': 23.6667,
    'lng': -98.7333,
  },
  {
    'nombre': 'Plaza Principal',
    'descripcion': 'Centro de convivencia social.',
    'lat': 23.6650,
    'lng': -98.7340,
  },
  {
    'nombre': 'Sierra de Tamaulipas',
    'descripcion': 'Área natural para senderismo.',
    'lat': 23.7000,
    'lng': -98.7000,
  },
];