import '../../models/municipio.dart';
import '../../models/monumento.dart';

final bustamante = Municipio(
  id: 'bustamante',
  nombre: 'Bustamante',
  descripcionCorta: 'Puerta de la Sierra Madre Oriental, con grutas y tradición.',
  descripcionLarga:  '''
## Introducción
Bustamante es un municipio enclavado en la Sierra Madre Oriental, conocido como la "Puerta de la Sierra". Fundado en 1749, es famoso por sus grutas, cañones y manantiales, así como por su pan artesanal y sus tradiciones norteñas. Es un destino ideal para el ecoturismo y la aventura, con paisajes montañosos que contrastan con el semidesierto. Su clima fresco atrae a visitantes durante todo el año, especialmente en verano.

## Historia
La historia de Bustamante se remonta al siglo XVIII durante la colonización del Nuevo Santander. Fue fundado como parte del proyecto de poblamiento impulsado por José de Escandón. Con el tiempo, adoptó el nombre de Bustamante en honor a Anastasio Bustamante, expresidente de México. Ha mantenido una fuerte tradición agrícola y una identidad marcada por su herencia colonial y su relación con la sierra. Durante la Revolución Mexicana, hubo enfrentamientos en la zona y se formaron ejidos.

## Geografía y Población
Se ubica en la región centro-oeste de Tamaulipas, dentro de la Sierra Madre Oriental. Su territorio está formado por montañas, cañones, ríos subterráneos y zonas boscosas. La vegetación incluye bosques de pino y encino, así como matorrales en zonas bajas. Fauna: venado cola blanca, armadillo, zorro, conejo, y aves como el águila y el halcón. El clima es semiárido templado, con inviernos frescos (hasta 0°C) y veranos calurosos.  
Población: aproximadamente 7,720 habitantes, principalmente en la cabecera y comunidades cercanas.

## Economía
- **Agricultura:** Maíz, frijol, sorgo, hortalizas (tomate, chile).  
- **Ganadería:** Bovinos, caprinos, aves.  
- **Nuez pecanera:** Producto importante, con huertas familiares.  
- **Pan artesanal:** Muy reconocido en la región (pan de Bustamante, de masa dura y dulce).  
- **Turismo ecológico:** Grutas, cañones, manantiales, senderismo.

## Cultura y Tradiciones
**Fiestas:** Patronal de San Miguel Arcángel (29 de septiembre) con procesiones, música de banda, danzas, cabalgatas, jaripeos, juegos pirotécnicos. También se celebra la Feria del Pan (abril) y el Día de Muertos.  
**Artesanías:** Tejidos de palma, talabartería, pan artesanal en hornos de leña.  
**Gastronomía:** Asado de puerco, enchiladas norteñas, carne seca, tamales, gorditas; dulces de nuez pecanera; pan de Bustamante (emblemático). También se elabora queso de cabra.  
**Leyendas:** Se cuenta que en las grutas habita un "nahual" que protege la sierra, y que en el cañón se escuchan lamentos de mineros perdidos.  
**Música:** Norteña, huapango y polka.

## Turismo y Atractivos
- **Grutas de Bustamante:** Cavernas con formaciones calcáreas, estalactitas, estalagmitas y un recorrido iluminado de más de 500 metros.  
- **Cañón de Bustamante:** Formación geológica impresionante, ideal para senderismo y rapel.  
- **Ojo de Agua:** Manantial natural de agua cristalina, con albercas.  
- **Presa El Nogalito:** Pesca de lobina, paseos en lancha, camping.  
- **Templo de San Miguel Arcángel:** Iglesia del siglo XVIII, de estilo barroco.  
- **Plaza Principal:** Jardín con kiosco, rodeada de arcos.  
- **Mirador del Cerro de la Cruz:** Vista panorámica del valle.

## Educación y Salud
Cuenta con preescolar, primaria, secundaria y bachillerato (COBAT). Para estudios superiores, los jóvenes viajan a Ciudad Victoria o Linares (Nuevo León). En salud, un centro de salud y clínica rural.

## Personajes Ilustres
- **General Anastasio Bustamante (1780-1853):** Expresidente de México (aunque nació en Jalisco, el municipio lleva su nombre).  
- **Don Jesús González (1900-1980):** Fundador de la panadería tradicional.  
- **Profesor José Hernández (1930-2000):** Promotor de la educación rural.

## Datos Curiosos
- Las grutas tienen una profundidad de más de 100 metros.  
- El pan de Bustamante se hornea en hornos de leña de adobe.  
- En el cañón se han filmado escenas de películas de aventuras.  
- El Ojo de Agua mantiene una temperatura constante de 18°C.  
- La nuez pecanera se cosecha entre octubre y diciembre.

## Perspectivas Futuras
Se busca impulsar el turismo de naturaleza, mejorar la infraestructura de las grutas y cañón, y promover la producción artesanal del pan y la nuez.
''',
  imagenAsset: 'assets/images/bustamante.jpg',
  imagenes: [
    'assets/fotos/bustamante.png',
    'assets/fotos/pueblo-bustamante.jpg',
    'assets/fotos/bustamante02.jpg'
  ],
  poblacion: '7,720 hab.',
  superficie: '780 km²',
  gentilicio: 'Bustamantense',

  monumentos3D: [
    Monumento(
      nombre: 'Monumento al Profr. y Gral. Alberto Carrera Torres',
      descripcion: 'Un monumento icónico de la ciudad de Bustamante.',
      rutaModelo: 'assets/models/Bustamante.glb',
      escala: 1.0,
    ),
  ],
);

final List<Map<String, dynamic>> lugaresBustamante = [
  {
    'nombre': 'Grutas de Bustamante',
    'descripcion': 'Cavernas con formaciones calcáreas.',
    'lat': 23.5333,
    'lng': -99.8667,
  },
  {
    'nombre': 'Cañón de Bustamante',
    'descripcion': 'Formación geológica para senderismo.',
    'lat': 23.5500,
    'lng': -99.8500,
  },
  {
    'nombre': 'Ojo de Agua',
    'descripcion': 'Manantial natural.',
    'lat': 23.5400,
    'lng': -99.8600,
  },
  {
    'nombre': 'Presa El Nogalito',
    'descripcion': 'Pesca y recreación.',
    'lat': 23.5200,
    'lng': -99.8400,
  },
];