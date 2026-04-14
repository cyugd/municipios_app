import '../../models/municipio.dart';
import '../../models/monumento.dart';

final san_carlos = Municipio(
  id: 'san_carlos',
  nombre: 'San Carlos',
  descripcionCorta: 'Municipio con historia minera y tradiciones rurales en la Sierra de San Carlos.',
  descripcionLarga: '''
## Herencia Cultural y Tradición Regional
San Carlos, Tamaulipas, es un municipio con historia y tradiciones muy arraigadas. Fundado el 15 de febrero de 1750 por el Coronel José de Escandón y Helguera, lleva el nombre de su santo patrono, San Carlos Borromeo. Originalmente villa minera y agrícola, participó en eventos históricos como la Guerra de Independencia, la Guerra de Reforma y la Revolución Mexicana, aportando recursos y habitantes, y ha mantenido hasta hoy un estilo de vida rural y tranquilo.

## Historia
Desde su fundación, San Carlos se consolidó como una villa minera de gran importancia en el Nuevo Santander. En el siglo XIX apoyó los movimientos insurgentes y fue escenario de disputas políticas locales. Durante la Revolución Mexicana, varios habitantes se unieron al movimiento constitucionalista. A lo largo del tiempo, la comunidad ha conservado su estructura tradicional y el carácter agrícola de su economía tras el declive de la minería.

## Geografía y Población
Ubicado en la Sierra de San Carlos, tiene un relieve montañoso que limita el acceso a infraestructura moderna. Su clima es semiárido, con temperaturas extremas y lluvias estacionales. La vegetación incluye matorrales, selva baja caducifolia, mezquite, huizache, maguey y cactus, con zonas boscosas en áreas altas.

## Economía
La economía depende de la agricultura y ganadería. Se cultiva maíz, frijol, calabaza y sorgo, y se cría ganado bovino, caprino y ovino. Los productos como carne seca, queso, crema y cuero se consumen localmente y se venden en ferias.

## Cultura
San Carlos mantiene una identidad cultural fuerte con celebraciones religiosas y tradicionales. La comunidad se caracteriza por hospitalidad, respeto, solidaridad, trabajo en equipo y devoción religiosa, valores que se reflejan en la cooperación y transmisión de tradiciones de generación en generación.

## Valores
Los valores más representativos de la comunidad son el respeto, la solidaridad, el trabajo en equipo y la devoción religiosa. La vida en San Carlos gira en torno a la familia y las actividades del campo.

## Costumbres
- **Convivencia en espacios públicos:** Plaza principal y parques como lugares de reunión familiar y social.
- **Tradiciones familiares y religiosas:** Celebraciones de bodas, bautizos, quinceañeras, cabalgatas y fiestas patronales con música norteña y comidas típicas.

## Gastronomía
La cocina local incluye cabrito asado, carne seca o machacado con huevo, tamales norteños, asado de puerco, pan de horno y frijoles charros. Los platillos se preparan con recetas familiares y son parte esencial de la identidad.

## Educación
Cuenta con preescolar, primaria y telesecundaria. La comunidad apoya a los estudiantes para continuar sus estudios, reflejando valores de cooperación y compromiso.

## Sociedad
Es una sociedad pequeña, rural y cercana, con familias numerosas y estilo de vida comunitario. La vida social gira en torno a la iglesia, la plaza y los eventos culturales y deportivos.

## Turismo y lugares emblemáticos
San Carlos destaca por sus paisajes rurales, montañas y áreas históricas ligadas a la minería.
- **Parroquia de San Carlos Borromeo:** Símbolo histórico del municipio.
- **Ruinas de minería:** Restos de la actividad minera del siglo XVIII.

## Conclusión
San Carlos, Tamaulipas, es un municipio con gran riqueza cultural, histórica y natural. Su población mantiene tradiciones, valores y costumbres que fortalecen la identidad local.
''',
  imagenAsset: 'assets/images/san_carlos.jpg',
  imagenes: [
    'assets/fotos/San_carlos.png',
  ],
  poblacion: '9,000 hab.',
  superficie: '2,900 km²',
  gentilicio: 'Sancarlense',

  monumentos3D: [
    Monumento(
      nombre: 'Catedral de San Carlos',
      descripcion: 'Un monumento icónico de la ciudad de San Carlos.',
      rutaModelo: 'assets/models/Sancarlos.glb',
      escala: 1.0,
    ),
  ],
);
