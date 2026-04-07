import '../../models/municipio.dart';
import '../../models/monumento.dart';

final gueemez = Municipio(
  id: 'gueemez',
  nombre: 'Güémez',
  descripcionCorta: 'Pueblo con arquitectura colonial.',
  descripcionLarga:
  'Güémez conserva edificios históricos, una hermosa plaza y es un destino para el turismo cultural y religioso.',
  imagenAsset: 'assets/images/gueemez.jpg',
  imagenes: [
    'assets/images/gueemez_1.jpg',
    'assets/images/gueemez_2.jpg',
    'assets/images/gueemez_3.jpg',
  ],
  poblacion: '7,000 hab.',
  superficie: '450 km²',
  gentilicio: 'Güemecense',

  monumentos3D: [
    Monumento(
      nombre: 'Monumento a la Patria',
      descripcion: 'Un monumento icónico de la ciudad de Guemez.',
      rutaModelo: 'assets/models/Guemez.glb',
      escala: 1.0,
    ),
  ],
);