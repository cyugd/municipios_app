import '../../models/municipio.dart';
import '../../models/monumento.dart';

final gustavo_diaz_ordaz = Municipio(
  id: 'gustavo_diaz_ordaz',
  nombre: 'Gustavo Díaz Ordaz',
  descripcionCorta: 'Tierra de historia y agricultura en la frontera norte.',
  descripcionLarga: '''
## Introducción
Gustavo Díaz Ordaz es un municipio joven de Tamaulipas, creado en 1968. Se encuentra en la región de la Frontera Chica, a orillas del Río Bravo. Su economía se basa en la agricultura de riego, gracias al Distrito de Riego 025. Es una comunidad fronteriza tranquila, con fuertes lazos familiares y tradiciones norteñas.

## Geografía
Se ubica al norte de Tamaulipas, a orillas del Río Bravo, colindando con Reynosa, Camargo y General Bravo (Nuevo León). Altitud: 68 msnm. Clima seco cálido, temperaturas >40°C en verano.

## Población
Más de 15,000 habitantes (2020), mayoritariamente jóvenes.

## Historia
El territorio pertenecía originalmente a Camargo. En 1968 se creó oficialmente el municipio mediante decreto estatal. Su desarrollo se fortaleció con la creación del Distrito de Riego 025. El nombre honra al presidente Gustavo Díaz Ordaz.

## Economía
- **Agricultura:** sorgo, maíz, algodón, frijol, hortalizas (bajo riego).
- **Ganadería:** bovina, caprina.
- **Comercio local:** tiendas, servicios, intercambio fronterizo.
- **Turismo:** incipiente.

## Turismo
- **Parroquia de San Miguel Arcángel:** templo principal.
- **Plaza Principal:** jardín con kiosco.
- **Malecón del Río Bravo:** área de esparcimiento.
- **Campos agrícolas:** recorridos por zonas de cultivo.
- **Presas de riego:** pesca de mojarra.

## Gastronomía
Carne asada, tamales, gorditas, machacado con huevo, enchiladas.

## Cultura y Tradiciones
Fiestas de San Miguel Arcángel (29 de septiembre). Día de la Virgen de Guadalupe (12 de diciembre). Artesanías: talabartería, bordados.

## Educación
Escuelas básicas, bachillerato (CBTIS). Para estudios superiores, acuden a Reynosa.

## Infraestructura
Centro de salud y clínica del IMSS. Carretera pavimentada.

## Personajes Ilustres
- Gustavo Díaz Ordaz (1911-1979): presidente de México.
- Don José López (1930-2000): pionero de la agricultura de riego.
- Profesora María Gómez (1940-2015): fundadora de la escuela primaria.

## Datos Curiosos
- Es uno de los municipios más jóvenes de Tamaulipas.
- El Distrito de Riego 025 fue construido en la década de 1950.
- La producción de algodón fue muy importante en el pasado.
- El puente internacional hacia Estados Unidos está cerca.
- La fiesta de San Miguel Arcángel atrae visitantes de la región.
''',
  imagenAsset: 'assets/images/gustavo_diaz_ordaz.jpg',
  imagenes: [
    'assets/fotos/gustavo dias ordaz.png',
    'assets/fotos/GDOrdaz.jpg',
    'assets/fotos/GDOrdaz2.jpg'
  ],
  poblacion: '15,000 hab.',
  superficie: '200 km²',
  gentilicio: 'Ordaceño',
  monumentos3D: [],
  imagenesGastronomia: [],
  imagenesTurismo: [],
);

final List<Map<String, dynamic>> lugaresGustavoDiazOrdaz = [
  {'nombre': 'Parroquia de San Miguel Arcángel', 'descripcion': 'Templo principal.', 'lat': 26.2333, 'lng': -98.6667},
  {'nombre': 'Plaza Principal', 'descripcion': 'Centro social.', 'lat': 26.2320, 'lng': -98.6670},
  {'nombre': 'Malecón del Río Bravo', 'descripcion': 'Paseo frente al río.', 'lat': 26.2400, 'lng': -98.6600},
];