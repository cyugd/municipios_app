import '../../models/municipio.dart';
import '../../models/monumento.dart';

final san_nicolas = Municipio(
  id: 'san_nicolas',
  nombre: 'San Nicolás',
  descripcionCorta: 'Municipio con historia minera y tradiciones rurales en la Sierra de San Carlos.',
  descripcionLarga: '''
## Introducción
San Nicolás, Tamaulipas, es un municipio con historia y tradiciones muy arraigadas. Fundado el 15 de febrero de 1750 por el Coronel José de Escandón y Helguera, lleva el nombre de su santo patrono, San Nicolás de Bari. Originalmente villa agrícola, ha mantenido hasta hoy un estilo de vida rural y tranquilo, con fuerte identidad comunitaria y apego a sus raíces religiosas y culturales.

## Geografía
Ubicado en la Sierra de San Carlos, San Nicolás tiene un relieve montañoso que limita el acceso a infraestructura moderna. Su clima es semiárido, con temperaturas que oscilan entre 6 °C y 45 °C. La vegetación incluye matorrales, selva baja caducifolia, mezquite, huizache, maguey y cactus, con zonas boscosas en áreas altas. Fauna: venado, coyote, armadillo, zorro.

## Población
La población en 2020 era de 926 habitantes, principalmente niños y jóvenes. Comunidad pequeña pero con gran cohesión social. Migración frecuente hacia ciudades más grandes.

## Historia
Desde su fundación in 1750, San Nicolás se consolidó como una villa agrícola de autoconsumo. En el siglo XIX apoyó movimientos insurgentes. Durante la Revolución Mexicana, varios habitantes se unieron al movimiento constitucionalista. A lo largo del tiempo ha conservado su estructura tradicional y el carácter agrícola de su economía.

## Economía
- **Agricultura:** maíz, frijol, calabaza, sorgo.
- **Ganadería:** bovino, caprino, ovino.
- **Productos:** carne seca, queso, crema, cuero.
- **Comercio local.**

## Turismo
- **Parroquia de Nuestra Señora de Monserrat:** iglesia del siglo XIX.
- **Parroquia de San Nicolás Tolentino (1769).**
- **Presidencia Municipal (1760).**
- **Cruz en el Ejido El Palmar:** símbolo de fe y mirador.
- **Ruinas de minería:** restos de actividad minera del siglo XVIII.

## Gastronomía
Cabrito asado, carne seca o machacado con huevo, tamales norteños, asado de puerco, pan de horno, frijoles charros, empanadas dulces o de carne.

## Cultura y Tradiciones
Fiestas patronales de San Nicolás de Bari (6 de diciembre). Fiesta del Cabrito. Feria del Campo. Semana Santa. Día de la Virgen de Guadalupe. Música norteña y banda. Artesanías: tejidos de palma, bordados, talabartería.

## Educación
Preescolar, primaria, telesecundaria. Educación media superior en línea. Programas de alfabetización y becas.

## Infraestructura
Centro de salud rural. Caminos rurales. Servicios básicos limitados.

## Personajes Ilustres
- Fundadores de la villa.
- Don José María González (1850-1920): promotor local.

## Datos Curiosos
- El municipio fue fundado el mismo día que otras villas de la región.
- Las ruinas de minería son vestigios del siglo XVIII.
- La Cruz del Ejido El Palmar es un mirador natural.
- Se conservan casonas de adobe y teja.
- Las fiestas patronales incluyen cabalgatas.
''',
  imagenAsset: 'assets/images/san_nicolas.jpg',
  imagenes: [
    'assets/fotos/San_nicolas.png',
    'assets/fotos/san nicolas1.jpg',
    'assets/fotos/san nicolas2.jpg'
  ],
  poblacion: '926 hab.',
  superficie: '200 km²',
  gentilicio: 'San Nicolás',
  monumentos3D: [
    Monumento(
      nombre: 'Tumba emblemática de San Nicolas',
      descripcion: 'Monumento histórico.',
      rutaModelo: 'assets/models/Sannicolas.glb',
      escala: 1.0,
    ),
  ],
  imagenesGeografia: [
    'assets/Ciudad_geografia/San Nicolás_geografia.png',
  ],
  imagenesGastronomia: [
    'assets/Ciudad_gastronomia/San Nicolás_gastronomia.jpg',
    'assets/Ciudad_gastronomia/San Nicolás_gastronomia2.jpg',
    'assets/Ciudad_gastronomia/San Nicolás_gastronomia3.jpg',
    'assets/Ciudad_gastronomia/San Nicolás_gastronomia4.jpg',
  ],
  imagenesTurismo: [
    'assets/Ciudad_Turismo/San Nicolás_turismo.jpg',
    'assets/Ciudad_Turismo/San Nicolás_turismo2.jpg',
  ],
  imagenesCultura: [
    'assets/Ciudad_Cultura/San Nicolás_cultura.png',
  ],
);

final List<Map<String, dynamic>> lugaresSanNicolas = [
  {
    'nombre': 'Parroquia de Nuestra Señora de Monserrat',
    'descripcion': 'Iglesia del siglo XIX.',
    'lat': 24.3833,
    'lng': -99.1500,
  },
  {
    'nombre': 'Cruz en el Ejido El Palmar',
    'descripcion': 'Símbolo de fe y mirador.',
    'lat': 24.4000,
    'lng': -99.1700,
  },
  {
    'nombre': 'Ruinas de minería',
    'descripcion': 'Vestigios del siglo XVIII.',
    'lat': 24.3900,
    'lng': -99.1600,
  },
];
