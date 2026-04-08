import '../../models/municipio.dart';
import '../../models/monumento.dart';

final palmillas = Municipio(
  id: 'palmillas',
  nombre: 'Palmillas',
  descripcionCorta: 'Pequeño pueblo de la sierra.',
  descripcionLarga:
  'Palmillas se encuentra en la Sierra Madre Oriental, con clima frío, paisajes montañosos y una vida tranquila.',
  imagenAsset: 'assets/images/palmillas.jpg',
  imagenes: [
    'assets/images/palmillas_1.jpg',
    'assets/images/palmillas_2.jpg',
    'assets/images/palmillas_3.jpg',
  ],
  poblacion: '2,000 hab.',
  superficie: '150 km²',
  gentilicio: 'Palmillense',

  monumentos3D: [
    Monumento(
      nombre: 'Santa Cruz',
      descripcion: 'Un monumento icónico de la ciudad de Palmillas.',
      rutaModelo: 'assets/models/Palmillas.glb',
      escala: 1.0,
    ),
  ],
);