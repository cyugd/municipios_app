import '../../models/municipio.dart';
import '../../models/monumento.dart';

final nuevo_morelos = Municipio(
  id: 'nuevo_morelos',
  nombre: 'Nuevo Morelos',
  descripcionCorta: 'Tierra de cítricos.',
  descripcionLarga:
  'Nuevo Morelos es un municipio agrícola, conocido por sus huertas de naranja, limón y otros cítricos que se exportan a varias regiones.',
  imagenAsset: 'assets/images/nuevo_morelos.jpg',
  imagenes: [
    'assets/images/nuevo_morelos_1.jpg',
    'assets/images/nuevo_morelos_2.jpg',
    'assets/images/nuevo_morelos_3.jpg',
  ],
  poblacion: '4,000 hab.',
  superficie: '200 km²',
  gentilicio: 'Morelense',

  monumentos3D: [
    Monumento(
      nombre: 'Cruz Central',
      descripcion: 'Un monumento icónico de la ciudad de Nuevo Morelos.',
      rutaModelo: 'assets/models/Morelos.glb',
      escala: 1.0,
    ),
  ],
);