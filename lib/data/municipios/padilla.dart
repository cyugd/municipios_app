import '../../models/municipio.dart';
import '../../models/monumento.dart';

final padilla = Municipio(
  id: 'padilla',
  nombre: 'Padilla',
  descripcionCorta: 'Lugar histórico donde fusilaron a Iturbide.',
  descripcionLarga:
  'Padilla es un municipio con gran relevancia histórica, ya que ahí fue fusilado Agustín de Iturbide. Cuenta con monumentos y museos.',
  imagenAsset: 'assets/images/padilla.jpg',
  imagenes: [
    'assets/images/padilla_1.jpg',
    'assets/images/padilla_2.jpg',
    'assets/images/padilla_3.jpg',
  ],
  poblacion: '7,000 hab.',
  superficie: '600 km²',
  gentilicio: 'Padillense',

  monumentos3D: [
    Monumento(
      nombre: 'Antigua catedral abandonada',
      descripcion: 'Un monumento icónico de la ciudad de Padilla.',
      rutaModelo: 'assets/models/Padilla.glb',
      escala: 1.0,
    ),
  ],
);