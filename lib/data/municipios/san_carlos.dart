import '../../models/municipio.dart';
import '../../models/monumento.dart';

final san_carlos = Municipio(
  id: 'san_carlos',
  nombre: 'San Carlos',
  descripcionCorta: 'Pueblo colonial y minero.',
  descripcionLarga:
  'San Carlos tiene un hermoso centro histórico, antiguas minas que se pueden visitar y un ambiente que transporta al pasado.',
  imagenAsset: 'assets/images/san_carlos.jpg',
  imagenes: [
    'assets/images/san_carlos_1.jpg',
    'assets/images/san_carlos_2.jpg',
    'assets/images/san_carlos_3.jpg',
  ],
  poblacion: '8,000 hab.',
  superficie: '2,500 km²',
  gentilicio: 'Carlense',

  monumentos3D: [
    Monumento(
      nombre: 'Catedral de San Carlos',
      descripcion: 'Un monumento icónico de la ciudad de San Carlos.',
      rutaModelo: 'assets/models/Sancarlos.glb',
      escala: 1.0,
    ),
  ],
);