import '../../models/municipio.dart';
import '../../models/monumento.dart';

final mier = Municipio(
  id: 'mier',
  nombre: 'Mier',
  descripcionCorta: 'Pueblo Mágico con historia, arquitectura colonial y tradiciones.',
  descripcionLarga:  '''
## Introducción
Mier es un municipio situado en el noreste de Tamaulipas, a orillas del Río Bravo, en la región de la Frontera Chica. Es conocido como “Pueblo Mágico” desde 2007, por su impresionante arquitectura colonial, sus tradiciones vivas y su historia ligada a la independencia y la revolución. Caminar por sus calles empedradas es transportarse al México virreinal. Su gastronomía, artesanías y la calidez de su gente lo convierten en un destino único.

## Historia
Mier fue fundado el 6 de marzo de 1753 por José de Escandón con el nombre de Villa de la Purísima Concepción de Mier. Su nombre proviene de Francisco de Mier y Torre, gobernador de Nuevo León.  
Durante la Independencia, fue un bastión insurgente. En 1817, el héroe insurgente Francisco Xavier Mina pasó por la región. En 1846, durante la Guerra México-Estados Unidos, la población defendió su territorio.  
En 2007 fue nombrado Pueblo Mágico, y aunque sufrió daños por inundaciones en 2010, su comunidad lo reconstruyó preservando su esencia.

## Geografía y Población
Se localiza en el norte de Tamaulipas, en la ribera del Río Bravo, frente a la ciudad de Roma, Texas. El clima es seco extremoso, con veranos muy calurosos e inviernos templados.  
Población: aproximadamente 6,400 habitantes (2020), con una fuerte identidad comunitaria.

## Economía
- **Agricultura:** Maíz, sorgo, frijol, hortalizas.  
- **Ganadería:** Bovina, caprina.  
- **Turismo:** Pueblo Mágico, arquitectura, gastronomía.  
- **Comercio:** Tiendas de artesanías, hoteles, restaurantes.  
- **Pesca** en el río.

## Cultura y Tradiciones
**Fiestas patronales (Inmaculada Concepción, 8 de diciembre):** Procesiones, danzas, pirotecnia.  
**Festival Internacional de la Música (marzo).**  
**Día de la Candelaria (2 de febrero):** Danza de los Matlachines.  
**Semana Santa:** Representaciones del viacrucis.  
**Artesanías:** Bordados de punto de cruz, cerámica, talabartería, repujado en plata.  
**Gastronomía:** Cabrito al pastor, carne seca con huevo, tamales, enchiladas norteñas, asado de puerco; postres: glorias, jamoncillos, dulce de calabaza, pan de pulque.  
**Leyendas:** Se dice que hay túneles subterráneos que conectan la iglesia con el río.

## Turismo y Atractivos
- **Parroquia de la Inmaculada Concepción:** Construida en el siglo XVIII, joya del barroco.  
- **Museo de la Batalla de Mier:** Recuerda la gesta insurgente.  
- **Malecón del Río Álamo:** Paseo con vistas al río.  
- **Casonas coloniales:** Con patios y arcos de cantera.  
- **Puente Internacional Mier-Roma.**  
- **Plaza principal con kiosco.**  
- **Zona arqueológica de El Sabinito** (cerca).  
- **Capilla de San Juan Bautista:** Pequeña ermita.

## Educación y Salud
Cuenta con escuelas de nivel básico y medio superior (COBAT). Para estudios superiores, los jóvenes viajan a Reynosa o Nuevo Laredo. En salud, un centro de salud y clínica del IMSS.

## Personajes Ilustres
- **Francisco de Mier y Torre (1700-1760):** Gobernador de Nuevo León.  
- **Francisco Xavier Mina (1789-1817):** Insurgente.  
- **Don José María López (1900-1980):** Promotor cultural.

## Datos Curiosos
- Mier fue declarado Pueblo Mágico en 2007.  
- Las inundaciones de 2010 dañaron parte del pueblo, pero fue reconstruido.  
- La danza de los Matlachines es una tradición prehispánica.  
- El puente internacional hacia Roma, Texas, es un cruce pequeño.  
- Las casonas tienen techos de teja y patios con flores.

## Perspectivas Futuras
Se busca consolidar el turismo, mejorar la infraestructura y preservar el patrimonio histórico.
''',
  imagenAsset: 'assets/images/mier.jpg',
  imagenes: [
    'assets/fotos/Mier.png',
    'assets/fotos/mier1.jpg',
    'assets/fotos/mier2.jpg',
  ],
  poblacion: '5,000 hab.',
  superficie: '300 km²',
  gentilicio: 'Mierense',

  monumentos3D: [
    Monumento(
      nombre: 'Mi heroica',
      descripcion: 'Un monumento icónico de la ciudad de Mier.',
      rutaModelo: 'assets/models/Mier.glb',
      escala: 1.0,
    ),
  ],
);
final List<Map<String, dynamic>> lugaresMier = [
  {
    'nombre': 'Parroquia de la Inmaculada Concepción',
    'descripcion': 'Templo barroco del siglo XVIII.',
    'lat': 26.4167,
    'lng': -99.1500,
  },
  {
    'nombre': 'Museo de la Batalla de Mier',
    'descripcion': 'Historia insurgente.',
    'lat': 26.4170,
    'lng': -99.1520,
  },
  {
    'nombre': 'Malecón del Río Álamo',
    'descripcion': 'Paseo frente al río.',
    'lat': 26.4180,
    'lng': -99.1480,
  },
  {
    'nombre': 'Plaza Principal',
    'descripcion': 'Centro de la vida social.',
    'lat': 26.4160,
    'lng': -99.1490,
  },
];
