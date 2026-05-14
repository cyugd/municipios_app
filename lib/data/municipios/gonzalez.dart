import '../../models/municipio.dart';
import '../../models/monumento.dart';

final gonzalez = Municipio(
  id: 'gonzalez',
  nombre: 'González',
  descripcionCorta: 'Tradición agrícola y paisajes rurales en el sur de Tamaulipas.',
  descripcionLarga:   '''
## Introducción
González es un municipio del sur de Tamaulipas, conocido por su riqueza agrícola y su ambiente tranquilo. Su cabecera, Villa de González, fue fundada en 1749 con el nombre de San Juan Bautista de Horcasitas. Es un lugar donde la vida transcurre entre cañaverales, cítricos y ganadería, y donde las tradiciones norteñas se mantienen vivas. El Cerro del Bernal de Horcasitas es uno de sus principales atractivos naturales. Es un destino ideal para el turismo rural.

## Historia
El municipio fue fundado el 11 de mayo de 1749 por el capitán José Antonio de Oyervides, con el nombre de Villa de San Juan Bautista de Horcasitas. En sus inicios, el territorio estaba habitado por grupos indígenas que convivieron con los colonos españoles. Durante los siglos XVIII y XIX, su desarrollo fue lento, aunque existieron haciendas importantes que impulsaron la producción agropecuaria. En 1901, la llegada del ferrocarril transformó completamente la región, generando un nuevo centro económico. Finalmente, en 1927, el municipio adoptó el nombre de González en honor a la familia propietaria de los terrenos. A lo largo del siglo XX, enfrentó eventos como movimientos revolucionarios y huracanes.

## Geografía y Población
González se localiza al sur de Tamaulipas, en una amplia llanura con influencia de la Sierra Madre Oriental. Su relieve es principalmente plano. El clima es cálido subhúmedo, con veranos intensos y lluvias en temporada. Cuenta con el río Guayalejo y varios arroyos.  
Población: aproximadamente 41,470 habitantes (2020), con densidad baja, mayoritariamente rural.

## Economía
- **Agricultura:** Maíz, sorgo, frijol, caña de azúcar, cítricos (naranja, toronja).  
- **Ganadería:** Bovina, porcina, caprina.  
- **Comercio local:** Tiendas, talleres, pequeños negocios.  
- **Industria:** Incipiente, pero con crecimiento del sector comercial e industrial.

## Cultura y Tradiciones
**Fiestas:** Patronales de San Juan Bautista (24 de junio) con procesiones, jaripeos, bailes y juegos mecánicos; Fiestas Patrias; Día de Muertos.  
**Gastronomía:** Carne asada, frijoles charros, tamales, barbacoa, guisos tradicionales, productos lácteos, dulces artesanales.  
**Artesanías:** Talabartería, tejidos de palma.

## Turismo y Atractivos
- **Cerro del Bernal de Horcasitas:** Elevación emblemática, ideal para senderismo y vistas panorámicas.  
- **Plaza Principal:** Jardín con kiosco, rodeado de edificios históricos.  
- **Iglesia de San Juan Bautista:** Templo del siglo XVIII.  
- **Río Guayalejo:** Pesca y paseos.  
- **Áreas rurales:** Recorridos por campos de cítricos y caña.  
- **Presa de González:** Pesca de mojarra.

## Educación y Salud
Cuenta con escuelas de nivel básico y medio superior (COBAT, CBTIS). Para estudios superiores, los jóvenes se trasladan a El Mante o Ciudad Victoria. En salud, hospital general y clínicas.

## Personajes Ilustres
- **Familia González:** Propietaria de los terrenos que dieron nombre al municipio.  
- **General José Antonio de Oyervides:** Fundador.  
- **Profesor Alfonso López (1920-2000):** Educador y poeta local.

## Datos Curiosos
- El Cerro del Bernal de Horcasitas es un ícono de la región.  
- La caña de azúcar es uno de los principales cultivos.  
- El ferrocarril fue clave para el desarrollo del municipio.  
- En González se produce uno de los mejores cítricos de Tamaulipas.  
- La iglesia de San Juan Bautista fue construida con piedra de cantera.

## Perspectivas Futuras
Se busca diversificar la economía con el crecimiento industrial, mejorar la infraestructura turística y fortalecer la producción agrícola con técnicas modernas.
''',
  imagenAsset: 'assets/images/gonzalez.jpg',
  imagenes: [
    'assets/fotos/gonzales.png',
    'assets/fotos/gonzales.jpg',
    'assets/fotos/gonzales2.jpg'
  ],
  poblacion: '41,470 hab.',
  superficie: '3,500 km²',
  gentilicio: 'Gonzaleño',

  monumentos3D: [
    Monumento(
      nombre: 'Catedral de las campanas',
      descripcion: 'Un monumento icónico de la ciudad de Gonzales.',
      rutaModelo: 'assets/models/gonzales.glb',
      escala: 1.0,
    ),
  ],
);

final List<Map<String, dynamic>> lugaresGonzalez = [
  {
    'nombre': 'Cerro del Bernal de Horcasitas',
    'descripcion': 'Elevación natural, senderismo.',
    'lat': 22.7500,
    'lng': -98.7667,
  },
  {
    'nombre': 'Plaza Principal',
    'descripcion': 'Centro de convivencia social.',
    'lat': 22.7480,
    'lng': -98.7700,
  },
  {
    'nombre': 'Iglesia de San Juan Bautista',
    'descripcion': 'Templo del siglo XVIII.',
    'lat': 22.7470,
    'lng': -98.7710,
  },
];