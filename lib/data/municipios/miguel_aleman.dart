import '../../models/municipio.dart';
import '../../models/monumento.dart';

final miguel_aleman = Municipio(
  id: 'miguel_aleman',
  nombre: 'Miguel Alemán',
  descripcionCorta: 'Ciudad fronteriza y comercial.',
  descripcionLarga:
  'Miguel Alemán se localiza en la frontera con Estados Unidos, con un activo cruce internacional y una economía basada en el comercio y los servicios.',
  imagenAsset: 'assets/images/miguel_aleman.jpg',
  imagenes: [
    'assets/images/miguel_aleman_1.jpg',
    'assets/images/miguel_aleman_2.jpg',
    'assets/images/miguel_aleman_3.jpg',
  ],
  poblacion: '25,000 hab.',
  superficie: '200 km²',
  gentilicio: 'Alemanense',

  monumentos3D: [
    Monumento(
      nombre: 'Monumento Benito Juárez',
      descripcion: 'Un monumento icónico de la ciudad de Miguel Aleman.',
      rutaModelo: 'assets/models/Miguel.glb',
      escala: 1.0,
    ),
  ],
);