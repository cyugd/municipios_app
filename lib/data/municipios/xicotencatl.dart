import '../../models/municipio.dart';
import '../../models/monumento.dart';

final xicotencatl = Municipio(
  id: 'xicotencatl',
  nombre: 'Xicoténcatl',
  descripcionCorta: 'Tierra cañera y huasteca, con tradición agrícola y riqueza natural.',
  descripcionLarga: '''
## Introducción
Xicoténcatl es un municipio con raíces prehispánicas, habitado originalmente por grupos huastecos que aprovechaban el Río Guayalejo para la pesca y la agricultura. Durante la época colonial se establecieron misiones religiosas y haciendas agrícolas y ganaderas, lo que impulsó su desarrollo económico y social. Con el paso del tiempo, el poblado creció alrededor de ranchos cañeros, consolidándose en el siglo XIX como una zona agrícola importante. En el siglo XX, el desarrollo del Ingenio Azucarero “Aarón Sáenz” fortaleció la economía local, posicionando a Xicoténcatl como uno de los principales productores de caña de azúcar en Tamaulipas. Hoy en día, el municipio conserva su carácter agrícola, pero también ha diversificado su economía hacia el turismo ecológico y actividades comerciales.

## Geografía
Se localiza en el sur de Tamaulipas, dentro de la Huasteca Tamaulipeca, cerca de la Sierra Madre Oriental. Presenta clima cálido subhúmedo, temperatura promedio de 26°C y una altitud de 80 a 120 msnm. Su territorio combina llanuras, lomeríos y zonas agrícolas, con presencia de vegetación como pastizales, selva baja y matorral. El Río Guayalejo es su principal recurso hídrico, fundamental para el riego y la actividad agrícola, además de ser un atractivo turístico y ecológico. La fauna incluye venado, armadillo, coyote, garzas, y aves acuáticas.

## Población
Aproximadamente 12,000 habitantes (2020). Población mayoritariamente rural, dedicada a la caña de azúcar y actividades relacionadas. La migración hacia ciudades como El Mante y Ciudad Victoria es común entre los jóvenes.

## Historia
Época prehispánica habitada por huastecos. Época colonial con misiones religiosas y haciendas. Siglo XIX crecimiento agrícola y ganadero. Siglo XX desarrollo del ingenio azucarero. Actualidad, municipio agrícola con turismo ecológico. El ingenio azucarero “Aarón Sáenz” fue construido en la década de 1940 y ha sido el motor económico de la región.

## Economía
- **Agricultura:** caña de azúcar (principal), maíz, sorgo, cítricos (naranja, limón).
- **Ganadería:** bovinos, porcinos, caprinos.
- **Industria:** Ingenio Azucarero “Aarón Sáenz” (produce azúcar y sus derivados).
- **Comercio:** mercados locales, venta de productos artesanales.
- **Turismo:** ecológico y recreativo en el Río Guayalejo y balnearios.

## Turismo
- **Río Guayalejo:** principal atractivo para pesca de mojarra y lobina, paseos en lancha, balnearios naturales. En sus orillas hay restaurantes típicos.
- **Ingenio Azucarero Aarón Sáenz:** símbolo de la tradición cañera. Se pueden realizar visitas guiadas (previa autorización) para conocer el proceso de producción de azúcar.
- **Balneario natural El Ojo de Agua:** área de recreación familiar con aguas cristalinas.
- **Campos cañeros:** reflejo de la identidad agrícola del municipio; en época de zafra (noviembre a mayo) los campos se llenan de caña verde.

## Gastronomía
La gastronomía combina tradición huasteca y regional. Destacan el zacahuil (tamal gigante de hasta 30 kg relleno de carne de cerdo o pollo, envuelto en hojas de plátano), las enchiladas huastecas (bañadas en salsa de chile ancho y guajillo), los tamales de elote (dulces o salados), y los platillos a base de maíz y carne. También se prepara el asado de boda y los dulces de leche.

## Cultura y Tradiciones
La Feria de Santiago Apóstol (25 de julio) es la celebración principal, con eventos culturales, música de banda y norteña, danzas folclóricas, juegos pirotécnicos, jaripeos y cabalgatas. El Día de Muertos se colocan altares con ofrendas. La Semana Santa se celebra con procesiones y representaciones del viacrucis. La música huasteca (huapango) y la norteña son parte esencial de las festividades. Las artesanías incluyen bordados huastecos, cestería de carrizo y talabartería.

## Educación
El municipio cuenta con escuelas de nivel básico (primarias, secundarias) y el CBTA 98 (Centro de Bachillerato Tecnológico Agropecuario). Para educación superior, los jóvenes viajan a El Mante o Ciudad Victoria.

## Infraestructura
Centro de salud y clínica del IMSS-Bienestar. Carretera pavimentada que conecta con El Mante y Ciudad Victoria. Servicios de agua potable, electricidad y drenaje en la cabecera.

## Personajes Ilustres
- Fundadores de la región huasteca.
- Trabajadores del ingenio azucarero.
- Don Aarón Sáenz (1891-1983): impulsor del ingenio.

## Datos Curiosos
- Xicoténcatl es un nombre de origen indígena (tlaxcalteca) que significa "lugar de jicotes".
- El ingenio azucarero es uno de los más importantes del estado.
- El zacahuil es un tamal gigante típico de la huasteca, que se cocina en horno de leña.
- El río Guayalejo es ideal para la pesca de mojarra tilapia y lobina.
- La feria de Santiago Apóstol es la celebración principal y atrae visitantes de municipios vecinos.
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
      nombre: 'Monumento de Xicoténcatl',
      descripcion: 'Escultura del héroe tlaxcalteca.',
      rutaModelo: 'assets/models/Xicontencat.glb',
      escala: 1.0,
    ),
  ],
  imagenesGastronomia: [],
  imagenesTurismo: [],
);

final List<Map<String, dynamic>> lugaresXicotencatl = [
  {
    'nombre': 'Río Guayalejo',
    'descripcion': 'Pesca, paseos y balnearios naturales.',
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