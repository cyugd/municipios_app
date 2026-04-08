import '../../models/municipio.dart';
import '../../models/monumento.dart';

final rio_bravo = Municipio(
  id: 'rio_bravo',
  nombre: 'Río Bravo',
  descripcionCorta: 'Ciudad agrícola y fronteriza.',
  descripcionLarga:
  'Río Bravo es un municipio con una pujante actividad agrícola, cercanía a la frontera y una creciente zona urbana.',
  imagenAsset: 'assets/images/rio_bravo.jpg',
  imagenes: [
    'assets/images/rio_bravo_1.jpg',
    'assets/images/rio_bravo_2.jpg',
    'assets/images/rio_bravo_3.jpg',
  ],
  poblacion: '100,000 hab.',
  superficie: '1,500 km²',
  gentilicio: 'Riobravense',

  monumentos3D: [
    Monumento(
      nombre: 'Casa de Ladrillo',
      descripcion: 'Un monumento icónico de la ciudad de Rio Bravo.',
      rutaModelo: 'assets/models/Riobravo.glb',
      escala: 1.0,
    ),
  ],
);