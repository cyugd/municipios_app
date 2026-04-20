import '../../models/municipio.dart';
import '../../models/monumento.dart';

final antiguo_morelos = Municipio(
  id: 'antiguo_morelos',
  nombre: 'Antiguo Morelos',
  descripcionCorta: 'Municipio con raíces huastecas y tradición rural.',
  descripcionLarga:  '''
## Introducción
Antiguo Morelos es un municipio ubicado en el sur de Tamaulipas, en la región de la Huasteca. Su cabecera es la Villa de Antiguo Morelos, fundada sobre un antiguo asentamiento huasteco llamado Tampemol. Se caracteriza por su ambiente rural, sus tradiciones indígenas y mestizas, y su cercanía a la Sierra Madre Oriental. La caña de azúcar y los cítricos son la base de su economía, y el turismo rural está en desarrollo. Es un lugar ideal para quienes buscan tranquilidad y contacto con la naturaleza.

## Historia
Antiguo Morelos tiene su origen en un asentamiento huasteco llamado Tampemol, ubicado en el Valle de Tampuejem. Su formación comenzó en el siglo XVIII con familias que se establecieron en el “Charco de Baltazar”, y su fundación formal fue en 1751.  
En 1827 recibió el nombre de Villa Morelos en honor a José María Morelos y Pavón. En 1862 se consolidaron los municipios de Antiguo Morelos y Nuevo Morelos tras cambios administrativos. Durante el Porfiriato tuvo auge económico gracias a la agricultura, pero en la Revolución Mexicana fue atacado en 1918 y quedó parcialmente abandonado. En 1920 se repobló y retomó su crecimiento.  
A lo largo del siglo XX, se construyeron caminos, escuelas y servicios de salud. La migración a Estados Unidos y a ciudades como El Mante ha sido constante, pero la comunidad mantiene un fuerte apego a sus raíces.

## Geografía y Población
Se ubica en el sur de Tamaulipas, colindando con Ocampo, El Mante, Nuevo Morelos y San Luis Potosí. Tiene una extensión de 561.30 km² y una altitud aproximada de 178 msnm. El relieve incluye lomeríos y zonas de la Sierra Madre Oriental. El clima es semicálido húmedo con lluvias en verano. La vegetación incluye encino y chaca, y la fauna especies como venado cola blanca, coyote, armadillo, conejo, y aves como el zopilote y la codorniz.  
Población: 8,850 habitantes (2020), joven (edad promedio 27 años). Alrededor de 60 personas hablan lenguas indígenas como náhuatl y tenek. La migración hacia otras ciudades es frecuente.

## Economía
- **Agricultura:** Caña de azúcar (principal cultivo, destinada al Ingenio El Mante), maíz, sorgo, frijol, cítricos (naranja, limón).  
- **Ganadería:** Bovina, porcina, caprina, aves, producción de miel.  
- **Comercio:** Pequeños negocios, tiendas de abarrotes, talleres.  
- **Turismo:** Rural y ecológico, con visitas a grutas, presas y templos.

## Cultura y Tradiciones
La cultura combina herencia huasteca y tradiciones rurales. Destaca el Templo de San José como centro religioso. El huapango y la música norteña forman parte de las celebraciones. Existen espacios como la Casa de la Cultura y un museo local que conserva piezas arqueológicas.  
**Fiestas:** Patronales de San José (del 18 al 31 de marzo) con procesiones, jaripeos, bailes, danza de Matlachines. También Día de Muertos (altares, visitas al panteón), Semana Santa (viacrucis), Fiestas Patrias.  
**Gastronomía:** Cecina, machaca con huevo, cabrito, mole, gorditas; tamales, carnitas, barbacoa; capirotada, empanadas y dulce de calabaza; café de olla y atole.  
**Artesanías:** Tejidos de palma, bordados, cestería, talabartería.  
**Leyendas:** Cuentan que en el Cerro La Peña habita un "nahual" que protege la sierra. También hay historias de aparecidos en la Presa El Oyul.

## Turismo y Atractivos
- **Templo de San José:** Construcción del siglo XVIII, de estilo barroco.  
- **Presa El Oyul:** Pesca de mojarra, paseos en lancha, camping.  
- **Cerro La Peña:** Senderismo y vistas panorámicas.  
- **Grutas del Ejido Praxedis Guerrero:** Formaciones calcáreas, aún poco exploradas.  
- **Museo local:** Piezas prehispánicas y de la Revolución.  
- **Plaza Principal:** Jardín con kiosco, rodeado de edificios históricos.  
- **Ríos y manantiales:** Ideales para nadar en temporada de lluvias.

## Educación y Salud
Cuenta con escuelas de nivel básico (primarias, secundaria técnica) y bachillerato (telebachillerato). Para educación superior, los jóvenes se trasladan a El Mante o Ciudad Victoria. En salud, hay un centro de salud rural y consultorios particulares.

## Personajes Ilustres
- **General Mariano Sánchez (1880-1940):** Revolucionario que participó en la toma de El Mante.  
- **Profesor Juan García (1920-1995):** Fundador de la primera escuela secundaria.  
- **Don Pedro Hernández (1900-1980):** Promotor de la agricultura de caña.

## Datos Curiosos
- El nombre "Tampemol" significa "lugar de búhos" en huasteco.  
- La Presa El Oyul es un lugar popular para la pesca de mojarra tilapia.  
- En la fiesta de San José, se realiza la "bajada del santo" con andas adornadas.  
- El municipio tiene una pequeña zona arqueológica con petrograbados.  
- La caña de azúcar se transporta en burros todavía en algunas rancherías.

## Perspectivas Futuras
Se busca impulsar el turismo rural con cabañas ecológicas, mejorar los caminos, fomentar la producción de miel orgánica y preservar las tradiciones huastecas.
''',
  imagenAsset: 'assets/images/antiguo_morelos.jpg',
  imagenes: [
    'assets/fotos/antiguo morelos.png',
    'assets/fotos/Antiguo-Morelos-1.jpg',
    'assets/fotos/Antiguo-Morelos-2.jpg'
  ],
  poblacion: '8,850 hab.',
  superficie: '561.30 km²',
  gentilicio: 'Antiguomorelense',

  monumentos3D: [
    Monumento(
      nombre: 'Monumento a la Patria',
      descripcion: 'Un monumento icónico de la ciudad de Antiguo Morelos.',
      rutaModelo: 'assets/models/Antiguomorelos.glb',
      escala: 1.0,
    ),
  ],
);

final List<Map<String, dynamic>> lugaresAntiguoMorelos = [
  {
    'nombre': 'Templo de San José',
    'descripcion': 'Iglesia principal del siglo XVIII.',
    'lat': 22.5000,
    'lng': -99.2000,
  },
  {
    'nombre': 'Presa El Oyul',
    'descripcion': 'Pesca y paseos familiares.',
    'lat': 22.4800,
    'lng': -99.2200,
  },
  {
    'nombre': 'Cerro La Peña',
    'descripcion': 'Senderismo y vistas.',
    'lat': 22.5200,
    'lng': -99.1800,
  },
  {
    'nombre': 'Grutas de Praxedis Guerrero',
    'descripcion': 'Cavernas poco exploradas.',
    'lat': 22.4700,
    'lng': -99.2500,
  },
];