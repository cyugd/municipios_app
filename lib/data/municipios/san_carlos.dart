import '../../models/municipio.dart';
import '../../models/monumento.dart';

final san_carlos = Municipio(
  id: 'san_carlos',
  nombre: 'San Carlos',
  descripcionCorta: 'Municipio con historia minera y tradiciones rurales en la Sierra de San Carlos.',
  descripcionLarga: '''
## Introducción
San Carlos es un municipio rodeado por la Sierra de San Carlos, con gran riqueza natural y paisajes montañosos que lo convierten en un destino atractivo para el ecoturismo. Fue fundado en 1766 y llegó a ser capital del Nuevo Santander, lo que le otorgó relevancia política y administrativa en la época colonial.  
Su desarrollo histórico pasó de la minería a la agricultura, ganadería y artesanías, conservando tradiciones y atrayendo turismo por su naturaleza. Hoy en día, San Carlos mantiene una identidad rural fuerte, con valores comunitarios y un entorno natural que lo distingue dentro de Tamaulipas.

## Historia
Fundado por José de Escandón en 1766, se asentaron familias dedicadas al campo y la minería. San Carlos fue capital del Nuevo Santander entre 1769 y 1811, lo que le dio gran importancia en la organización territorial de la región.  
Durante el siglo XVIII tuvo relevancia minera, especialmente en la extracción de mármol y otros recursos de la sierra. En 1869 cambió su nombre a Villa de Arteaga, en honor al general José María Arteaga.  
La historia de San Carlos refleja la transición de un centro político y minero a una comunidad rural que conserva sus tradiciones y fortalece su identidad cultural.

## Geografía
Se encuentra en el centro-norte de Tamaulipas, dentro de la Sierra de San Carlos. Su territorio es montañoso, con cañones, lomeríos y vegetación semiseca.  
El Cerro Peña Nevada, con más de 1,800 metros de altura, es la elevación más destacada y uno de los puntos más altos del estado. La sierra alberga especies de flora como pinos, encinos y magueyes, además de fauna como venados, zorros y aves silvestres.  
El clima es templado con variaciones según la altitud, lo que favorece actividades como el senderismo y la producción agrícola en valles fértiles.

## Ubicaciones
El centro concentra la vida social y cultural del municipio.  
**Sitios destacados:**  
- Parroquia de San Carlos Borromeo: templo histórico y religioso.  
- Casa del Capitán Lores (Museo del Mezcal): espacio cultural que preserva la tradición artesanal del mezcal.  
- Plaza Principal: lugar de convivencia comunitaria y escenario de festividades.  
Además, existen comunidades rurales que mantienen tradiciones agrícolas y artesanales.

## Economía
La economía es rural y se basa en agricultura, ganadería y extracción de mármol. Se impulsa también la producción artesanal de mezcal, que se ha convertido en un símbolo de identidad local.  
**Principales actividades económicas:**  
- **Agricultura:** maíz, sorgo, frijol y cártamo.  
- **Ganadería:** bovino, caprino y ovino, con producción de leche y queso artesanal.  
- **Mármol:** extracción a pequeña escala para construcción y artesanías.  
- **Mezcal:** producción artesanal reconocida en la región, con técnicas tradicionales transmitidas por generaciones.  
El comercio es local y regional, sin industrias ni maquiladoras relevantes, lo que mantiene el carácter rural del municipio.

## Cultura
La comunidad es rural y familiar, con valores de trabajo, cooperación y orgullo por las tradiciones.  
**Principales festividades:**  
- Fiesta de San Carlos Borromeo: celebración religiosa con procesiones y actividades comunitarias.  
- Feria del Mezcal: evento que promueve la producción artesanal y la cultura local.  
- Semana Santa: con actividades religiosas y convivencias familiares.  
La música norteña, los bailes regionales y las convivencias comunitarias forman parte de la vida cultural cotidiana.

## Gastronomía
Se caracteriza por ingredientes locales y técnicas tradicionales.  
**Platillos típicos:**  
- Asado de puerco.  
- Cabrito al pastor.  
- Tamales de elote.  
- Queso de leche de cabra.  
- Mezcal artesanal.  
- Pan de pulque.  
La gastronomía refleja la unión entre la tradición rural y los productos de la sierra, siendo un atractivo para visitantes.

## Educación
Cuenta con escuelas de nivel básico y medio. Para estudios superiores, los jóvenes se trasladan a ciudades cercanas como Ciudad Victoria.  
Se promueven programas de apoyo y becas para evitar la deserción escolar, además de actividades culturales y deportivas en las escuelas que refuerzan la identidad comunitaria.

## Turismo
El turismo se centra en la naturaleza, las montañas y actividades al aire libre.  
**Principales atractivos:**  
- Sierra de San Carlos: senderismo, paisajes y observación de flora y fauna.  
- Parroquia de San Carlos Borromeo: patrimonio religioso y cultural.  
- Plaza Principal: espacio social y cultural.  
- Museo del Mezcal: muestra de la tradición artesanal y la historia local.  
El turismo ecológico y cultural es una oportunidad de desarrollo sostenible para el municipio.

## Retos
- Infraestructura limitada y servicios básicos insuficientes.  
- Problemas ambientales como deforestación y erosión.  
- Seguridad rural con episodis aislados.  
- Migración de jóvenes hacia ciudades más grandes en busca de empleo y educación.  

## Conclusión
San Carlos es un municipio pequeño pero con gran riqueza histórica, cultural y natural. Mantiene fuerte identidad local y tiene potencial de desarrollo sostenible a pesar de sus limitaciones.  
El futuro de San Carlos depende de la capacidad de su comunidad para preservar sus tradiciones y aprovechar sus recursos naturales de manera responsable, fortaleciendo el turismo ecológico y la producción artesanal como motores de crecimiento.
''',
  imagenAsset: 'assets/images/san_carlos.jpeg',
  imagenes: [
    'assets/fotos/San_carlos.png',
    'assets/fotos/sancarlos2.jpg',
    'assets/fotos/sancarlos07.jpg'
  ],
  poblacion: '9,000 hab.',
  superficie: '2,900 km²',
  gentilicio: 'Sancarlense',

  monumentos3D: [
    Monumento(
      nombre: 'Catedral de San Carlos',
      descripcion: 'Un monumento icónico de la ciudad de San Carlos.',
      rutaModelo: 'assets/models/Sancarlos.glb',
      escala: 1.0,
    ),
  ],
);

final List<Map<String, dynamic>> lugaresSanCarlos = [
  {
    'nombre': 'Cerro Peña Nevada',
    'descripcion': 'Uno de los puntos más altos de Tamaulipas, ideal para senderismo.',
    'lat': 24.4167,
    'lng': -99.2000,
  },
  {
    'nombre': 'Parroquia de San Carlos Borromeo',
    'descripcion': 'Templo histórico y centro de la vida religiosa.',
    'lat': 24.4000,
    'lng': -99.2000,
  },
  {
    'nombre': 'Casa del Capitán Lores (Museo del Mezcal)',
    'descripcion': 'Espacio cultural que preserva la tradición artesanal del mezcal.',
    'lat': 24.4020,
    'lng': -99.2020,
  },
];
