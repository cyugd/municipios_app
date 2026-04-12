import '../../models/municipio.dart';
import '../../models/monumento.dart';

final xicotencatl = Municipio(
  id: 'xicotencatl',
  nombre: 'Xicoténcatl',
  descripcionCorta: 'Pueblo con nombre indígena.',
  descripcionLarga:
  'Xicoténcatl honra la memoria del líder tlaxcalteca y es un municipio con tradición agrícola, gente amable y paisajes de llanura.          prueba que esto funciona de verdad despues de loging.....',
  imagenAsset: 'assets/images/xicotencatl.jpg',
  imagenes: [
    'assets/images/xicotencatl_1.jpg',
    'assets/images/xicotencatl_2.jpg',
    'assets/images/xicotencatl_3.jpg',
  ],
  poblacion: '9,000 hab.',
  superficie: '600 km²',
  gentilicio: 'Xicotencatlense',

  monumentos3D: [
    Monumento(
      nombre: 'Monumento de Xicontencat',
      descripcion: 'Un monumento icónico de la ciudad de Xicontencat.',
      rutaModelo: 'assets/models/Xicontencat.glb',
      escala: 1.0,
    ),
  ],
);