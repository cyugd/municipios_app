import '../../models/municipio.dart';
import '../../models/monumento.dart';

final altamira = Municipio(
  id: 'altamira',
  nombre: 'Altamira',
  descripcionCorta: 'Importante puerto industrial, con playas y lagunas en el sur de Tamaulipas.',
  descripcionLarga: '''
## Introducción
Altamira es un municipio del sur de Tamaulipas, conocido por su enorme puerto industrial, uno de los más importantes de México, y por ser un centro petroquímico de primer orden. Sin embargo, también posee un gran atractivo natural con la Laguna de Champayán, Playa Miramar y áreas de manglares. Combina el desarrollo industrial con tradiciones costeras y una oferta turística en crecimiento. Su clima cálido y su gente hospitalaria la convierten en un lugar estratégico para los negocios y el descanso.

## Geografía
Se ubica al sur de Tamaulipas, colindando con Tampico, Veracruz, el Golfo de México y González. Extensión de 1,663 km², altitud promedio de 10 msnm. Terreno plano con 85 km de costa. Destacan el río Pánuco, la Laguna de Champayán y diversos esteros. Clima cálido subhúmedo, temperatura promedio de 24°C. Vegetación de manglares y selva baja. Fauna: cocodrilos de pantano, garzas, pelícanos, flamencos, mapaches y nutrias.

## Población
212,000 habitantes (2020). La cabecera concentra el 60% de la población. Es una población joven (edad promedio 28 años) con crecimiento anual del 1.8% debido a la migración laboral.

## Historia
La región estaba habitada por grupos huastecos y janambres. Fue fundada el 2 de mayo de 1749 por José de Escandón como Villa de Altamira. Durante la colonia fue zona ganadera. El gran cambio ocurrió en la década de 1970 con la construcción del puerto industrial y el complejo petroquímico, que transformaron completamente la economía y la fisonomía del municipio.

## Economía
- **Puerto Industrial:** uno de los más importantes de México, maneja contenedores, minerales, granos, productos petroquímicos y vehículos.
- **Industria Petroquímica:** complejo con empresas como Pemex, BASF, Dupont y otras.
- **Comercio y Servicios:** centros comerciales, hoteles, restaurantes y servicios financieros.
- **Turismo:** Playa Miramar, ecoturismo en la Laguna de Champayán y tours industriales.
- **Pesca:** artesanal y deportiva.

## Turismo
- **Playa Miramar:** la más famosa de la zona, con palapas, restaurantes, renta de motos acuáticas y kayak.
- **Laguna de Champayán:** paseos en lancha, pesca deportiva, observación de aves.
- **Puerto Industrial:** tours para conocer la actividad portuaria (previa autorización).
- **Parque ecológico Las Águilas:** senderismo en áreas de manglar.
- **Centro histórico:** Parroquia de la Virgen de la Candelaria, Plaza Principal.
- **Faro de la Barra:** antigua construcción que guiaba a los barcos.

## Gastronomía
Mariscos frescos (ceviche, camarones, jaibas rellenas), enchiladas huastecas, zacahuil (tamal gigante), pescado frito, pan de caña. Dulces de coco y plátano.

## Cultura y Tradiciones
El Carnaval de Altamira es muy importante, con desfiles de carros alegóricos, comparsas y reinado. Las fiestas patronales en honor a la Virgen de la Candelaria (2 de febrero) incluyen procesiones y danzas. El Día de la Marina (1 de junio) se celebra con eventos en el puerto. La música huasteca y norteña son parte esencial de la identidad local. Artesanías: tejidos de palma, artículos de concha y tallas de madera de manglar.

## Educación
Cuenta con CBTis, CETis, CONALEP, extensiones de la UAT con carreras industriales, tecnológicas y portuarias, además de instituciones privadas.

## Infraestructura
Puerto de clase mundial, autopistas, red de ferrocarril. En salud, hospitales del IMSS, ISSSTE, clínicas particulares y un hospital general.

## Personajes Ilustres
- Ingeniero Carlos Pérez (1940-2010): promotor del desarrollo industrial del puerto.
- Doña María Hernández (1930-2020): activista ambiental que protegió los manglares.
- Capitán Luis Gómez (1900-1980): pionero de la pesca deportiva en la laguna.

## Datos Curiosos
- Altamira es el municipio con mayor crecimiento industrial de Tamaulipas.
- La Laguna de Champayán es un sitio Ramsar (humedal de importancia internacional).
- Cada año se realiza la "Regata de la Amistad" entre Tampico, Madero y Altamira.
- En Playa Miramar anidan tortugas marinas (golfina y lora).
- El puerto recibe barcos de hasta 300 metros de eslora.
''',
  imagenAsset: 'assets/images/altamira.jpg',
  imagenes: [
    'assets/fotos/altamira.png',
    'assets/fotos/altamira1-i.webp',
    'assets/fotos/altamira2-i.jpg'
  ],
  poblacion: '212,000 hab.',
  superficie: '1,663 km²',
  gentilicio: 'Altamirense',
  monumentos3D: [
    Monumento(
      nombre: 'Monumento a la Patria',
      descripcion: 'Monumento icónico de Altamira.',
      rutaModelo: 'assets/models/Altamira.glb',
      escala: 1.0,
    ),
  ],
  imagenesGastronomia: [],
  imagenesTurismo: [],
);

final List<Map<String, dynamic>> lugaresAltamira = [
  {'nombre': 'Playa Miramar', 'descripcion': 'Principal playa del municipio.', 'lat': 22.2728, 'lng': -97.8350},
  {'nombre': 'Laguna de Champayán', 'descripcion': 'Ecosistema de manglares.', 'lat': 22.2500, 'lng': -97.9000},
  {'nombre': 'Puerto de Altamira', 'descripcion': 'Importante puerto industrial.', 'lat': 22.3800, 'lng': -97.9000},
];