import '../../models/municipio.dart';
import '../../models/monumento.dart';

final matamoros = Municipio(
  id: 'matamoros',
  nombre: 'Matamoros',
  descripcionCorta: 'Ciudad fronteriza histórica.',
  descripcionLarga:
  'Heroica Matamoros es una de las ciudades más importantes del norte, con gran actividad comercial, cultural e histórica, y una fuerte identidad.',
  imagenAsset: 'assets/images/matamoros.jpg',
  imagenes: [
    'assets/images/matamoros_1.jpg',
    'assets/images/matamoros_2.jpg',
    'assets/images/matamoros_3.jpg',
  ],
  poblacion: '500,000 hab.',
  superficie: '4,000 km²',
  gentilicio: 'Matamorense',

  monumentos3D: [
    Monumento(
      nombre: 'Monumento Azteca y Antorcha liberal',
      descripcion: 'Un monumento icónico de la ciudad de Matamoros.',
      rutaModelo: 'assets/models/Matamoros.glb',
      escala: 1.0,
    ),
  ],
);