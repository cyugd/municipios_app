import '../../models/municipio.dart';
import '../../models/monumento.dart';

final rio_bravo = Municipio(
  id: 'rio_bravo',
  nombre: 'Río Bravo',
  descripcionCorta: 'Ciudad joven, agrícola e industrial en la frontera norte.',
  descripcionLarga: '''
## Introducción
Río Bravo es un municipio joven de Tamaulipas cuyo desarrollo comenzó en el siglo XX gracias a la agricultura en tierras fértiles cercanas al río Bravo. La producción de algodón, maíz y sorgo, junto con los sistemas de riego, impulsó la formación de comunidades. En 1961 se convirtió en municipio independiente de Reynosa, lo que fortaleció su crecimiento en comercio y exportación hacia Estados Unidos. Posteriormente, la llegada de maquiladoras aceleró su desarrollo económico y urbano.

## Geografía
Se ubica en el norte de Tamaulipas, en la región fronteriza con Texas. Su territorio es plano, con suelos fértiles aptos para la agricultura de riego. El clima es seco cálido extremoso, con temperaturas que superan los 40°C en verano. La precipitación anual es baja. La vegetación es de matorral espinoso.

## Población
Población aproximada de 100,000 habitantes (2020). Crecimiento constante por migración laboral hacia la industria y agricultura.

## Historia
El desarrollo comenzó en el siglo XX con la agricultura de riego. En 1961 se convirtió en municipio independiente de Reynosa. La producción de algodón fue muy importante en las décadas de 1950 y 1960. Posteriormente llegaron las maquiladoras, diversificando la economía.

## Economía
- **Agricultura:** sorgo, maíz, algodón, frijol, hortalizas.
- **Ganadería:** bovina, caprina.
- **Industria maquiladora.**
- **Comercio y servicios.**
- **Turismo:** incipiente.

## Turismo
- **Plaza Principal:** jardín con kiosco.
- **Parroquia de Nuestra Señora del Refugio:** templo principal.
- **Campos agrícolas:** recorridos por zonas de cultivo.
- **Áreas recreativas** cercanas al río Bravo.

## Gastronomía
Carne asada, cabrito al pastor, tamales, machacado con huevo, enchiladas, frijoles charros.

## Cultura y Tradiciones
Fiestas patronales en honor a la Virgen del Refugio (julio). Día de Muertos. Fiestas Patrias. Música norteña y banda. Artesanías: talabartería, bordados.

## Educación
Escuelas de nivel básico y medio superior (CBTIS, COBAT). Para educación superior, los jóvenes acuden a Reynosa.

## Infraestructura
Centros de salud, clínicas del IMSS. Carreteras pavimentadas. Puente internacional hacia Estados Unidos.

## Personajes Ilustres
- Don José López (1920-2000): pionero de la agricultura de riego.
- Profesora María Hernández (1930-2015): educadora.

## Datos Curiosos
- Río Bravo se separó de Reynosa en 1961.
- La producción de algodón fue muy importante en el pasado.
- El distrito de riego 025 fue clave para su desarrollo.
- Es un municipio joven en comparación con otros.
- La feria regional se celebra en febrero.
''',
  imagenAsset: 'assets/images/rio_bravo.jpg',
  imagenes: [
    'assets/fotos/Rio_bravo.png',
    'assets/fotos/rio bravo1.JPG',
    'assets/fotos/Cuidad_Rio_Bravo.jpg'
  ],
  poblacion: '100,000 hab.',
  superficie: '1,500 km²',
  gentilicio: 'Riobravense',
  monumentos3D: [
    Monumento(
      nombre: 'Casa de Ladrillo',
      descripcion: 'Edificio emblemático.',
      rutaModelo: 'assets/models/Riobravo.glb',
      escala: 1.0,
    ),
  ],
  imagenesGastronomia: [],
  imagenesTurismo: [],
);

final List<Map<String, dynamic>> lugaresRioBravo = [
  {
    'nombre': 'Plaza Principal',
    'descripcion': 'Centro social.',
    'lat': 25.8000,
    'lng': -98.1000,
  },
  {
    'nombre': 'Parroquia de Nuestra Señora del Refugio',
    'descripcion': 'Templo principal.',
    'lat': 25.8010,
    'lng': -98.1010,
  },
];