import '../../models/municipio.dart';
import '../../models/monumento.dart';

final llera = Municipio(
  id: 'llera',
  nombre: 'Llera',
  descripcionCorta: 'Primera villa del Nuevo Santander, con historia y naturaleza.',
  descripcionLarga: '''
## Introducción
Llera de Canales es un municipio con gran valor histórico y natural. Fue la primera villa fundada en el antiguo Nuevo Santander (25 de diciembre de 1748) por José de Escandón, y destaca por su riqueza cultural, su entorno natural y la hospitalidad de su gente. Su identidad combina tradiciones, historia y actividades rurales. El municipio está relacionado con la Reserva de la Biosfera El Cielo y cuenta con el Río Guayalejo como principal recurso hídrico.

## Geografía
Se localiza en la región centro-sur de Tamaulipas, entre la Sierra Madre Oriental y el valle del Río Guayalejo. Altitud 291 msnm. Clima semicálido subhúmedo. Vegetación: selva baja, pastizales, matorral.

## Población
Aproximadamente 14,645 habitantes (2020), distribuida entre la cabecera y comunidades rurales.

## Historia
Fundada el 25 de diciembre de 1748 por José de Escandón, siendo la primera villa del Nuevo Santander. Su nombre honra a la familia Llera y posteriormente se añadió “de Canales” en honor al general Servando Canales. Durante la Independencia y la Revolución Mexicana fue testigo de eventos importantes.

## Economía
- **Agricultura:** sorgo, cítricos, cebolla.
- **Ganadería:** bovina, caprina, apicultura.
- **Artesanías:** tejidos, madera, alfarería.
- **Comercio:** pequeños negocios.
- **Turismo:** en crecimiento.

## Turismo
- **Río Guayalejo:** paseos, pesca, balnearios naturales.
- **Plaza Principal:** jardín con kiosco y edificios históricos.
- **Centro histórico:** arquitectura colonial.
- **Reserva de la Biosfera El Cielo** (cercana).
- **Miradores naturales:** vistas a la sierra.
- **Presa de Llera:** pesca de mojarra.

## Gastronomía
Platillos con carne, queso y productos del campo; dulces tradicionales (pemoles, marranitos).

## Cultura y Tradiciones
Fiestas patronales de San José (19 de marzo). Eventos agrícolas y comunitarios. Artesanías: tejidos de palma, talabartería, piezas de madera.

## Educación
Escuelas básicas, bachillerato (COBAT). Para estudios superiores, viajan a Ciudad Victoria.

## Infraestructura
Centro de salud y clínica del IMSS. Carretera pavimentada.

## Personajes Ilustres
- General Servando Canales (1795-1872): militar tamaulipeco.
- Don José Llera (1800-1870): fundador de la primera escuela.
- Profesora María González (1930-2010): promotora cultural.

## Datos Curiosos
- Llera es la villa más antigua de Tamaulipas.
- El general Servando Canales nació aquí.
- El río Guayalejo es fundamental para la agricultura.
- Los "pemoles" son un dulce típico.
- La iglesia de San José data del siglo XVIII.
''',
  imagenAsset: 'assets/images/llera.jpg',
  imagenes: [
    'assets/fotos/llera.png',
    'assets/fotos/Llera1.jpg',
    'assets/fotos/llera2.jpg'
  ],
  poblacion: '14,645 hab.',
  superficie: '800 km²',
  gentilicio: 'Llerense',
  monumentos3D: [
    Monumento(
      nombre: 'Monumento con obelisco',
      descripcion: 'Obelisco en la plaza principal.',
      rutaModelo: 'assets/models/Llera.glb',
      escala: 1.0,
    ),
  ],
  imagenesGastronomia: [],
  imagenesTurismo: [],
);

final List<Map<String, dynamic>> lugaresLlera = [
  {'nombre': 'Río Guayalejo', 'descripcion': 'Paseos, pesca, balnearios.', 'lat': 23.3167, 'lng': -99.0333},
  {'nombre': 'Plaza Principal', 'descripcion': 'Centro social.', 'lat': 23.3150, 'lng': -99.0350},
  {'nombre': 'Centro histórico', 'descripcion': 'Arquitectura colonial.', 'lat': 23.3140, 'lng': -99.0360},
];