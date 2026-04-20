import '../../models/municipio.dart';
import '../../models/monumento.dart';

final ciudad_madero = Municipio(
  id: 'ciudad_madero',
  nombre: 'Ciudad Madero',
  descripcionCorta: 'Ciudad petrolera con playa, industria y tradición marinera.',
  descripcionLarga:'''
## Introducción
Ciudad Madero es un municipio del sur de Tamaulipas, ubicado en la desembocadura del río Pánuco, frente al Golfo de México. Es una ciudad industrial y portuaria, famosa por la Refinería Francisco I. Madero y por su hermosa Playa Miramar. Combina la tradición petrolera con la vida costera, ofreciendo una mezcla única de industria, historia y recreación. Es parte de la zona metropolitana de Tampico, lo que le da un dinamismo urbano importante. Su gente es trabajadora y orgullosa de su identidad marinera.

## Historia
Ciudad Madero surgió como un pequeño asentamiento costero donde sus habitantes vivían de la pesca artesanal. Con el descubrimiento del petróleo en la región, la ciudad experimentó una transformación importante. En 1914 se estableció un complejo industrial que dio origen a la Refinería Francisco I. Madero, lo que impulsó el crecimiento urbano y económico. La expropiación petrolera de 1938 fortaleció el desarrollo industrial bajo control nacional. Con el paso del tiempo, el turismo, especialmente en Playa Miramar, se convirtió en otra fuente importante de ingresos. En la década de 1970, se construyó el puerto de Altamira (cercano), que también benefició a la región.

## Geografía y Población
Ciudad Madero se localiza al sur de la desembocadura del río Pánuco, con acceso directo al Golfo de México. Su territorio es mayormente plano y de baja altitud, con presencia de lagunas, humedales y manglares. El clima es cálido-subhúmedo, con lluvias en verano y riesgo de huracanes.  
Población: más de 200,000 habitantes (2020), con una mezcla de población joven y adultos en edad productiva. La migración hacia la ciudad ha sido constante debido a la industria.

## Economía
- **Industria petrolera:** Refinería y empresas relacionadas (servicios, mantenimiento).  
- **Pesca:** Artesanal, con producción de camarón, jaiba, mojarra, robalo.  
- **Comercio y servicios:** Centros comerciales, hoteles, restaurantes, bancos.  
- **Turismo:** Playa Miramar, eventos culturales, malecón.  
- **Construcción:** Importante por el crecimiento urbano.

## Cultura y Tradiciones
**Fiestas:** Carnaval de Ciudad Madero (febrero-marzo) con desfiles, comparsas, reinado y conciertos. Fiesta de la Virgen del Carmen (16 de julio) con procesiones marítimas. Semana Santa con actividades religiosas.  
**Gastronomía:** Cóctel de mariscos, empanadas de jaiba, ceviche, pescado asado, camarones al coco, pan dulce tradicional (pan de Juancho).  
**Artesanías:** Trabajos en concha, caracol, madera de manglar, pintura en óleo.  
**Música:** Huapango, norteña, rock y música tropical.  
**Leyendas:** Se dice que en la laguna del Carpintero habita una serpiente gigante. También hay historias de piratas en la barra.

## Turismo y Atractivos
- **Playa Miramar:** Principal playa, con palapas, restaurantes, renta de motos acuáticas y kayak.  
- **Faro de la Barra:** Atractivo histórico y paisajístico, construido en el siglo XIX.  
- **Laguna del Carpintero:** Paseos en lancha, observación de aves (garzas, patos), templete de la música.  
- **Centro histórico:** Edificios de principios del siglo XX, como el Palacio Municipal y la Parroquia de la Virgen del Carmen.  
- **Refinería:** Tours industriales (previa autorización).  
- **Malecón:** Área de esparcimiento con vista al río Pánuco.  
- **Parque Bicentenario:** Área verde con juegos infantiles.

## Educación y Salud
Cuenta con numerosas escuelas de nivel básico a superior, incluyendo el Instituto Tecnológico de Ciudad Madero (ITCM) y extensiones de la UAT. En salud, hospitales del IMSS, ISSSTE, clínicas particulares y un hospital general.

## Personajes Ilustres
- **Francisco I. Madero (1873-1913):** Presidente de México, la ciudad lleva su nombre.  
- **Ingeniero Carlos González (1920-1990):** Promotor de la industria petroquímica.  
- **Doña Rosa Hernández (1930-2015):** Fundadora de la primera cooperativa pesquera.

## Datos Curiosos
- Ciudad Madero fue la primera ciudad petrolera de México.  
- Playa Miramar es una de las playas más visitadas del norte de México.  
- La refinería tiene una altura de 120 metros en su torre principal.  
- El Carnaval de Madero es famoso por sus carros alegóricos.  
- La laguna del Carpintero es un área natural protegida.

## Perspectivas Futuras
Se busca diversificar la economía, promover el turismo ecológico, mejorar la infraestructura playera y fomentar la cultura ambiental.
''',
  imagenAsset: 'assets/images/ciudad_madero.jpg',
  imagenes: [
    'assets/fotos/madero.png',
    'assets/fotos/CMadero1.jpg',
    'assets/fotos/Cmadero2.jpg'
  ],
  poblacion: '205,000 hab.',
  superficie: '46 km²',
  gentilicio: 'Maderense',

  monumentos3D: [
    Monumento(
      nombre: 'Monumento a la Patria',
      descripcion: 'Un monumento icónico de la ciudad de Madero.',
      rutaModelo: 'assets/models/Madero.glb',
      escala: 1.0,
    ),
  ],
);

final List<Map<String, dynamic>> lugaresCiudadMadero = [
  {
    'nombre': 'Playa Miramar',
    'descripcion': 'Principal playa de la zona conurbada.',
    'lat': 22.2728,
    'lng': -97.8350,
  },
  {
    'nombre': 'Faro de la Barra',
    'descripcion': 'Monumento histórico y mirador.',
    'lat': 22.2333,
    'lng': -97.8667,
  },
  {
    'nombre': 'Laguna del Carpintero',
    'descripcion': 'Paseos en lancha y avistamiento de aves.',
    'lat': 22.2200,
    'lng': -97.8550,
  },
];