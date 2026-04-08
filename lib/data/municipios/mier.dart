import '../../models/municipio.dart';
import '../../models/monumento.dart';

final mier = Municipio(
  id: 'mier',
  nombre: 'Mier',
  descripcionCorta: 'Pueblo mágico con arquitectura colonial.',
  descripcionLarga:
  'Mier es un Pueblo Mágico de Tamaulipas, famoso por sus plazas, iglesias, calles empedradas y la calle peatonal llena de historia.',
  imagenAsset: 'assets/images/mier.jpg',
  imagenes: [
    'assets/images/mier_1.jpg',
    'assets/images/mier_2.jpg',
    'assets/images/mier_3.jpg',
  ],
  poblacion: '5,000 hab.',
  superficie: '300 km²',
  gentilicio: 'Mierense',

  monumentos3D: [
    Monumento(
      nombre: 'Mi heroica',
      descripcion: 'Un monumento icónico de la ciudad de Mier.',
      rutaModelo: 'assets/models/Mier.glb',
      escala: 1.0,
    ),
  ],
);