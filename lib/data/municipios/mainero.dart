import '../../models/municipio.dart';
import '../../models/monumento.dart';

final mainero = Municipio(
  id: 'mainero',
  nombre: 'Mainero',
  descripcionCorta: 'Rinconcito serrano.',
  descripcionLarga:
  'Mainero se encuentra en la Sierra Madre Oriental, con clima fresco, bosques de pino y encino, y paisajes montañosos.',
  imagenAsset: 'assets/images/mainero.jpg',
  imagenes: [
    'assets/images/mainero_1.jpg',
    'assets/images/mainero_2.jpg',
    'assets/images/mainero_3.jpg',
  ],
  poblacion: '2,000 hab.',
  superficie: '400 km²',
  gentilicio: 'Mainerenese',

  monumentos3D: [
    Monumento(
      nombre: 'Monumento a las madres',
      descripcion: 'Un monumento icónico de la ciudad de Mainero.',
      rutaModelo: 'assets/models/Mainero.glb',
      escala: 1.0,
    ),
  ],
);