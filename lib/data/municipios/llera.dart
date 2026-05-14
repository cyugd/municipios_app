import '../../models/municipio.dart';
import '../../models/monumento.dart';

final llera = Municipio(
  id: 'llera',
  nombre: 'Llera',
  descripcionCorta: 'Primera villa del Nuevo Santander, con historia y naturaleza.',
  descripcionLarga:  '''
## Introducción
Llera de Canales es un municipio con gran valor histórico y natural. Fue la primera villa fundada en el antiguo Nuevo Santander (25 de diciembre de 1748) por José de Escandón, y destaca por su riqueza cultural, su entorno natural y la hospitalidad de su gente. Su identidad combina tradiciones, historia y actividades rurales. El municipio está relacionado con la Reserva de la Biosfera El Cielo y cuenta con el Río Guayalejo como principal recurso hídrico. Es un lugar ideal para el ecoturismo.

## Historia
Fue fundada el 25 de diciembre de 1748 por José de Escandón, siendo la primera villa del Nuevo Santander. Su nombre honra a la familia Llera y posteriormente se añadió “de Canales” en honor al general Servando Canales. A lo largo del tiempo ha mantenido su ubicación original, conservando su identidad histórica. Durante la Independencia y la Revolución Mexicana, la villa fue testigo de eventos importantes. En el siglo XX, la construcción de la carretera y el desarrollo agrícola impulsaron la economía.

## Geografía y Población
Se localiza en la región centro-sur del estado de Tamaulipas, entre la Sierra Madre Oriental y el valle del Río Guayalejo. Su altitud aproximada es de 291 metros sobre el nivel del mar. El clima es semicálido subhúmedo. La vegetación incluye selva baja, pastizales y matorral.  
Población: aproximadamente 14,645 habitantes (2020), distribuida entre la cabecera municipal y comunidades rurales.

## Economía
- **Agricultura:** Sorgo, cítricos, cebolla, productos de riego del río Guayalejo.  
- **Ganadería:** Bovina, caprina, producción de miel (apicultura).  
- **Artesanías:** Tejidos, madera, alfarería.  
- **Comercio:** Pequeños negocios, mercados locales.  
- **Turismo:** En crecimiento.

## Cultura y Tradiciones
**Fiestas:** Patronales en honor a San José (19 de marzo), eventos agrícolas y comunitarios.  
**Gastronomía:** Platillos regionales con carne, queso y productos del campo; dulces tradicionales (pemoles, marranitos).  
**Artesanías:** Tejidos de palma, talabartería, piezas de madera.

## Turismo y Atractivos
- **Río Guayalejo:** Paseos, pesca, balnearios naturales.  
- **Plaza Principal:** Jardín con kiosco y edificios históricos.  
- **Centro histórico:** Arquitectura colonial.  
- **Reserva de la Biosfera El Cielo** (cercana).  
- **Miradores naturales:** Vistas a la sierra.  
- **Presa de Llera:** Pesca de mojarra.

## Educación y Salud
Cuenta con escuelas de nivel básico y medio superior (COBAT). Para estudios superiores, los jóvenes viajan a Ciudad Victoria. En salud, un centro de salud y clínica del IMSS.

## Personajes Ilustres
- **General Servando Canales (1795-1872):** Militar tamaulipeco.  
- **Don José Llera (1800-1870):** Fundador de la primera escuela.  
- **Profesora María González (1930-2010):** Promotora cultural.

## Datos Curiosos
- Llera es la villa más antigua de Tamaulipas.  
- El general Servando Canales nació aquí.  
- El río Guayalejo es fundamental para la agricultura.  
- Los "pemoles" son un dulce típico de la región.  
- La iglesia de San José data del siglo XVIII.

## Perspectivas Futuras
Se busca impulsar el turismo histórico y natural, mejorar la infraestructura y evitar la migración juvenil.
''',

  imagenAsset: 'assets/images/llera.jpeg',


  imagenes: [
    'assets/fotos/llera.png',
    'assets/fotos/Llera1.jpg',
    'assets/fotos/llera2.jpg'
  ],
  poblacion: '5,000 hab.',
  superficie: '800 km²',
  gentilicio: 'Llerense',

  monumentos3D: [
    Monumento(
      nombre: 'Monumento con obelisco',
      descripcion: 'Un monumento icónico de la ciudad de Llera.',
      rutaModelo: 'assets/models/Llera.glb',
      escala: 1.0,
    ),
  ],
);
final List<Map<String, dynamic>> lugaresLlera = [
  {
    'nombre': 'Río Guayalejo',
    'descripcion': 'Paseos, pesca, balnearios.',
    'lat': 23.3167,
    'lng': -99.0333,
  },
  {
    'nombre': 'Plaza Principal',
    'descripcion': 'Centro social.',
    'lat': 23.3150,
    'lng': -99.0350,
  },
  {
    'nombre': 'Centro histórico',
    'descripcion': 'Arquitectura colonial.',
    'lat': 23.3140,
    'lng': -99.0360,
  },
];