import '../../models/municipio.dart';
import '../../models/monumento.dart';

final valle_hermoso = Municipio(
  id: 'valle_hermoso',
  nombre: 'Valle Hermoso',
  descripcionCorta: 'Colonia agrícola transformada en ciudad fronteriza con arraigo rural.',
  descripcionLarga: '''
## Historia
Valle Hermoso surge en la década de 1930 como una colonia agraria impulsada por el gobierno de Lázaro Cárdenas, para reubicar a mexicanos repatriados de Estados Unidos tras la Gran Depresión. El ingeniero Eduardo Chávez Ramírez diseñó su sistema de riego y su trazo urbano, lo que permitió transformar tierras áridas en campos productivos.  
Su crecimiento se consolidó con el auge del algodón en los años 40 y 50, convirtiéndose en un polo agrícola de gran relevancia. El 4 de marzo de 1953 se convirtió en municipio libre.  
A lo largo del siglo XX, Valle Hermoso vivió etapas de bonanza agrícola, crisis económicas y diversificación hacia la industria maquiladora en los años 90, lo que fortaleció su papel dentro de la frontera tamaulipeca.

## Línea del tiempo
- 1929: Repatriación de mexicanos desde EE. UU.  
- 1939: Inicio de la colonización agrícola.  
- 1950: Auge del algodón.  
- 1953: Fundación como municipio.  
- 1990: Inicio de maquiladoras.  
- Actualidad: Retos en el manejo del agua y migración juvenil.  

## Geografía
Valle Hermoso se ubica en el extremo noreste de México, colindando al norte con Río Bravo y al este con Matamoros.  
Fisiográficamente, pertenece a la Llanura Costera del Golfo Norte, caracterizada por ser una planicie sedimentaria de orografía casi nula y una altitud muy baja, que ronda los 27 metros sobre el nivel del mar.  
Su territorio es fértil pero vulnerable a sequías y a la sobreexplotación de recursos hídricos, lo que ha generado retos en la producción agrícola y en el abastecimiento de agua potable.

## Población
Cuenta con alrededor de 60,000 habitantes. Presenta envejecimiento poblacional y migración de jóvenes hacia ciudades como Reynosa y Monterrey.  
Existe dispersión rural mediante el sistema de brechas y kilómetros, característico de la colonización agrícola.  
El principal reto social es que gran parte de la población carece de acceso a la seguridad social formal, lo que sobrecarga el sistema público de salud.  
Las enfermedades crónicas no transmisibles (diabetes, hipertensión) son un problema prioritario de salud pública. La población mantiene una identidad fuerte ligada al campo y a la vida comunitaria.

## Economía
Su base es la agricultura, destacando el sorgo. También existe industria maquiladora y comercio agrícola.  
Enfrenta retos como dependencia climática y fluctuaciones del mercado internacional. El sorgo es el cultivo dominante, elegido por su resistencia a la sequía y salinidad, y su alta demanda para alimentos balanceados.  
Esta dependencia genera una cadena de valor logística con numerosos silos de almacenamiento y plantas procesadoras, pero expone a la economía a riesgos climáticos y a las fluctuaciones de precios internacionales en la Bolsa de Granos de Chicago.  
La maquila y el comercio han diversificado la economía, aunque el campo sigue siendo el eje central de la vida económica.

## Cultura
La cultura de Valle Hermoso es una síntesis de la tradición rural mexicana y la constante influencia de la frontera.  
La identidad social está marcada por el arquetipo del norteño: honestidad, franqueza y una estrecha relación con el campo, simbolizada por el uso de sombreros y botas vaqueras.  
La banda sonora es el conjunto Norteño o Fara Fara. El sonido del acordeón y el bajo sexto es omnipresente en bodas, quinceañeras y fiestas patronales.  
La vida cultural también se refleja en las ferias regionales, cabalgatas y encuentros comunitarios que refuerzan la identidad local.

## Valores
Los valores clave de la comunidad son:  
- Hospitalidad.  
- Laboriosidad.  
- Unidad familiar.  
- Resiliencia.  
La laboriosidad es central, heredada del esfuerzo monumental de los repatriados que transformaron el desierto en un campo productivo. Este valor se refleja en la identidad del norteño honesto y trabajador, estrechamente ligado al campo.

## Costumbres
La costumbre festiva más importante es la Feria Regional de Valle Hermoso, que se celebra en el mes de marzo.  
Conmemora tanto el aniversario municipal (4 de marzo) como el hito histórico de la llegada de los repatriados (18 de marzo).  
La Feria incluye costumbres como:  
- Cabalgatas.  
- Exposiciones ganaderas.  
- Espectáculos de música regional.  
- Juegos mecánicos y actividades infantiles.  
Es un espacio de convivencia comunitaria que refuerza la identidad local.

## Gastronomía
La gastronomía es robusta y sabrosa, diseñada para alimentar al trabajador del campo.  
**Platillos destacados:**  
- Carne asada de cortes de res, acompañada de cebollas asadas y salchichas.  
- Machaca con huevo, desayuno fronterizo por excelencia.  
- Cortadillo de res (carne guisada en salsa de chile ancho).  
- Tamales de puerco, consumidos en invierno y festividades.  
La comida es parte esencial de la convivencia social, especialmente en reuniones familiares y comunitarias.

## Turismo
Valle Hermoso no es un destino de turismo masivo, sino de turismo de nicho y de negocios.  
El atractivo principal es el Turismo Cinegético. La región es famosa por la caza de la paloma ala blanca, atrayendo cazadores de Estados Unidos y otras partes de México.  
Esto genera una derrama económica para hoteles, restaurantes y ranchos certificados. Además, se promueve el turismo rural y gastronómico, con visitas a comunidades agrícolas y ferias locales.

## Conclusión
Valle Hermoso es una ciudad con origen agrícola y fuerte identidad rural. Su desarrollo depende del campo, especialmente del sorgo, y enfrenta retos como el manejo del agua y la migración.  
Aun así, su comunidad resiliente mantiene viva su economía y cultura, buscando un futuro más estable.  
El fortalecimiento del turismo cinegético, la diversificación económica y la inversión en infraestructura son claves para garantizar el desarrollo sostenible del municipio.
''',
  imagenAsset: 'assets/images/valle_hermoso.jpeg',
  imagenes: [
    'assets/fotos/Valle_hermoso.png',
    'assets/fotos/valle hermoso.jpg',
    'assets/fotos/Plaza_de_Valle_Hermoso.jpg',
  ],
  poblacion: '60,000 hab.',
  superficie: '900 km²',
  gentilicio: 'Vallehermosense',

  monumentos3D: [
    Monumento(
      nombre: 'Capilla San Antonio',
      descripcion: 'Un monumento icónico de la ciudad de Valle Hermoso.',
      rutaModelo: 'assets/models/Vallehermoso.glb',
      escala: 1.0,
    ),
  ],
);


final List<Map<String, dynamic>> lugaresValleHermoso = [
  {
    'nombre': 'Plaza Principal',
    'descripcion': 'Centro de convivencia social y escenario de la Feria Regional.',
    'lat': 25.6667,
    'lng': -97.8333,
  },
  {
    'nombre': 'Campos agrícolas de sorgo',
    'descripcion': 'Paisaje representativo de la economía local.',
    'lat': 25.6700,
    'lng': -97.8300,
  },
  {
    'nombre': 'Ranchos cinegéticos',
    'descripcion': 'Zonas para la caza de paloma ala blanca.',
    'lat': 25.6800,
    'lng': -97.8200,
  },
];
