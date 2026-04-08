import '../../models/municipio.dart';
import '../../models/monumento.dart';

final llera = Municipio(
  id: 'llera',
  nombre: 'Llera',
  descripcionCorta: 'Pueblo con ambiente cálido.',
  descripcionLarga:
  'Llera es un municipio pequeño, con una comunidad unida, paisajes de llanura y tradiciones que se mantienen vivas.',
  imagenAsset: 'assets/images/llera.jpg',
  imagenes: [
    'assets/images/llera_1.jpg',
    'assets/images/llera_2.jpg',
    'assets/images/llera_3.jpg',
  ],
  poblacion: '5,000 hab.',
  superficie: '800 km²',
  gentilicio: 'Llerense',

  monumentos3D: [
    Monumento(
      nombre: 'Monumento con obelisco',
      descripcion: 'Un monumento icónico de la ciudad de Llera.',
      rutaModelo: 'assets/models/Llera.glb',
      escala: 1.0,
    ),
  ],
);