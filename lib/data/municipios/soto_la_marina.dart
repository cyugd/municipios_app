import '../../models/municipio.dart';
import '../../models/monumento.dart';

final soto_la_marina = Municipio(
  id: 'soto_la_marina',
  nombre: 'Soto la Marina',
  descripcionCorta: 'Río, playa e historia.',
  descripcionLarga:
  'Soto la Marina tiene una rica historia, hermosas playas vírgenes, el río que le da nombre y una biodiversidad impresionante.',
  imagenAsset: 'assets/images/soto_la_marina.jpg',
  imagenes: [
    'assets/images/soto_la_marina_1.jpg',
    'assets/images/soto_la_marina_2.jpg',
    'assets/images/soto_la_marina_3.jpg',
  ],
  poblacion: '25,000 hab.',
  superficie: '3,000 km²',
  gentilicio: 'Sotense',

  monumentos3D: [
    Monumento(
      nombre: 'Monumento heroico',
      descripcion: 'Un monumento icónico de la ciudad de Soto la Marina.',
      rutaModelo: 'assets/models/Soto.glb',
      escala: 1.0,
    ),
  ],
);