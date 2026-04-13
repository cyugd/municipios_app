import '../../models/municipio.dart';
import '../../models/monumento.dart';

final xicotencatl = Municipio(
  id: 'xicotencatl',
  nombre: 'Xicoténcatl',
  descripcionCorta: 'Tierra cañera y huasteca, con tradición agrícola y riqueza natural.',
  descripcionLarga: '''
## Historia
Xicoténcatl es un municipio con raíces prehispánicas, habitado originalmente por grupos huastecos que aprovechaban el Río Guayalejo para la pesca y la agricultura.

Durante la época colonial se establecieron misiones y haciendas agrícolas y ganaderas, lo que impulsó su desarrollo. Con el paso del tiempo, el poblado creció alrededor de ranchos cañeros, consolidándose en el siglo XIX como una zona agrícola importante.

En el siglo XX, el desarrollo del Ingenio Azucarero “Aarón Sáenz” fortaleció la economía local, posicionando a Xicoténcatl como uno de los principales productores de caña de azúcar en Tamaulipas.

## Línea del tiempo
- **Época prehispánica:** Asentamientos huastecos
- **Época colonial:** Formación de haciendas
- **Siglo XIX:** Crecimiento agrícola y ganadero
- **Siglo XX:** Desarrollo del ingenio azucarero
- **Actualidad:** Municipio agrícola con turismo ecológico

## Geografía
Se localiza en el sur de Tamaulipas, dentro de la Huasteca Tamaulipeca, cerca de la Sierra Madre Oriental.

Presenta clima cálido subhúmedo, temperaturas promedio de 26°C y una altitud de 80 a 120 msnm. Su territorio combina llanuras, lomeríos y zonas agrícolas, con presencia de vegetación como pastizales, selva baja y matorral.

El Río Guayalejo es su principal recurso hídrico, fundamental para el riego y la actividad agrícola.

## Economía
La economía se basa principalmente en:
- **Agricultura:** caña de azúcar, maíz, sorgo, cítricos
- **Ganadería:** bovinos, porcinos y caprinos
- **Industria:** Ingenio Azucarero “Aarón Sáenz”
- **Comercio:** mercados y venta de productos locales
- **Turismo:** actividades ecológicas y recreativas

La producción de caña de azúcar es el motor económico del municipio.

## Cultura
Xicoténcatl conserva una fuerte identidad huasteca y rural. La música norteña, los bailes folklóricos y las ferias reflejan el carácter alegre y trabajador de su gente.

Destaca la Feria de Santiago Apóstol, donde se realizan eventos culturales, música y tradición.

## Valores
En Xicoténcatl, los valores forman parte esencial de la vida diaria y reflejan la identidad de su gente. Entre los más importantes destacan:
- **Respeto:** Fundamental en la convivencia entre familias, vecinos y comunidades, así como hacia las tradiciones y autoridades.
- **Solidaridad:** La población se apoya mutuamente, especialmente en trabajos del campo, situaciones difíciles y eventos comunitarios.
- **Unión familiar:** La familia es el núcleo principal, donde se transmiten costumbres, tradiciones y enseñanzas.
- **Responsabilidad:** Se refleja en el trabajo agrícola, el cuidado de la tierra y el cumplimiento de compromisos.
- **Hospitalidad:** Las personas son amables y reciben con calidez a visitantes.
- **Trabajo honesto:** El esfuerzo diario en el campo y en actividades económicas es un valor muy arraigado.

## Gastronomía
La gastronomía combina tradición huasteca y regional:
- Zacahuil (tamal gigante)
- Enchiladas huastecas
- Tamales de elote
- Platillos a base de maíz y carne

## Educación y sociedad
El municipio cuenta con educación básica y media superior (como el CBTA 98). Para estudios universitarios, los jóvenes migran a ciudades cercanas.

La sociedad se caracteriza por su unión, participación en eventos comunitarios y respeto por la naturaleza, especialmente el cuidado del Río Guayalejo.

## Turismo / Lugares emblemáticos
- Río Guayalejo (principal atractivo)
- Balnearios naturales
- Miradores y paisajes serranos
- Campos cañeros

Es un destino ideal para actividades como pesca, paseos y turismo ecológico.

## Turismo
Xicoténcatl no es un destino turístico masivo, pero cuenta con atractivos naturales y rurales que lo hacen especial dentro de la región huasteca.

El principal atractivo es el Río Guayalejo, donde se pueden realizar actividades como paseos familiares, pesca, natación y en algunas zonas kayak. Sus alrededores ofrecen espacios ideales para la convivencia y el descanso.

## Conclusión
Xicoténcatl es un municipio donde la historia, la naturaleza y la cultura se combinan para formar una identidad única. Su economía agrícola, especialmente la caña de azúcar, ha sido clave en su desarrollo.

A pesar de los retos actuales, como la migración y la dependencia del campo, su comunidad mantiene vivas sus tradiciones, valores y sentido de pertenencia. Xicoténcatl sigue siendo un lugar representativo de la Huasteca Tamaulipeca, destacando por su riqueza natural y cultural.
''',
  imagenAsset: 'assets/images/xicotencatl.jpg',
  imagenes: ['assets/images/xicotencatl_1.jpg', 'assets/images/xicotencatl_2.jpg'],
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