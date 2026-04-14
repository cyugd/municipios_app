import '../../models/municipio.dart';
import '../../models/monumento.dart';

final ocampo = Municipio(
  id: 'ocampo',
  nombre: 'Ocampo',
  descripcionCorta: 'Región de historia minera y tradición, puerta a la Reserva El Cielo.',
  descripcionLarga: '''
## Introducción
Ocampo es un municipio ubicado en el estado de Tamaulipas, en la región centro-occidental. Su cabecera es Ciudad Ocampo, que originalmente se llamaba Villa de Santa Bárbara. Se localiza entre varios municipios y el estado de San Luis Potosí, lo que lo convierte en un punto de conexión regional. Es una zona con paisajes variados, clima semiárido y una población que conserva tradiciones, costumbres y una fuerte identidad cultural.

## Historia
**Época prehispánica:** Antes de la llegada de los españoles, la región estaba habitada por pueblos nómadas que dejaron pinturas rupestres y usaban rutas comerciales indígenas.

**Fundación:** El lugar se fundó como Villa de Santa Bárbara durante la colonización española.

**Cambios históricos:** Con el tiempo el poblado creció y cambió su nombre a Ocampo.

**Historia económica:** Las principales actividades fueron la agricultura, la ganadería, la producción de piloncillo y la minería.

**Revolución Mexicana:** Durante la Revolución la región vivió cambios sociales y políticos derivados del movimiento.

**Ocampo actual:** Actualmente el municipio destaca por el turismo ecológico y el desarrollo cultural.

## Línea del tiempo histórica
- **1749:** Fundación de la Villa de Santa Bárbara por José de Escandón.
- **1757:** Una inundación obliga a trasladar la población a una zona más alta.
- **1869:** La villa cambia su nombre a Ocampo en honor a Melchor Ocampo.
- **1898:** Ocampo recibe el título de ciudad.
- **1910-1920:** La región vive cambios durante la Revolución Mexicana.
- **1936:** Se crea el primer ejido como parte de la reforma agraria.
- **1965:** Llega la electrificación a la cabecera municipal y comunidades.
- **1998:** Celebración del 250 aniversario de su fundación.

## Geografía y población
Ocampo se ubica al suroeste de Tamaulipas, en una zona entre la Sierra Madre Oriental y las llanuras del Golfo. Tiene una extensión de 1,691.71 km² y una altitud aproximada de 1,173 metros sobre el nivel del mar. Su territorio presenta zonas planas y montañosas, con ríos y arroyos intermitentes. La disponibilidad de agua es limitada y depende de pozos y presas.

Según el censo 2020 tiene 13,190 habitantes, distribuidos entre la cabecera municipal y muchas localidades rurales. La población es mayormente joven y el municipio presenta un carácter rural con baja densidad poblacional. También existe migración hacia ciudades grandes y Estados Unidos.

## Características socioeconómicas y ecológicas
Gran parte del municipio mantiene características rurales y su economía depende principalmente en actividades primarias. Esto representa retos en servicios, pero también oportunidades para el turismo y la conservación cultural.

## Economía
- **Agricultura:** Es la actividad principal y genera cerca del 65% de la economía, empleando a gran parte de la población.
- **Ganadería:** Representa aproximadamente 25% de la actividad económica.
- **Comercio:** Incluye negocios locales que abastecen las necesidades básicas de la población.
- **Turismo:** Aporta cerca del 3% de la economía, con potencial para el turismo natural y cultural.

## Vestimenta tradicional
La ropa tradicional masculina incluye sombrero, botas y ropa resistente para el trabajo en el campo, influenciada por la cultura vaquera del norte de México.

## Festividades
- Año Nuevo
- Semana Santa
- Fiesta patronal de Santa Bárbara (noviembre-diciembre)
- Feria del Maíz

## Tradiciones y costumbres
- Danza de Matlachines
- Rodeos charros
- Velaciones religiosas
- Sistema de compadrazgo familiar

## Gastronomía
Algunos platillos y alimentos tradicionales son:
- Cabrito al pastor
- Tamales de cerdo
- Asado de puerco
- Capirotada
- Carlota de limón
- Buñuelos
- Atole de maíz

## Turismo
El municipio tiene lugares naturales y culturales para visitar, entre ellos:
- Reserva de la Biosfera El Cielo
- Iglesia de Santa Bárbara
- Miradores naturales con vistas panorámicas

## Educación
Ocampo cuenta con 73 planteles educativos, incluyendo: 22 jardines de niños, 41 primarias, 7 secundarias, 3 escuelas de nivel medio superior. Aunque existe cobertura educativa, aún hay retos en infraestructura y acceso a niveles superiores en comunidades rurales.

## Conclusión
Ocampo es un municipio con una fuerte identidad cultural y tradiciones arraigadas. A pesar de enfrentar desafíos económicos y de infraestructura, destaca por su riqueza natural, su historia y su potencial turístico, manteniendo un equilibrio entre modernidad y tradiciones.
''',
  imagenAsset: 'assets/images/ocampo.jpg',
  imagenes: [
    'assets/fotos/Ocampo.png',
  ],
  poblacion: '6,000 hab.',
  superficie: '500 km²',
  gentilicio: 'Ocampense',

  monumentos3D: [
    Monumento(
      nombre: 'Muralla de entrada a Ocampo',
      descripcion: 'Un monumento icónico de la ciudad de Ocampo.',
      rutaModelo: 'assets/models/Ocampo.glb',
      escala: 1.0,
    ),
  ],
);
