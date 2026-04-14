import '../../models/municipio.dart';
import '../../models/monumento.dart';

final rio_bravo = Municipio(
  id: 'rio_bravo',
  nombre: 'Río Bravo',
  descripcionCorta: 'Ciudad joven, agrícola e industrial en la frontera norte.',
  descripcionLarga: '''
## Historia
Río Bravo es un municipio joven de Tamaulipas cuyo desarrollo comenzó en el siglo XX gracias a la agricultura en tierras fértiles cercanas al río Bravo. La producción de algodón, maíz y sorgo, junto con los sistemas de riego, impulsó la formación de comunidades.

En 1961 se convirtió en municipio independiente de Reynosa, lo que fortaleció su crecimiento en comercio y exportación hacia Estados Unidos. Posteriormente, la llegada de maquiladoras aceleró su desarrollo económico y urbano. Actualmente, es un municipio fronterizo con economía basada en la agricultura, industria y comercio, destacando por su ubicación estratégica y crecimiento poblacional.

## Geografía
Río Bravo se ubica en una zona costera cercana al Golfo de México, dentro del área metropolitana Tampico–Madero–Altamira. Su territorio es plano, con suelos arenosos, lagunas y humedales que favorecen la formación de playas, aunque también son vulnerables a la erosión. Cuenta con una red de esteros y cuerpos de agua conectados al río Pánuco, lo que permite el desarrollo de manglares y ecosistemas acuáticos importantes. El clima es cálido-subhúmedo, con lluvias en verano y riesgo de huracanes.

Los manglares y estuarios son clave para la biodiversidad, ya que sirven como hábitat de aves, peces y otras especies, siendo fundamentales para la pesca y el equilibrio ecológico.

## Población / Evolución
**Evolución Poblacional:** La población de Río Bravo pasó de pequeños núcleos costeros a una ciudad con más de 200 mil habitantes. El crecimiento fue especialmente intenso entre 1930 y 1980 por el empuje industrial.

**Características demográficas:**
- Composición por edades: mezcla de población activa en edad productiva y segmentos jóvenes.
- Distribución espacial: densidad mayor en colonias cercanas a la refinería y en el área urbana central.
- Migración: flujo histórico de migrantes laborales atraídos por la industria.

## Economía
La economía de Río Bravo se basa en la industria, la pesca, el comercio y el turismo. La refinería es una de las principales fuentes de empleo, generando actividades relacionadas como transporte y servicios.

El turismo se concentra en la playa, con hoteles, restaurantes y actividades recreativas, además del potencial gastronómico y de eventos. También destaca la pesca artesanal y la producción de mariscos, que abastecen mercados locales y regionales.

## Cultura
La cultura de Río Bravo está influenciada por su vida marina, sus tradiciones populares y su historia obrera. Se reflejan en expresiones como el huapango y los sones costeños, que forman parte de su identidad local.

**Patrimonio Inmaterial:** Incluye conocimientos y tradiciones como los oficios de pesca y navegación, recetas típicas y la memoria histórica de los trabajadores petroleros, que se transmiten de generación en generación.

## Valores
La comunidad se caracteriza por valores como el trabajo, la solidaridad, la hospitalidad y el orgullo por su historia y tradiciones.

## Iniciativas
Se promueven acciones para conservar la cultura y fortalecer la comunidad, como reconocimientos a oficios tradicionales, campañas escolares sobre patrimonio y prevención ante huracanes, apoyo al emprendimiento (especialmente femenino) y capacitación laboral.

## Costumbres (Fiestas)
Las festividades combinan elementos religiosos, marítimos y populares, siendo parte importante de la vida social.

**Carnaval:** Es una celebración muy importante que reúne a familias, comparsas y música, además de generar actividad económica.

**Virgen del Carmen:** Fiesta ligada al mar, con procesiones, misas y bendición de embarcaciones, reflejando la fe de la comunidad pesquera.

**Semana Santa:** Periodo de gran afluencia turística y actividades religiosas, especialmente en la zona costera.

## Patrimonio
El patrimonio incluye elementos históricos, culturales e industriales que representan la identidad del municipio.

**Edificios y sitios históricos:** Destacan el Faro de la Barra, la refinería, monumentos, la iglesia principal y el palacio municipal como símbolos importantes.

## Gastronomía
La gastronomía combina sabores del mar, la región huasteca y la tradición criolla.

**Platos emblemáticos:** Sobresalen el cóctel de mariscos, empanadas de jaiba, ceviches, pescado asado, camarones al coco y el pan tradicional.

## Educación
Cuenta con oferta educativa en todos los niveles, con enfoque en áreas técnicas relacionadas con la industria petrolera y actividades locales.

**Programas especiales:** Incluyen formación en seguridad industrial, protección ambiental, turismo, cultura y pesca sostenible.

## Turismo
Río Bravo ofrece atractivos relacionados con playa, naturaleza e industria.

**Lugares para visitar:** Playa Miramar, Faro de la Barra, refinería, parques y malecón son los principales puntos turísticos.

**Consejos:** Se recomienda revisar el clima, consumir en lugares seguros, respetar áreas protegidas y participar en recorridos guiados.

## Conclusión
Río Bravo es una ciudad que combina su desarrollo industrial con la riqueza natural de su litoral. El principal reto es lograr un equilibrio entre crecimiento económico, cuidado ambiental y bienestar social.
''',
  imagenAsset: 'assets/images/rio_bravo.jpg',
  imagenes: [
    'assets/fotos/Rio_bravo.png',
  ],
  poblacion: '100,000 hab.',
  superficie: '1,500 km²',
  gentilicio: 'Riobravense',

  monumentos3D: [
    Monumento(
      nombre: 'Casa de Ladrillo',
      descripcion: 'Un monumento icónico de la ciudad de Rio Bravo.',
      rutaModelo: 'assets/models/Riobravo.glb',
      escala: 1.0,
    ),
  ],
);
