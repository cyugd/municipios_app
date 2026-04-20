import '../../models/municipio.dart';
import '../../models/monumento.dart';

final xicotencatl = Municipio(
  id: 'xicotencatl',
  nombre: 'Xicoténcatl',
  descripcionCorta: 'Tierra cañera y huasteca, con tradición agrícola y riqueza natural.',
  descripcionLarga: '''
## Historia
Xicoténcatl es un municipio con raíces prehispánicas, habitado originalmente por grupos huastecos que aprovechaban el Río Guayalejo para la pesca y la agricultura.  
Durante la época colonial se establecieron misiones religiosas y haciendas agrícolas y ganaderas, lo que impulsó su desarrollo económico y social. Con el paso del tiempo, el poblado creció alrededor de ranchos cañeros, consolidándose en el siglo XIX como una zona agrícola importante.  
En el siglo XX, el desarrollo del Ingenio Azucarero “Aarón Sáenz” fortaleció la economía local, posicionando a Xicoténcatl como uno de los principales productores de caña de azúcar en Tamaulipas.  
Hoy en día, el municipio conserva su carácter agrícola, pero también ha diversificado su economía hacia el turismo ecológico y actividades comerciales.

## Línea del tiempo
- Época prehispánica: Asentamientos huastecos.  
- Época colonial: Formación de haciendas.  
- Siglo XIX: Crecimiento agrícola y ganadero.  
- Siglo XX: Desarrollo del ingenio azucarero.  
- Actualidad: Municipio agrícola con turismo ecológico.  

## Geografía
Se localiza en el sur de Tamaulipas, dentro de la Huasteca Tamaulipeca, cerca de la Sierra Madre Oriental.  
Presenta clima cálido subhúmedo, temperaturas promedio de 26°C y una altitud de 80 a 120 msnm. Su territorio combina llanuras, lomeríos y zonas agrícolas, con presencia de vegetación como pastizales, selva baja y matorral.  
El Río Guayalejo es su principal recurso hídrico, fundamental para el riego y la actividad agrícola, además de ser un atractivo turístico y ecológico.

## Economía
La economía se basa principalmente en:  
- **Agricultura:** caña de azúcar, maíz, sorgo, cítricos.  
- **Ganadería:** bovinos, porcinos y caprinos.  
- **Industria:** Ingenio Azucarero “Aarón Sáenz”.  
- **Comercio:** mercados y venta de productos locales.  
- **Turismo:** actividades ecológicas y recreativas.  

La producción de caña de azúcar es el motor económico del municipio, generando empleo y atrayendo inversión. El comercio local y el turismo complementan la economía, aunque la dependencia del campo sigue siendo un reto.

## Cultura
Xicoténcatl conserva una fuerte identidad huasteca y rural. La música norteña, los bailes folklóricos y las ferias reflejan el carácter alegre y trabajador de su gente.  
Destaca la Feria de Santiago Apóstol, donde se realizan eventos culturales, música y tradiciones religiosas.  
La cultura se transmite de generación en generación, reforzando el sentido de pertenencia y orgullo comunitario.

## Valores
En Xicoténcatl, los valores forman parte esencial de la vida diaria y reflejan la identidad de su gente. Entre los más importantes destacan:  
- **Respeto:** hacia personas, tradiciones y autoridades.  
- **Solidaridad:** apoyo mutuo en trabajos del campo y situaciones difíciles.  
- **Unión familiar:** núcleo principal de la sociedad.  
- **Responsabilidad:** en el trabajo agrícola y cuidado de la tierra.  
- **Hospitalidad:** calidez hacia visitantes.  
- **Trabajo honesto:** esfuerzo diario en el campo y actividades económicas.  

## Gastronomía
La gastronomía combina tradición huasteca y regional:  
- Zacahuil (tamal gigante).  
- Enchiladas huastecas.  
- Tamales de elote.  
- Platillos a base de maíz y carne.  
La cocina local es un reflejo de la vida rural y se disfruta en festividades y reuniones familiares.

## Educación y Sociedad
El municipio cuenta con educación básica y media superior (como el CBTA 98). Para estudios universitarios, los jóvenes migran a ciudades cercanas como Ciudad Mante o Ciudad Victoria.  
La sociedad se caracteriza por su unión, participación en eventos comunitarios y respeto por la naturaleza, especialmente el cuidado del Río Guayalejo.  
La vida social gira en torno a la plaza principal, la iglesia y las festividades, reforzando la cohesión comunitaria.

## Turismo y Lugares Emblemáticos
Xicoténcatl no es un destino turístico masivo, pero cuenta con atractivos naturales y rurales que lo hacen especial dentro de la región huasteca.  
**Principales atractivos:**  
- Río Guayalejo: principal atractivo para pesca, paseos y actividades acuáticas.  
- Balnearios naturales: espacios de recreación familiar.  
- Miradores y paisajes serranos: ideales para senderismo y fotografía.  
- Campos cañeros: reflejo de la identidad agrícola del municipio.  

El turismo ecológico y rural es una oportunidad de desarrollo sostenible para la comunidad.

## Conclusión
Xicoténcatl es un municipio donde la historia, la naturaleza y la cultura se combinan para formar una identidad única. Su economía agrícola, especialmente la caña de azúcar, ha sido clave en su desarrollo.  
A pesar de los retos actuales, como la migración y la dependencia del campo, su comunidad mantiene vivas sus tradiciones, valores y sentido de pertenencia.  
Xicoténcatl sigue siendo un lugar representativo de la Huasteca Tamaulipeca, destacando por su riqueza natural y cultural, con un futuro prometedor en el turismo ecológico y la preservación de sus raíces.
''',
  imagenAsset: 'assets/images/xicotencatl.jpg',
  imagenes: [
    'assets/fotos/Xicotencatl.png',
    'assets/fotos/xicotencatl2.jpg',
    'assets/fotos/Plaza_principal_de_Xicotencatl.jpg'
  ],
  poblacion: '12,000 hab.',
  superficie: '800 km²',
  gentilicio: 'Xicotencatlense',

  monumentos3D: [
    Monumento(
      nombre: 'Monumento de Xicontencat',
      descripcion: 'Un monumento icónico de la ciudad de Xicontencat.',
      rutaModelo: 'assets/models/Xicontencat.glb',
      escala: 1.0,
    ),
  ],
);

final List<Map<String, dynamic>> lugaresXicotencatl = [
  {
    'nombre': 'Río Guayalejo',
    'descripcion': 'Principal atractivo para pesca y paseos.',
    'lat': 22.9000,
    'lng': -98.9833,
  },
  {
    'nombre': 'Ingenio Azucarero Aarón Sáenz',
    'descripcion': 'Motor económico y símbolo de la tradición cañera.',
    'lat': 22.8833,
    'lng': -98.9667,
  },
  {
    'nombre': 'Balneario natural',
    'descripcion': 'Espacio de recreación familiar.',
    'lat': 22.8900,
    'lng': -98.9700,
  },
];