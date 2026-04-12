import '../../models/municipio.dart';
import '../../models/monumento.dart';

final tampico = Municipio(
  id: 'tampico',
  nombre: 'Tampico',
  descripcionCorta: 'Puerto y corazón petrolero.',
  descripcionLarga:
  'Tampico es una ciudad portuaria con gran actividad económica, arquitectura de principios del siglo XX, vida nocturna y una rica oferta cultural.',
  imagenAsset: 'assets/images/tampico.jpg',
  imagenes: [
    'assets/images/tampico_1.jpg',
    'assets/images/tampico_2.jpg',
    'assets/images/tampico_3.jpg',
  ],
  poblacion: '300,000 hab.',
  superficie: '90 km²',
  gentilicio: 'Tampiqueño',

  monumentos3D: [
    Monumento(
      nombre: 'Monumento al heroe',
      descripcion: 'Un monumento icónico de la ciudad de Tampico.',
      rutaModelo: 'assets/models/Tampico.glb',
      escala: 1.0,
    ),
  ],
);