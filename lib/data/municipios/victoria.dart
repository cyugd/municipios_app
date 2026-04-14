import '../../models/municipio.dart';
import '../../models/monumento.dart';

final victoria = Municipio(
  id: 'victoria',
  nombre: 'Ciudad Victoria',
  descripcionCorta: 'Capital del estado, centro político, educativo y cultural.',
  descripcionLarga: '''
## Introducción
Ciudad Victoria, capital del estado de Tamaulipas, es una de las ciudades más representativas del noreste de México, reconocida por su historia, su desarrollo y su importante papel político, económico y cultural dentro de la región. Fundada el 6 de octubre de 1750 con el nombre de Villa de Santa María de Aguayo, esta ciudad ha sido testigo de los principales procesos históricos del país.

## Historia
La historia de Ciudad Victoria comienza en 1750, cuando fue fundada por José de Escandón bajo el nombre de Villa de Santa María de Aguayo. En 1825 adoptó su nombre actual en honor a Guadalupe Victoria y se convirtió en la capital. En el siglo XIX fue escenario de conflictos como la Guerra de Reforma.

## Geografía y Población
Se localiza en el centro-sur de Tamaulipas, entre la Sierra Madre Oriental y la llanura del Golfo. Su altitud promedio es de 321 metros y el clima es semicálido y subhúmedo. Según el censo de 2020, cuenta con 332,100 habitantes.

## Economía
La economía se basa en servicios, comercio, educación y administración pública. Es la sede de los tres poderes del estado.

## Cultura y Patrimonio
Posee una vida cultural rica: Centro Cultural Tamaulipas, Teatro Amalia G. de Castillo Ledón, Museo TAMux, Casa del Arte. Cada año celebra el Festival Internacional Tamaulipas.

## Gastronomía
Destacan las gorditas, el machacado con huevo, las flautas de harina, los dulces de dátil y las famosas Gorditas Doña Tota.

## Educación
Alberga la Universidad Autónoma de Tamaulipas, el Instituto Tecnológico, la Universidad La Salle y la Universidad Politécnica.

## Turismo
Espacios emblemáticos: Zoológico Tamatán, Parque Bicentenario, Museo TAMux, Parque Ecológico Los Troncones.

## Conclusión
Ciudad Victoria representa la unión entre historia, tradición y desarrollo moderno. Es una ciudad que ha sabido conservar su identidad tamaulipeca mientras avanza hacia un futuro lleno de oportunidades.
''',

  imagenAsset: 'assets/images/victoria.jpg',
  imagenes: [
    'assets/fotos/victoria.png',
  ],
  poblacion: '350,000 hab.',
  superficie: '1,000 km²',
  gentilicio: 'Victorense',

  monumentos3D: [
    Monumento(
      nombre: 'Aguila monumental',
      descripcion: 'Un monumento icónico de la ciudad de Victoria.',
      rutaModelo: 'assets/models/Victoria.glb',
      escala: 1.0,
    ),
  ],
);
