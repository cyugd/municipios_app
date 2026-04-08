import '../../models/municipio.dart';
import '../../models/monumento.dart';

final el_mante = Municipio(
  id: 'el_mante',
  nombre: 'El Mante',
  descripcionCorta: 'Ciudad cañera y turística.',
  descripcionLarga:
  'El Mante es conocido por su producción de caña de azúcar y sus balnearios de aguas claras, como el famoso "El Nacimiento".',
  imagenAsset: 'assets/images/el_mante.jpg',
  imagenes: [
    'assets/images/el_mante_1.jpg',
    'assets/images/el_mante_2.jpg',
    'assets/images/el_mante_3.jpg',
  ],
  poblacion: '80,000 hab.',
  superficie: '1,600 km²',
  gentilicio: 'Mantense',

  monumentos3D: [
    Monumento(
      nombre: 'Monumento a Juan Escales',
      descripcion: 'Un monumento icónico de la ciudad de Mante.',
      rutaModelo: 'assets/models/Mante.glb',
      escala: 1.0,
    ),
  ],
);