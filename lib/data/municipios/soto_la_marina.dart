import '../../models/municipio.dart';
import '../../models/monumento.dart';

final soto_la_marina = Municipio(
  id: 'soto_la_marina',
  nombre: 'Soto la Marina',
  descripcionCorta: 'Historia, playa y naturaleza en el noreste de Tamaulipas.',
  descripcionLarga: '''
## Introducción
El propósito de este trabajo es investigar, comprender y difundir la historia, cultura y costumbres de la ciudad de Soto la Marina, un lugar lleno de tradiciones, riqueza natural y un pasado que forma parte importante de la identidad tamaulipeca. A través de este documento se busca fomentar el conocimiento y el orgullo por nuestras raíces, mostrando la evolución de la ciudad desde su fundación hasta la actualidad, así como los aspectos que la hacen única dentro del estado de Tamaulipas.

## Historia
Soto la Marina fue fundado en 1750 por José de Escandón y Helguera. Durante la época colonial enfrentó problemas como inundaciones, clima extremo y conflictos con pueblos indígenas.

En 1817, Francisco Xavier Mina utilizó la zona como base en la lucha por la Independencia, pero fue derrotado tras la rendición del lugar.

En la Revolución Mexicana, tropas de Pancho Villa estuvieron en la región durante su retiro.

## Geografía y Población
Se ubica en el noreste de Tamaulipas, con clima cálido y semiárido. Tiene alrededor de 23,673 habitantes y una amplia extensión territorial.

El río Soto la Marina es fundamental, ya que desemboca en el Golfo de México y forma ecosistemas como manglares y humedales importantes para la región.

## Ubicaciones
Destacan lugares importantes dentro del municipio como:
- Zona arqueológica El Sabinito, con más de 500 estructuras prehispánicas.
- Sierra de Tamaulipas, con gran riqueza natural.
- Áreas cercanas al río y la costa, que concentran biodiversidad y actividades económicas.

## Economía
La economía se basa principalmente en:
- **Agricultura:** sorgo, maíz, frijol.
- **Ganadería:** bovinos, caprinos y porcinos.
- **Pesca:** robalo, mojarra, camarón.
También hay crecimiento en el turismo y comercio.

## Cultura, Valores y Tradiciones
Se caracteriza por la unión familiar, el respeto y la identidad cultural.

**Festividades:**
- Fiestas patronales
- Aniversario de fundación
- Feria regional

**Gastronomía:**
- Pescado a la talla
- Camarones al mojo de ajo
- Cabrito asado

## Educación y Sociedad
El municipio cuenta con escuelas de nivel básico, medio superior y superior, lo que permite que los jóvenes estudien sin salir de la región.

La educación fortalece la comunidad, fomenta valores como el respeto, la cooperación y el sentido de pertenencia, además de impulsar el desarrollo social y económico.

- Colegio de Bachilleres del Estado de Tamaulipas Plantel 16 Soto la Marina (COBAT 16)
- Instituto Soto la Marina
- Universidad Tecnológica del Mar de Tamaulipas Bicentenario (UTMART)

## Turismo y Lugares Emblemáticos
- Playa La Pesca
- Zona arqueológica El Sabinito
- Río Soto la Marina
- Parroquia Nuestra Señora de la Consolación

Son atractivos importantes por su naturaleza, historia y cultura.

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

## Conclusión
Soto la Marina es un municipio con gran riqueza histórica, cultural y natural. A pesar de sus retos, su gente, tradiciones y valores lo convierten en un lugar importante. Conservar su identidad es clave para el futuro.
''',
  imagenAsset: 'assets/images/soto_la_marina.jpg',
  imagenes: [
    'assets/fotos/Soto.png',
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
