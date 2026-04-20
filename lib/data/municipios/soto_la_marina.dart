import '../../models/municipio.dart';
import '../../models/monumento.dart';

final soto_la_marina = Municipio(
  id: 'soto_la_marina',
  nombre: 'Soto la Marina',
  descripcionCorta: 'Historia, playa y naturaleza en el noreste de Tamaulipas.',
  descripcionLarga:  '''
## Introducción
El propósito de este trabajo es investigar, comprender y difundir la historia, cultura y costumbres de la ciudad de Soto la Marina, un lugar lleno de tradiciones, riqueza natural y un pasado que forma parte importante de la identidad tamaulipeca.  
A través de este documento se busca fomentar el conocimiento y el orgullo por nuestras raíces, mostrando la evolución de la ciudad desde su fundación hasta la actualidad, así como los aspectos que la hacen única dentro del estado de Tamaulipas.  
Soto la Marina es considerado uno de los municipios más emblemáticos del noreste del estado, por su conexión con el río que lleva su nombre y por su papel histórico en la colonización y en movimientos sociales como la Independencia.

## Historia
Soto la Marina fue fundado en 1750 por José de Escandón y Helguera. Durante la época colonial enfrentó problemas como inundaciones, clima extremo y conflictos con pueblos indígenas.  
En 1817, Francisco Xavier Mina utilizó la zona como base en la lucha por la Independencia, pero fue derrotado tras la rendición del lugar.  
En la Revolución Mexicana, tropas de Pancho Villa estuvieron en la región durante su retiro, dejando huella en la memoria local.  
La historia de Soto la Marina refleja la resistencia de sus habitantes frente a fenómenos naturales y conflictos sociales, consolidando una identidad fuerte ligada al río y al mar.

## Geografía y Población
Se ubica en el noreste de Tamaulipas, con clima cálido y semiárido. Tiene alrededor de 23,673 habitantes y una amplia extensión territorial.  
El río Soto la Marina es fundamental, ya que desemboca en el Golfo de México y forma ecosistemas como manglares y humedales importantes para la región.  
La población se distribuye en comunidades rurales y urbanas, con fuerte arraigo en actividades agrícolas, pesqueras y ganaderas. La migración hacia Estados Unidos y ciudades grandes es frecuente, aunque muchos mantienen vínculos con la región.

## Ubicaciones
Destacan lugares importantes dentro del municipio como:  
- Zona arqueológica El Sabinito, con más de 500 estructuras prehispánicas.  
- Sierra de Tamaulipas, con gran riqueza natural y biodiversidad.  
- Áreas cercanas al río y la costa, que concentran biodiversidad y actividades económicas.  
Estos espacios reflejan la importancia histórica y ecológica de Soto la Marina, siendo atractivos para investigadores, turistas y habitantes.

## Economía
La economía se basa principalmente en:  
- **Agricultura:** sorgo, maíz, frijol.  
- **Ganadería:** bovinos, caprinos y porcinos.  
- **Pesca:** robalo, mojarra, camarón.  
También hay crecimiento en el turismo y comercio, con proyectos que buscan diversificar la economía.  
La producción agrícola y pesquera abastece mercados locales y regionales, mientras que el turismo en playas y zonas arqueológicas se ha convertido en una fuente de ingresos adicional.

## Cultura, Valores y Tradiciones
Se caracteriza por la unión familiar, el respeto y la identidad cultural.  
**Festividades:**  
- Fiestas patronales.  
- Aniversario de fundación.  
- Feria regional.  
**Gastronomía:**  
- Pescado a la talla.  
- Camarones al mojo de ajo.  
- Cabrito asado.  
La música norteña y las danzas tradicionales acompañan las celebraciones, reforzando la identidad comunitaria.

## Educación y Sociedad
El municipio cuenta con escuelas de nivel básico, medio superior y superior, lo que permite que los jóvenes estudien sin salir de la región.  
**Instituciones educativas destacadas:**  
- Colegio de Bachilleres del Estado de Tamaulipas Plantel 16 Soto la Marina (COBAT 16).  
- Instituto Soto la Marina.  
- Universidad Tecnológica del Mar de Tamaulipas Bicentenario (UTMART).  
La educación fortalece la comunidad, fomenta valores como el respeto, la cooperación y el sentido de pertenencia, además de impulsar el desarrollo social y económico.

## Turismo y Lugares Emblemáticos
Soto la Marina ofrece atractivos naturales, históricos y culturales:  
- **Playa La Pesca:** destino turístico de gran importancia en Tamaulipas.  
- **Zona arqueológica El Sabinito:** vestigios prehispánicos únicos en la región.  
- **Río Soto la Marina:** espacio natural para pesca y recreación.  
- **Parroquia Nuestra Señora de la Consolación:** patrimonio religioso y cultural.  
Estos lugares son símbolos de identidad y puntos de encuentro para visitantes y habitantes.

## Problemas y Retos
Soto la Marina enfrenta diversos desafíos que afectan su desarrollo:  
- **Inseguridad:** presencia de violencia y delitos que impactan la vida diaria y el turismo.  
- **Contaminación:** especialmente en el río, debido a desechos y agroquímicos, afectando la salud y la pesca.  
- **Servicios básicos:** falta de acceso adecuado a agua potable, drenaje y electricidad en algunas comunidades.  
- **Infraestructura:** carreteras y caminos rurales en mal estado dificultan la movilidad.  
- **Desigualdad:** diferencias entre zonas urbanas y rurales en oportunidades y calidad de vida.  
Estos problemas requieren inversión y acciones para mejorar las condiciones del municipio.

## Proyectos y Avances
Se han realizado inversiones en infraestructura, servicios básicos y promoción turística para mejorar la calidad de vida y el desarrollo económico.  
Entre los avances destacan proyectos de conservación ambiental, programas de apoyo a pescadores y agricultores, y la promoción de la Playa La Pesca como destino turístico internacional.

## Conclusión
Soto la Marina es un municipio con gran riqueza histórica, cultural y natural. A pesar de sus retos, su gente, tradiciones y valores lo convierten en un lugar importante.  
Conservar su identidad es clave para el futuro, y el desarrollo sostenible en agricultura, pesca y turismo puede garantizar mejores oportunidades para las próximas generaciones.
''',
  imagenAsset: 'assets/images/soto_la_marina.jpg',
  imagenes: [
    'assets/fotos/Soto.png',
    'assets/fotos/soto la marina2.webp',
    'assets/fotos/sotolamarina1.jpg',
  ],
  poblacion: '23,673 hab.',
  superficie: '6,000 km²',
  gentilicio: 'Sotense',

  monumentos3D: [
    Monumento(
      nombre: 'Monumento heroico',
      descripcion: 'Un monumento icónico de la ciudad de Soto la marina.',
      rutaModelo: 'assets/models/Soto.glb',
      escala: 1.0,
    ),
  ],
);


final List<Map<String, dynamic>> lugaresSotoLaMarina = [
  {
    'nombre': 'Playa La Pesca',
    'descripcion': 'Principal playa del municipio, ideal para pesca y descanso.',
    'lat': 23.7500,
    'lng': -97.8000,
  },
  {
    'nombre': 'Zona arqueológica El Sabinito',
    'descripcion': 'Más de 500 estructuras prehispánicas.',
    'lat': 23.7000,
    'lng': -98.0000,
  },
  {
    'nombre': 'Río Soto la Marina',
    'descripcion': 'Recurso hídrico fundamental para la región.',
    'lat': 23.7667,
    'lng': -98.2000,
  },
];
