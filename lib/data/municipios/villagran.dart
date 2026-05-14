import '../../models/municipio.dart';
import '../../models/monumento.dart';

final villagran = Municipio(
  id: 'villagran',
  nombre: 'Villagrán',
  descripcionCorta: 'Municipio rural con historia colonial y tradición agrícola.',
  descripcionLarga: '''
## Historia
Villagrán fue fundado el 8 de mayo de 1757 por Domingo de Ungaza con el nombre de Villa Real de Borbón, como parte de la colonización del noreste de la Nueva España. Tras la Independencia de México, en 1827, cambió su nombre a Villagrán en honor al insurgente Julián de Villagrán, quien luchó por la libertad del país.  
Durante la época colonial fue un asentamiento agrícola y ganadero, con familias dedicadas al cultivo de maíz y la cría de ganado. En la Independencia tuvo un papel como zona de paso estratégico, y durante la Revolución Mexicana sufrió efectos económicos y sociales, con saqueos y migración de habitantes.  
En el siglo XX se consolidó como municipio rural, con desarrollo basado en ejidos y actividades del campo, manteniendo ese carácter hasta la actualidad. Su historia refleja la transición de una villa colonial a un municipio moderno con identidad rural.

## Geografía
Villagrán se ubica en la región centro-sur de Tamaulipas, al pie del Cerro de Santiago. Su relieve combina llanuras y pequeñas elevaciones que favorecen la agricultura y la ganadería.  
El clima es semiseco cálido, con lluvias en verano. No cuenta con grandes ríos, pero sí con arroyos temporales que abastecen a las comunidades rurales.  
Tiene una población aproximada de 5,361 habitantes, con tendencia a disminuir por la migración hacia otras ciudades y Estados Unidos. La dispersión poblacional en ejidos y rancherías refleja su carácter rural.

## Economía
La economía es principalmente rural.  
**Actividades principales:**  
- **Agricultura:** maíz y sorgo.  
- **Ganadería:** bovinos, caprinos y aves.  
- **Comercio y servicios:** tiendas, mercados y pequeños negocios familiares.  
- **Industria:** pequeña escala (panaderías, lácteos, talleres).  
También son importantes las remesas enviadas desde Estados Unidos, que apoyan la economía familiar.  
En general, el municipio enfrenta retos como baja industrialización y dependencia del campo, aunque se han impulsado proyectos de producción artesanal y ferias agrícolas para diversificar la economía.

## Cultura
La cultura de Villagrán está fuertemente ligada a sus tradiciones rurales y religiosas.  
Destacan celebraciones, música norteña y banda, así como danzas folklóricas que acompañan las festividades.  
Entre sus espacios importantes están la parroquia, la presidencia municipal y monumentos históricos que reflejan su identidad. La vida cultural se organiza en torno a la plaza principal, donde se realizan ferias, cabalgatas y convivencias comunitarias.

## Valores
Los principales valores de la comunidad son:  
- **Hospitalidad:** trato amable a visitantes.  
- **Solidaridad:** apoyo entre vecinos.  
- **Respeto:** hacia personas y tradiciones.  
- **Cooperación:** trabajo comunitario.  
- **Sentido de pertenencia:** orgullo por su historia.  
Estos valores fortalecen la cohesión social y se reflejan en la organización de festividades y en la vida cotidiana.

## Costumbres
Las costumbres incluyen la convivencia en la plaza, visitas familiares y celebraciones sociales como bodas y quinceañeras.  
**Fiestas importantes:**  
- Fundación del municipio (8 de mayo).  
- Fiestas patrias.  
- Día de Muertos.  
- Fiesta de San Isidro Labrador.  
Estas actividades fortalecen la unión social y la identidad cultural, siendo espacios donde se mezclan tradición, religión y convivencia comunitaria.

## Gastronomía
La comida típica refleja la tradición del norte de México.  
**Platillos destacados:**  
- Gorditas rellenas.  
- Asado de puerco.  
- Tamales norteños.  
- Cabrito al pastor.  
- Atole de masa.  
- Empanadas de calabaza o camote.  
Son platillos tradicionales preparados en reuniones familiares y festividades, reflejando la identidad rural y el sabor de la cocina casera.

## Educación
El municipio cuenta con educación básica y media, como:  
- Primaria Benito Juárez.  
- Secundaria Técnica No. 3.  
- COBAT Plantel Villagrán.  
También dispone de biblioteca pública y actividades culturales que fomentan el aprendizaje y la identidad local.  
Para estudios superiores, los jóvenes suelen salir a otros municipios como Ciudad Victoria o Reynosa, lo que representa un reto en la formación profesional de la comunidad.

## Sociedad
Villagrán es una sociedad pequeña, rural y cercana, con familias numerosas y estilo de vida comunitario.  
La vida social gira en torno a la iglesia, la plaza y los eventos culturales y deportivos, fortaleciendo los lazos entre habitantes y preservando tradiciones locales.  
La migración ha reducido la población activa, pero las remesas y el apego cultural mantienen la cohesión social y el orgullo por la identidad local.

## Conclusión
Villagrán es un municipio con raíces históricas profundas y una identidad rural bien definida. Su economía depende principalmente del campo, mientras que su vida social se sostiene en valores como la solidaridad y la cooperación.  
A pesar de retos como la migración y la falta de desarrollo industrial, conserva tradiciones, cultura y un fuerte sentido de comunidad.  
Su futuro depende del fortalecimiento de la educación, la economía local y el aprovechamiento de sus recursos naturales y culturales, consolidándose como un municipio que preserva su historia y busca un desarrollo sostenible.
''',
  imagenAsset: 'assets/images/villagran.jpeg',
  imagenes: [
    'assets/fotos/Villagran.png',
    'assets/fotos/villagrant.jpg',
    'assets/fotos/villagrant2.jpg'
  ],
  poblacion: '5,361 hab.',
  superficie: '800 km²',
  gentilicio: 'Villagranense',

  monumentos3D: [
    Monumento(
      nombre: 'Monumento de los caidos',
      descripcion: 'Un monumento icónico de la ciudad de Villagran.',
      rutaModelo: 'assets/models/Villagran.glb',
      escala: 1.0,
    ),
  ],
);

final List<Map<String, dynamic>> lugaresVillagran = [
  {
    'nombre': 'Cerro de Santiago',
    'descripcion': 'Elevación natural, ideal para caminatas.',
    'lat': 24.1667,
    'lng': -99.5000,
  },
  {
    'nombre': 'Plaza Principal',
    'descripcion': 'Centro de convivencia social y cultural.',
    'lat': 24.1500,
    'lng': -99.5000,
  },
  {
    'nombre': 'Parroquia local',
    'descripcion': 'Templo religioso del siglo XIX.',
    'lat': 24.1480,
    'lng': -99.5020,
  },
];