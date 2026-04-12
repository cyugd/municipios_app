import '../../models/municipio.dart';
import '../../models/monumento.dart';

final san_fernando = Municipio(
  id: 'san_fernando',
  nombre: 'San Fernando',
  descripcionCorta: 'El municipio más extenso territorialmente.',
  descripcionLarga:
  'San Fernando es el municipio con mayor superficie de Tamaulipas, abarcando zonas costeras, de llanura y una rica biodiversidad.',
  imagenAsset: 'assets/images/san_fernando.jpg',
  imagenes: [
    'assets/images/san_fernando_1.jpg',
    'assets/images/san_fernando_2.jpg',
    'assets/images/san_fernando_3.jpg',
  ],
  poblacion: '50,000 hab.',
  superficie: '6,000 km²',
  gentilicio: 'Sanfernandense',

  monumentos3D: [
    Monumento(
      nombre: 'Gazebo plaza principal',
      descripcion: 'Un monumento icónico de la ciudad de San Fernando.',
      rutaModelo: 'assets/models/Sanfernando.glb',
      escala: 1.0,
    ),
  ],
);