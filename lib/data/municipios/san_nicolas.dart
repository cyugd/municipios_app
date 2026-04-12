import '../../models/municipio.dart';
import '../../models/monumento.dart';

final san_nicolas = Municipio(
  id: 'san_nicolas',
  nombre: 'San Nicolás',
  descripcionCorta: 'Pequeño municipio rural.',
  descripcionLarga:
  'San Nicolás es una comunidad tranquila dedicada a la agricultura y ganadería, con tradiciones arraigadas.',
  imagenAsset: 'assets/images/san_nicolas.jpg',
  imagenes: [
    'assets/images/san_nicolas_1.jpg',
    'assets/images/san_nicolas_2.jpg',
    'assets/images/san_nicolas_3.jpg',
  ],
  poblacion: '1,500 hab.',
  superficie: '200 km²',
  gentilicio: 'San Nicolás',

  monumentos3D: [
    Monumento(
      nombre: 'Tumba emblematica de San Nicolas',
      descripcion: 'Un monumento icónico de la ciudad de San Nicolas.',
      rutaModelo: 'assets/models/Sannicolas.glb',
      escala: 1.0,
    ),
  ],
);