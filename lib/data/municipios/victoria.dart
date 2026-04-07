import '../../models/municipio.dart';
import '../../models/monumento.dart';

final victoria = Municipio(
  id: 'victoria',
  nombre: 'Victoria',
  descripcionCorta: 'Capital del estado.',
  descripcionLarga:
  'Ciudad Victoria es la capital de Tamaulipas, con una mezcla de servicios gubernamentales, educación, cultura, y hermosos espacios naturales como el Cerro del Bernal.',
  imagenAsset: 'assets/images/victoria.jpg',
  imagenes: [
    'assets/images/victoria_1.jpg',
    'assets/images/victoria_2.jpg',
    'assets/images/victoria_3.jpg',
  ],
  poblacion: '350,000 hab.',
  superficie: '1,000 km²',
  gentilicio: 'Victorense',

  monumentos3D: [
    Monumento(
      nombre: 'Aguila monumental',
      descripcion: 'Un monumento icónico de la ciudad de Victoria.',
      rutaModelo: 'assets/models/Victoria.glb',
      escala: 1.0,
    ),
  ],
);