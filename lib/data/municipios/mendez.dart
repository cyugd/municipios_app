import '../../models/municipio.dart';
import '../../models/monumento.dart';

final mendez = Municipio(
  id: 'mendez',
  nombre: 'Méndez',
  descripcionCorta: 'Comunidad rural con tradición agrícola y ganadera.',
  descripcionLarga: '''
## Introducción
Méndez es un municipio ubicado en el noreste de Tamaulipas, dentro del Valle de San Fernando. Es una comunidad esencialmente rural, donde la vida transcurre entre campos de cultivo y ganadería. Su gente, trabajadora y hospitalaria, mantiene vivas las tradiciones norteñas, las fiestas patronales y una gastronomía auténtica. Es un lugar ideal para quienes buscan tranquilidad y contacto con la naturaleza.

## Historia
El origen del municipio se remonta al 1 de julio de 1866, cuando la Congregación La Laja fue elevada a Villa de la Laja. En 1868, mediante decreto estatal, se reconoció como municipio y se propuso el nombre de Méndez en honor a Pedro José Méndez, héroe tamaulipeco que combatió en la Intervención Francesa.  
Durante los siglos XIX y XX, el municipio consolidó su carácter rural con haciendas y comunidades agrícolas. Su desarrollo urbano se organizó alrededor de la plaza principal, la parroquia y la presidencia municipal. La Revolución Mexicana trajo consigo el reparto de tierras y la formación de ejidos.

## Geografía y Población
Se localiza en el noreste de Tamaulipas, dentro del Valle de San Fernando. Su relieve es plano, con suelos fértiles aptos para la agricultura de riego y temporal. El clima es cálido y semiárido, con temperaturas que superan los 40°C en verano.  
Población: aproximadamente 4,280 habitantes (2020), distribuida en pequeñas comunidades rurales. La migración hacia Reynosa, Matamoros y Estados Unidos es común.

## Economía
- **Agricultura:** Sorgo, maíz, frijol, forrajes.  
- **Ganadería:** Bovina, caprina, ovina.  
- **Comercio local:** Tiendas de abarrotes, talleres, servicios básicos.  
- **Remesas:** Importante apoyo económico de familiares en EE. UU.

## Cultura y Tradiciones
**Fiestas patronales en honor a Nuestra Señora de Monserrat (septiembre):** Misas, procesiones, danzas, jaripeos y música norteña.  
**Feria de la Cosecha (agosto):** Exposiciones agrícolas, ganaderas y artesanales.  
**Día de Muertos:** Altares y visitas al cementerio.  
**Tradiciones:** Reuniones familiares con carne asada, cabalgatas, torneos de béisbol y volibol.  
**Gastronomía:** Carne asada, cabrito al pastor, tamales, enchiladas, asado de puerco; postres: empanadas de calabaza, pan casero, conservas de frutas; bebidas: café de olla, atole.  
**Artesanías:** Talabartería, tejidos de palma.

## Turismo y Atractivos
- **Parroquia de Nuestra Señora de Monserrat:** Templo de arquitectura sencilla.  
- **Plaza principal:** Jardín con kiosco, centro de reunión.  
- **Paisajes rurales:** Campos de cultivo y pastizales, ideales para caminatas y descanso.  
- **Áreas de caza:** Para quienes gustan de la cinegética.  
- **Presa de Méndez:** Pesca de mojarra.

## Educación y Salud
Cuenta con preescolar, primaria, telesecundaria y telebachillerato. Para estudios superiores, los jóvenes viajan a Reynosa o Matamoros. En salud, un centro de salud rural.

## Personajes Ilustres
- **Pedro José Méndez (1795-1866):** Héroe de la Intervención Francesa.  
- **Don José López (1900-1980):** Promotor de la agricultura local.  
- **Profesora María García (1930-2010):** Fundadora de la escuela.

## Datos Curiosos
- El municipio lleva el nombre de un héroe tamaulipeco.  
- La feria de la cosecha atrae a visitantes de la región.  
- El cabrito al pastor es el platillo típico.  
- En la plaza principal hay un kiosco de hierro forjado.  
- La parroquia fue construida en el siglo XIX.

## Perspectivas Futuras
Se busca mejorar la infraestructura, apoyar la ganadería y fomentar el turismo rural.
''',

  imagenAsset: 'assets/images/mendez.jpg',
  imagenes: [
    'assets/fotos/Mendez.png',
    'assets/fotos/mendez-1.jpg',
    'assets/fotos/mendez-2.jpg'

  ],
  poblacion: '2,500 hab.',
  superficie: '1,200 km²',
  gentilicio: 'Mendecino',

  monumentos3D: [
    Monumento(
      nombre: 'Monumento a Pedro José Mendez',
      descripcion: 'Un monumento icónico de la ciudad de Mendez.',
      rutaModelo: 'assets/models/Mendez.glb',
      escala: 1.0,
    ),
  ],
);

final List<Map<String, dynamic>> lugaresMendez = [
  {
    'nombre': 'Parroquia de Nuestra Señora de Monserrat',
    'descripcion': 'Templo principal.',
    'lat': 25.1167,
    'lng': -98.3333,
  },
  {
    'nombre': 'Plaza Principal',
    'descripcion': 'Centro de convivencia social.',
    'lat': 25.1160,
    'lng': -98.3320,
  },
  {
    'nombre': 'Áreas rurales',
    'descripcion': 'Paisajes agrícolas y ganaderos.',
    'lat': 25.1200,
    'lng': -98.3300,
  },
];