import '../../models/municipio.dart';
import '../../models/monumento.dart';

final reynosa = Municipio(
  id: 'reynosa',
  nombre: 'Reynosa',
  descripcionCorta: 'Ciudad fronteriza industrial y cultural, corazón de la maquila.',
  descripcionLarga: '''
## Introducción
Reynosa es una ciudad fronteriza de Tamaulipas, ubicada junto al Río Bravo y colindante con Texas. Es un importante centro industrial, económico y de servicios, con atractivos culturales, turísticos y gastronómicos.  
Su ubicación estratégica la convierte en una de las ciudades más dinámicas de la frontera norte de México, con una población diversa y una economía que se conecta directamente con Estados Unidos. Reynosa es considerada la ciudad más poblada del estado y un motor de desarrollo regional.

## Historia
**Época prehispánica:** Habitaron grupos indígenas nómadas dedicados a la caza, pesca y recolección. No existían asentamientos permanentes organizados.  
**Fundación y época colonial:** Fundada en 1749 por José de Escandón. Su economía inicial se basaba en pieles y sal. En 1802 fue trasladada por inundaciones.  
**Siglo XIX:** Se desarrolló el comercio y la ganadería, aunque enfrentó problemas como epidemias y conflictos sociales.  
**Siglo XX:** El ferrocarril, el petróleo y las maquiladoras impulsaron el crecimiento acelerado de la ciudad. Reynosa se transformó en un centro industrial y fronterizo.  
**Personajes importantes:** Incluyen fundadores, políticos, educadores y figuras culturales que impulsaron el desarrollo de la ciudad, fortaleciendo su identidad y crecimiento.

## Geografía
**Ubicación:** Está en el norte de Tamaulipas, junto a Estados Unidos, en una zona plana cerca del Río Bravo.  
**Población:** Es el municipio más poblado del estado (más de 700 mil habitantes), con crecimiento constante por migración interna y externa.  
**Clima:** Semicálido y seco, con veranos muy calurosos e inviernos suaves con frentes fríos.  

## Economía
Reynosa es uno de los principales centros industriales de la frontera.  
**Sectores principales:**  
- Industria maquiladora.  
- Comercio y servicios.  
- Logística fronteriza.  
- Actividades agropecuarias.  

**Maquilas y empresas importantes:** LG Electronics, Aptiv, Nidec, Corning, entre otras. La ciudad es considerada un polo de atracción para inversiones extranjeras, especialmente en manufactura y tecnología.

## Cultura
La cultura de Reynosa se caracteriza por una mezcla de influencias fronterizas, tradiciones mexicanas y un fuerte enfoque en la promoción de las artes.  
**Festividades y tradiciones:**  
- Feria de la Cosecha (agosto).  
- Día de Muertos.  
- Virgen de Guadalupe.  
- Fiestas patrias.  

**Infraestructura cultural:**  
- Parque Cultural Reynosa.  
- Casa de la Cultura.  
- Catedral de Guadalupe.  

La vida cultural incluye música norteña, danza folklórica y actividades comunitarias que refuerzan la identidad fronteriza.

## Turismo
**Lugares principales:**  
- Parque Cultural Reynosa.  
- Zoológico y áreas recreativas.  
- Centro histórico y museos.  
La ciudad es un lugar de convivencia familiar y también un paso hacia Texas, lo que le da un carácter binacional.

## Opiniones de habitantes
- “Reynosa tiene un gran espíritu y una comunidad muy trabajadora.” — María G.  
- “El Parque Cultural es un espacio único para la familia.” — Juan P.  
- “La actividad comercial y de maquila ha transformado la ciudad.” — Luis A.  

## Educación
Cuenta con educación básica, media y superior (pública y privada).  
- Promedio de escolaridad: 10.2 años.  
- Universidades, técnicos y programas para adultos.  
Existen retos en cobertura en zonas periféricas, donde aún falta infraestructura y acceso a niveles superiores.

## Antes vs Ahora
- **Antes:** economía agrícola y población pequeña.  
- **Ahora:** ciudad industrial con crecimiento urbano, servicios y comercio internacional.  

## Retos y oportunidades
**Retos:** tráfico, contaminación, desigualdad en servicios.  
**Oportunidades:** participación ciudadana, proyectos juveniles, colaboración entre gobierno, escuelas y empresas.  

## Valores
- Solidaridad.  
- Trabajo.  
- Resiliencia.  

## Costumbres
- Reuniones familiares (carne asada).  
- Celebraciones religiosas y patrias.  
- Cruce frecuente a Estados Unidos como parte de la vida cotidiana.  

## Gastronomía (Sabores)
- Carne asada (principal).  
- Tacos y comida callejera.  
- Influencia de comida estadounidense.  

## Sociedad
Diversa y multicultural por la migración. Tiene identidad fuerte, organización social y mezcla de culturas. La vida fronteriza ha generado una sociedad dinámica, con vínculos familiares y comerciales a ambos lados del Río Bravo.

## Curiosidades de Reynosa
- Muchas personas se identifican como “reynosenses” y mantienen vínculos familiares a ambos lados de la frontera.  
- Es común combinar expresiones en español e inglés por la cercanía con Texas.  
- Para muchas familias, cruzar “al otro lado” forma parte de la rutina: compras, visitas, trabajo o citas médicas.  
- Las reuniones de carne asada y las salidas a plazas comerciales son parte central del tiempo libre.  
- La ciudad ha sido escenario de historias, canciones y anécdotas que reflejan la vida en la frontera norte de México.  

## Conclusión
Reynosa es una ciudad fronteriza clave con gran desarrollo industrial, identidad cultural fuerte y una sociedad trabajadora que enfrenta retos pero también muchas oportunidades. Su papel como motor económico y cultural de Tamaulipas la convierte en un referente de la vida fronteriza en México.
''',
  imagenAsset: 'assets/images/reynosa0101.jpeg',
  imagenes: [
    'assets/fotos/Reynosa.png',
    'assets/fotos/reynosa1.jpg',
    'assets/fotos/reynosa2.webp'
  ],
  poblacion: '700,000 hab.',
  superficie: '3,000 km²',
  gentilicio: 'Reynosense',
  monumentos3D: [
    Monumento(
      nombre: 'Monumento a la Patria',
      descripcion: 'Un monumento icónico de la ciudad de Reynosa.',
      rutaModelo: 'assets/models/Reynosa.glb',
      escala: 1.0,
    ),
  ],
);


final List<Map<String, dynamic>> lugaresReynosa = [
  {
    'nombre': 'Parque Cultural Reynosa',
    'descripcion': 'Centro cultural con exposiciones, teatro y áreas recreativas.',
    'lat': 26.0925,
    'lng': -98.2783,
  },
  {
    'nombre': 'Catedral de Guadalupe',
    'descripcion': 'Templo religioso emblemático de la ciudad.',
    'lat': 26.0900,
    'lng': -98.2770,
  },
  {
    'nombre': 'Puente Internacional Reynosa-Pharr',
    'descripcion': 'Cruce fronterizo clave para el comercio.',
    'lat': 26.0900,
    'lng': -98.2500,
  },
];