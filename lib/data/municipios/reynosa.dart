import '../../models/municipio.dart';
import '../../models/monumento.dart';

final reynosa = Municipio(
  id: 'reynosa',
  nombre: 'Reynosa',
  descripcionCorta: 'Ciudad industrial y fronteriza.',
  descripcionLarga:
  'Reynosa es una de las ciudades más grandes de Tamaulipas, con una fuerte industria maquiladora, comercio binacional y una vida cultural activa.',
  imagenAsset: 'assets/images/reynosa0101.jpeg',
  imagenes: [
    'assets/images/reynosa_1.jpg',
    'assets/images/reynosa_2.jpg',
    'assets/images/reynosa_3.jpg',
  ],
  poblacion: '700,000 hab.',
  superficie: '3,000 km²',
  gentilicio: 'Reynosense',
  monumentos3D: [
    Monumento(
      nombre: 'Monumento a la Patria',
      descripcion: 'Un monumento icónico de la ciudad de Reynosa.',
      rutaModelo: 'assets/models/Reynosa.glb',
      escala: 1.0,
    ),
  ],
);
