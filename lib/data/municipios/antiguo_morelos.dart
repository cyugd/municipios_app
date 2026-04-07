import '../../models/municipio.dart';
import '../../models/monumento.dart';

final antiguo_morelos = Municipio(
  id: 'antiguo_morelos',
  nombre: 'Antiguo Morelos',
  descripcionCorta: 'Municipio con raíces huastecas y tradición rural.',
  descripcionLarga: '''
## Historia
Antiguo Morelos tiene su origen en un asentamiento huasteco llamado Tampemol, ubicado en el Valle de Tampuejem. Su formación comenzó en el siglo XVIII con familias que se establecieron en el “Charco de Baltazar”, y su fundación formal fue en 1751.

En 1827 recibió el nombre de Villa Morelos en honor a José María Morelos y Pavón. En 1862 se consolidaron los municipios de Antiguo Morelos y Nuevo Morelos tras cambios administrativos. Durante el Porfiriato tuvo auge económico, pero en la Revolución Mexicana fue atacado en 1918 y quedó parcialmente abandonado. En 1920 se repobló y retomó su crecimiento.

## Geografía
Se ubica en el sur de Tamaulipas, en la región Huasteca, colindando con Ocampo, El Mante, Nuevo Morelos y San Luis Potosí. Tiene una extensión de 561.30 km² y una altitud aproximada de 178 msnm.

El relieve incluye lomeríos y zonas de la Sierra Madre Oriental. El clima es semicálido húmedo con lluvias en verano. La vegetación incluye encino y chaca, y la fauna especies como venado cola blanca y coyote. También cuenta con ríos y manantiales.

## Población
Cuenta con 8,850 habitantes (2020), con distribución equilibrada entre hombres y mujeres. La población es joven, con edad promedio de 27 años.

Alrededor de 60 personas hablan lenguas indígenas como náhuatl y tenek. Existen más de 2,600 viviendas, con servicios básicos en la mayoría, aunque algunas zonas rurales presentan carencias. La migración hacia otras ciudades es frecuente.

## Economía
Se basa en la agricultura, ganadería y comercio local. Los principales cultivos son caña de azúcar, maíz, sorgo, frijol y cítricos. La caña es el producto principal y se destina al Ingenio El Mante.

La ganadería incluye bovinos, porcinos, caprinos y aves, además de la producción de miel. El comercio se compone de pequeños negocios. Existen apoyos gubernamentales para impulsar el campo.

## Cultura
La cultura combina herencia huasteca y tradiciones rurales. Destaca el Templo de San José como centro religioso.

El huapango y la música norteña forman parte de las celebraciones. También existen espacios como la Casa de la Cultura y un museo local que conserva la historia del municipio.

## Valores
Los principales valores son el respeto, la solidaridad, la fe y el trabajo. La comunidad se caracteriza por la unión familiar y el apoyo entre vecinos.

## Costumbres
La fiesta patronal de San José se celebra del 18 al 31 de marzo con procesiones, jaripeos y bailes.

También se celebran el Día de Muertos, Semana Santa y fechas cívicas. Se conservan tradiciones como el intercambio de alimentos y reuniones familiares.

## Gastronomía
Incluye platillos como cecina, machaca con huevo, cabrito, mole y gorditas. En fiestas se preparan tamales, carnitas y barbacoa.

Los postres tradicionales son capirotada, empanadas y dulce de calabaza, acompañados de café de olla y atole.

## Turismo
Cuenta con atractivos como el Templo de San José, la Presa El Oyul, el Cerro La Peña y las grutas del Ejido Praxedis Guerrero.

También destacan el museo local, la plaza principal y las ferias. Es un destino ideal para turismo rural y ecológico.

## Conclusión
Antiguo Morelos es un municipio con raíces huastecas y tradición rural que ha pasado por distintas etapas históricas. Aunque enfrenta retos en infraestructura y empleo, tiene potencial para crecer mediante el turismo y el aprovechamiento de sus recursos naturales y culturales.
''',
  imagenAsset: 'assets/images/antiguo_morelos.jpg',
  imagenes: [
    'assets/images/antiguo_morelos_1.jpg',
    'assets/images/antiguo_morelos_2.jpg',
  ],
  poblacion: '8,850 hab.',
  superficie: '561.30 km²',
  gentilicio: 'Antiguomorelense',

  monumentos3D: [
    Monumento(
      nombre: 'Monumento a la Patria',
      descripcion: 'Un monumento icónico de la ciudad de Antiguo Morelos.',
      rutaModelo: 'assets/models/Antiguomorelos.glb',
      escala: 1.0,
    ),
  ],
);