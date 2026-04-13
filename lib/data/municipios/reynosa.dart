import '../../models/municipio.dart';
import '../../models/monumento.dart';

import '../../models/municipio.dart';

final reynosa = Municipio(
  id: 'reynosa',
  nombre: 'Reynosa',
  descripcionCorta: 'Ciudad fronteriza industrial y cultural, corazón de la maquila.',
  descripcionLarga: '''
## Objetivo
Presentar información clara sobre la ciudad (historia, geografía, economía, cultura y vida cotidiana) para fortalecer el sentido de identidad y pertenencia.

## Introducción
Reynosa es una ciudad fronteriza de Tamaulipas, ubicada junto al Río Bravo y colindante con Texas. Es un importante centro industrial, económico y de servicios, con atractivos culturales, turísticos y gastronómicos.

## Historia
**Época prehispánica:** Habitaron grupos indígenas nómadas (caza, pesca y recolección). No existían asentamientos permanentes organizados.

**Fundación y época colonial:** Fundada en 1749 por José de Escandón. Su economía era básica (pieles y sal). Fue trasladada en 1802 por inundaciones.

**Siglos XIX–XX:** Pasó de villa a ciudad industrial. Siglo XIX: comercio, ganadería y problemas como epidemias. Siglo XX: ferrocarril, petróleo y maquiladoras impulsaron el crecimiento.

**Personajes importantes:** Incluye fundadores, políticos, educadores y figuras culturales que impulsaron el desarrollo de la ciudad.

## Geografía
**Ubicación:** Está en el norte de Tamaulipas, junto a Estados Unidos, en una zona plana cerca del Río Bravo.

**Población:** Es el municipio más poblado del estado (más de 700 mil habitantes), con crecimiento por migración.

**Clima:** Semicálido y seco: veranos muy calurosos, inviernos suaves con frentes fríos.

## Economía
**Sectores principales:**
- Industria maquiladora
- Comercio y servicios
- Logística fronteriza
- Actividades agropecuarias

**Maquilas:** Empresas importantes (ejemplo): LG Electronics, Aptiv, Nidec, Corning, entre otras. Reynosa es uno de los principales centros industriales de la frontera.

## Cultura
La cultura de Reynosa se caracteriza por una mezcla de influencias fronterizas, tradiciones mexicanas y un fuerte enfoque en la promoción de las artes. Destacan festividades como la Feria de la Cosecha y las celebraciones del Día de Muertos. En cuanto a la infraestructura cultural, sobresalen la Casa de la Cultura de Reynosa y el Parque Cultural Reynosa, un importante centro de actividades artísticas y de convivencia comunitaria.

**Festividades:**
- Feria de la Cosecha (principal festividad local, celebrada anualmente en el mes de agosto)
- Día de Muertos
- Virgen de Guadalupe
- Fiestas patrias

**Infraestructura cultural:**
- Parque Cultural Reynosa
- Casa de la Cultura
- Catedral de Guadalupe

## Turismo
**Lugares principales:**
- Parque Cultural Reynosa
- Zoológico y áreas recreativas
- Centro histórico y museos

Es un lugar de convivencia familiar y paso hacia Texas.

## Opiniones de habitantes
"Reynosa tiene un gran espíritu y una comunidad muy trabajadora." — María G.
"El Parque Cultural es un espacio único para la familia." — Juan P.
"La actividad comercial y de maquila ha transformado la ciudad." — Luis A.

## Educación
Cuenta con educación básica, media y superior (pública y privada). Promedio de escolaridad: 10.2 años. Hay universidades, técnicos y programas para adultos. Existen retos en cobertura en zonas periféricas.

## Antes vs Ahora
- **Antes:** economía agrícola y población pequeña.
- **Ahora:** ciudad industrial con crecimiento urbano, servicios y comercio internacional.

## Retos y oportunidades
**Retos:** tráfico, contaminación, desigualdad en servicios.
**Oportunidades:** participación ciudadana, proyectos juveniles, colaboración entre gobierno, escuelas y empresas.

## Valores
- Solidaridad
- Trabajo
- Resiliencia

## Costumbres
- Reuniones familiares (carne asada)
- Celebraciones religiosas y patrias
- Cruce frecuente a Estados Unidos

## Gastronomía (Sabores)
- Carne asada (principal)
- Tacos y comida callejera
- Influencia de comida estadounidense

## Sociedad
Diversa y multicultural por la migración. Tiene identidad fuerte, organización social y mezcla de culturas.

## Curiosidades de Reynosa
- Muchas personas se identifican como "reynosenses" y mantienen vínculos familiares a ambos lados de la frontera.
- Es común que la población combine expresiones en español e inglés.
- Para muchas familias, cruzar "al otro lado" forma parte de la rutina.
- Las reuniones de carne asada y las salidas a plazas comerciales son parte central del tiempo libre.
- La ciudad ha sido escenario de historias, canciones y anécdotas que reflejan la vida en la frontera norte de México.

## Conclusión
Reynosa es una ciudad fronteriza clave con gran desarrollo industrial, identidad cultural fuerte y una sociedad trabajadora que enfrenta retos pero también muchas oportunidades.
''',
  imagenAsset: 'assets/images/reynosa0101.jpeg',
  imagenes: [
    'assets/images/reynosa_1.jpg',
    'assets/images/reynosa_2.jpg',
    'assets/images/reynosa_3.jpg',
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
