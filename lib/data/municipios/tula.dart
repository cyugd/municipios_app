import '../../models/municipio.dart';
import '../../models/monumento.dart';

final tula = Municipio(
  id: 'tula',
  nombre: 'Tula',
  descripcionCorta: 'Pueblo Mágico de la sierra.',
  descripcionLarga:
  'Tula es un Pueblo Mágico con arquitectura colonial, paisajes serranos, una rica tradición cultural y una famosa gastronomía.',
  imagenAsset: 'assets/images/tula.jpg',
  imagenes: [
    'assets/images/tula_1.jpg',
    'assets/images/tula_2.jpg',
    'assets/images/tula_3.jpg',
  ],
  poblacion: '10,000 hab.',
  superficie: '700 km²',
  gentilicio: 'Tulteco',

  monumentos3D: [
    Monumento(
      nombre: 'Los atlánticos',
      descripcion: 'Un monumento icónico de la ciudad de Tula.',
      rutaModelo: 'assets/models/Tula.glb',
      escala: 1.0,
    ),
  ],
);