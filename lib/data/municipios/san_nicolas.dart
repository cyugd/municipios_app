import '../../models/municipio.dart';
import '../../models/monumento.dart';

final san_nicolas = Municipio(
  id: 'san_nicolas',
  nombre: 'San Nicolás',
  descripcionCorta: 'Municipio con historia minera y tradiciones rurales en la Sierra de San Carlos.',
  descripcionLarga: '''
## Herencia Cultural y Tradición Regional
San Nicolás, Tamaulipas, es un municipio con historia y tradiciones muy arraigadas. Fundado el 15 de febrero de 1750 por el Coronel José de Escandón y Helguera, lleva el nombre de su santo patrono, San Nicolás de Bari. Originalmente villa agrícola, participó en eventos históricos como la Guerra de Independencia, la Guerra de Reforma y la Revolución Mexicana, aportando recursos y habitantes, y ha mantenido hasta hoy un estilo de vida rural y tranquilo.

## Historia
Desde su fundación, San Nicolás se consolidó como una villa agrícola en la que predominaba la agricultura de autoconsumo y el trabajo comunitario. En el siglo XIX apoyó los movimientos insurgentes y fue escenario de disputas políticas locales. Durante la Revolución Mexicana, varios habitantes se unieron al movimiento constitucionalista. A lo largo del tiempo, la comunidad ha conservado su estructura tradicional y el carácter agrícola de su economía.

## Geografía y Población
Ubicado en la Sierra de San Carlos, San Nicolás tiene un relieve montañoso que limita el acceso a infraestructura moderna. Su clima es semiárido, con temperaturas entre 6 °C y 45 °C y lluvias anuales de 675 mm. La vegetación incluye matorrales, selva baja caducifolia, mezquite, huizache, maguey y cactus, con zonas boscosas en áreas altas. La población en 2020 era de 926 habitantes, principalmente niños y jóvenes.

## Economía
La economía depende de la agricultura y ganadería. Se cultiva maíz, frijol, calabaza y sorgo, y se cría ganado bovino, caprino y ovino. Los productos como carne seca, queso, crema y cuero se consumen localmente y se venden en ferias. La inversión extranjera en Tamaulipas, de 1999 a 2024, alcanzó US\$25,800 millones. La economía local refleja un estilo de vida rural y comunitario.

## Cultura
San Nicolás mantiene una identidad cultural fuerte con celebraciones religiosas y tradicionales, como las Fiestas Patronales de San Nicolás de Bari, la Fiesta del Cabrito, la Feria del Campo, Semana Santa y el Día de la Virgen de Guadalupe. La comunidad se caracteriza por hospitalidad, respeto, solidaridad, trabajo en equipo y devoción religiosa, valores que se reflejan en la cooperación y transmisión de tradiciones de generación en generación.

## Valores
Los valores más representativos de la comunidad son el respeto, la solidaridad, el trabajo en equipo y la devoción religiosa. La vida en San Nicolás gira en torno a la familia y las actividades agrícolas, que no solo sostienen su economía, sino también un estilo de vida sencillo y honesto. Las costumbres locales incluyen la celebración de fiestas patronales en honor a Nuestra Señora de Monserrat, donde se realizan misas, procesiones, danzas y ferias con música regional y antojitos típicos, fortaleciendo la unión entre habitantes y preservando tradiciones antiguas.

## Costumbres
- **Convivencia en espacios públicos:** Plaza principal y parques como lugares de reunión familiar y social.
- **Deportes frecuentes:** Voleibol, básquetbol y béisbol, tanto en escuelas como en espacios comunitarios.
- **Eventos y festivales:** Participación en ferias locales y festivales como el XXXII Festival Internacional en la Costa del Seno Mexicano.
- **Tradiciones familiares y religiosas:** Celebraciones de bodas, bautizos, quinceañeras, cabalgatas y fiestas patronales con música norteña, comidas típicas y actividades culturales.

## Gastronomía
La cocina local incluye cabrito asado, carne seca o machacado con huevo, tamales norteños, asado de puerco, pan de horno, frijoles charros y empanadas dulces o de carne. Los platillos se preparan con recetas familiares y son parte esencial de la identidad y convivencia comunitaria.

## Educación
San Nicolás enfrenta retos educativos, con un alto porcentaje de población con educación básica incompleta y analfabetismo. Existen preescolar, primaria y telesecundaria; la educación media superior se cursa principalmente en línea. La comunidad apoya a los estudiantes para continuar sus estudios, reflejando valores de cooperación y compromiso.

## Sociedad
Es una sociedad pequeña, rural y cercana, con familias numerosas y estilo de vida comunitario. La vida social gira en torno a la iglesia, la plaza y los eventos culturales y deportivos, fortaleciendo los lazos entre habitantes y preservando tradiciones locales.

## Turismo y lugares emblemáticos
**Encanto natural y vida rural:** San Nicolás destaca por sus paisajes rurales, montañas y áreas agrícolas, ideales para caminatas y descanso, permitiendo a los visitantes disfrutar de la vida cotidiana y naturaleza del municipio.

**Tradición y cultura:** El turismo se basa en autenticidad: gastronomía local, fiestas patronales, convivencias comunitarias y preservación de costumbres.

**Edificios y sitios históricos:**
- Parroquia de Nuestra Señora de Monserrat: Siglo XIX, ubicada en Juárez y Allende.
- Parroquia de San Nicolás Tolentino: Construida en 1769, símbolo del antiguo Real de San Nicolás.
- Presidencia Municipal: Edificada en 1760, mantiene su estructura antigua y vistas hacia la plaza.

**Lugares turísticos destacados:**
- Cruz en el Ejido El Palmar: Símbolo de fe y mirador de la comunidad.
- Ruinas de minería: Restos de la actividad minera del siglo XVIII en El Palmar, Las Vírgenes y la cabecera municipal.

## Conclusión
San Nicolás, Tamaulipas, es un municipio con gran riqueza cultural, histórica y natural. Su población mantiene tradiciones, valores y costumbres que fortalecen la identidad local. La economía rural basada en agricultura y ganadería, junto con la convivencia comunitaria y la vida religiosa, define un estilo de vida tranquilo y cercano. Sus paisajes, edificaciones históricas y festividades atraen al turismo que busca autenticidad y contacto con la naturaleza, convirtiendo a San Nicolás in un ejemplo de pueblo que preserva su herencia y cultura.
''',
  imagenAsset: 'assets/images/san_nicolas.jpg',
  imagenes: [
    'assets/fotos/San_nicolas.png'
  ],
  poblacion: '1,500 hab.',
  superficie: '200 km²',
  gentilicio: 'San Nicolás',

  monumentos3D: [
    Monumento(
      nombre: 'Tumba emblematica de San Nicolas',
      descripcion: 'Un monumento icónico de la ciudad de San Nicolas.',
      rutaModelo: 'assets/models/Sannicolas.glb',
      escala: 1.0,
    ),
  ],
);
