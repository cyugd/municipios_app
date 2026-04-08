import '../../models/municipio.dart';
import '../../models/monumento.dart';

final ocampo = Municipio(
  id: 'ocampo',
  nombre: 'Ocampo',
  descripcionCorta: 'Naturaleza y tradición.',
  descripcionLarga:
  'Ocampo tiene zonas boscosas, ideal para el ecoturismo, la observación de aves y el senderismo, además de conservar tradiciones rurales.',
  imagenAsset: 'assets/images/ocampo.jpg',
  imagenes: [
    'assets/images/ocampo_1.jpg',
    'assets/images/ocampo_2.jpg',
    'assets/images/ocampo_3.jpg',
  ],
  poblacion: '6,000 hab.',
  superficie: '500 km²',
  gentilicio: 'Ocampense',

  monumentos3D: [
    Monumento(
      nombre: 'Muralla de entrada a Ocampo',
      descripcion: 'Un monumento icónico de la ciudad de Ocampo.',
      rutaModelo: 'assets/models/Ocampo.glb',
      escala: 1.0,
    ),
  ],
);