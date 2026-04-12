import '../../models/municipio.dart';
import '../../models/monumento.dart';

final villagran = Municipio(
  id: 'villagran',
  nombre: 'Villagrán',
  descripcionCorta: 'Historia y tradición.',
  descripcionLarga:
  'Villagrán es un municipio con una larga historia, fundado en el siglo XVIII, con una plaza principal y edificios que evocan el pasado.',
  imagenAsset: 'assets/images/villagran.jpg',
  imagenes: [
    'assets/images/villagran_1.jpg',
    'assets/images/villagran_2.jpg',
    'assets/images/villagran_3.jpg',
  ],
  poblacion: '5,000 hab.',
  superficie: '1,100 km²',
  gentilicio: 'Villagranense',

  monumentos3D: [
    Monumento(
      nombre: 'Monumento a los caídos',
      descripcion: 'Un monumento icónico de la ciudad de Villagran.',
      rutaModelo: 'assets/models/Villagran.glb',
      escala: 1.0,
    ),
  ],
);