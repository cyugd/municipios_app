import '../../models/municipio.dart';
import '../../models/monumento.dart';

final jimenez = Municipio(
  id: 'jimenez',
  nombre: 'Jiménez',
  descripcionCorta: 'Tierra de pescadores y agricultores.',
  descripcionLarga:
  'Jiménez se ubica cerca de la Laguna Madre, con actividades pesqueras y agropecuarias, y un entorno natural único.',
  imagenAsset: 'assets/images/jimenez.jpg',
  imagenes: [
    'assets/images/jimenez_1.jpg',
    'assets/images/jimenez_2.jpg',
    'assets/images/jimenez_3.jpg',
  ],
  poblacion: '6,000 hab.',
  superficie: '1,100 km²',
  gentilicio: 'Jimense',

  monumentos3D: [
    Monumento(
      nombre: 'Monumento a Santander Jiménez',
      descripcion: 'Un monumento icónico de la ciudad de Jiménez.',
      rutaModelo: 'assets/models/Jimenez.glb',
      escala: 1.0,
    ),
  ],
);