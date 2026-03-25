import '../../models/municipio.dart';
import '../../models/monumento.dart';

final abasolo = Municipio(
  id: 'abasolo',
  nombre: 'Abasolo',
  descripcionCorta: 'Municipio con historia minera, tradición y desarrollo.',
  descripcionLarga: '''
## Historia Detallada
...
''',
  imagenAsset: 'assets/images/abasolos-logo.jpeg',
  imagenes: [
    'assets/images/abasolo1.jpg',
    'assets/images/abasolo2.jpg',
    'assets/images/abasolo3.jpg',
    'assets/images/abasolo4.jpg',
  ],
  poblacion: '12,345 hab.',
  superficie: '180 km²',
  gentilicio: 'Abasolense',
  monumentos3D: [
    Monumento(
      nombre: 'Abasolo',
      descripcion: 'Monumento de Abasolo',
      rutaModelo: 'assets/models/Abasolo.glb',
      escala: 0.8,
    ),
    Monumento(
      nombre: 'Flamenco',
      descripcion: 'Modelo de un flamenco (glTF sample).',
      rutaModelo: 'assets/models/Flamingo.glb',
      escala: 0.5,
    ),
  ],
);

final List<Map<String, dynamic>> lugaresAbasolo = [
  {
    'nombre': 'Presa "El Azúcar"',
    'descripcion': 'Ideal para pesca deportiva, paseos en lancha y campismo.',
    'lat': 23.9325,
    'lng': -98.4286,
  },
  // ...
];
