import '../../models/municipio.dart';
import '../../models/monumento.dart';

final mendez = Municipio(
  id: 'mendez',
  nombre: 'Méndez',
  descripcionCorta: 'Municipio rural y tranquilo.',
  descripcionLarga:
  'Méndez es una localidad pequeña con tradiciones arraigadas, paisajes de llanura y una economía basada en el campo.',
  imagenAsset: 'assets/images/mendez.jpg',
  imagenes: [
    'assets/images/mendez_1.jpg',
    'assets/images/mendez_2.jpg',
    'assets/images/mendez_3.jpg',
  ],
  poblacion: '2,500 hab.',
  superficie: '1,200 km²',
  gentilicio: 'Mendecino',

  monumentos3D: [
    Monumento(
      nombre: 'Monumento a Pedro José Mendez',
      descripcion: 'Un monumento icónico de la ciudad de Mendez.',
      rutaModelo: 'assets/models/Mendez.glb',
      escala: 1.0,
    ),
  ],
);