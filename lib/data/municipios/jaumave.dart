import '../../models/municipio.dart';
import '../../models/monumento.dart';

final jaumave = Municipio(
  id: 'jaumave',
  nombre: 'Jaumave',
  descripcionCorta: 'Valle agrícola y artesanal.',
  descripcionLarga:
  'Jaumave es conocido por su producción de ixtle y artesanías, además de su fértil valle donde se cultivan hortalizas y frutas.',
  imagenAsset: 'assets/images/jaumave.jpg',
  imagenes: [
    'assets/images/jaumave_1.jpg',
    'assets/images/jaumave_2.jpg',
    'assets/images/jaumave_3.jpg',
  ],
  poblacion: '15,000 hab.',
  superficie: '1,500 km²',
  gentilicio: 'Jaumavense',

  monumentos3D: [
    Monumento(
      nombre: 'La madre jaumave',
      descripcion: 'Un monumento icónico de la ciudad de Jaumave.',
      rutaModelo: 'assets/models/Jaumave.glb',
      escala: 1.0,
    ),
  ],
);