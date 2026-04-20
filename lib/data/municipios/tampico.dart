import '../../models/municipio.dart';
import '../../models/monumento.dart';

final tampico = Municipio(
  id: 'tampico',
  nombre: 'Tampico',
  descripcionCorta: 'Ciudad portuaria con historia, tradición huasteca y auge petrolero.',
  descripcionLarga:  '''
## Historia
Tamaulipas tiene antecedentes prehispánicos con pueblos como huastecos, pames y coahuiltecos. Dentro de este contexto, Tampico destaca por su desarrollo ligado al comercio marítimo.  
La primera fundación ocurrió en 1554 por Fray Andrés de Olmos, aunque la ciudad actual se estableció en 1823. A lo largo del tiempo enfrentó eventos como ataques piratas, como el de Lorencillo en 1684, que marcó la memoria colectiva de la región.  
Durante el siglo XX, el auge petrolero (1900–1920) impulsó su crecimiento económico y poblacional, convirtiéndola en un importante centro industrial y portuario. Hoy es una ciudad moderna con gran valor histórico, que ha sabido conservar su patrimonio mientras se adapta a los cambios globales.

## Línea del Tiempo
- 1554: Fundación original de Tampico.  
- 1684: Ataque del pirata Lorencillo.  
- 1823: Fundación de la ciudad moderna.  
- 1900–1920: Auge petrolero.  
- 1993: Protección del Centro Histórico.  
- Siglo XXI: Consolidación como ciudad moderna y turística.  

## Personajes Destacados
- Fray Andrés de Olmos: Fundador en 1554.  
- Lorencillo: Pirata que atacó en 1684.  
- Francisco R. Murguía: Militar revolucionario.  
- Carlos A. Madrazo: Impulsor educativo.  
- Refugio García: Promotora de la educación.  
Además, empresarios y líderes locales han contribuido al desarrollo económico y cultural de la ciudad.

## Geografía
Tampico se ubica al sureste de Tamaulipas, en la desembocadura del río Pánuco, frente al Golfo de México.  
Su relieve es plano, con llanuras costeras. Cuenta con cuerpos de agua importantes como la Laguna del Carpintero, símbolo natural y turístico de la ciudad.  
El clima es cálido-húmedo, con lluvias en verano y riesgo de ciclones. Sus ecosistemas incluyen manglares, estuarios y lagunas con gran biodiversidad, aunque enfrentan amenazas por la urbanización y la contaminación.

## Población
El crecimiento poblacional ha sido constante, especialmente durante el auge petrolero. Actualmente supera los 200 mil habitantes.  
La población es diversa, con mayor concentración en zonas cercanas al puerto. Predomina una población joven con movilidad por trabajo en la industria y servicios. La migración interna y externa ha enriquecido la cultura local, generando una sociedad dinámica y multicultural.

## Economía
La economía de Tampico se basa en:  
- **Puerto y logística:** conexión con mercados nacionales e internacionales.  
- **Industria petrolera:** refinería y actividades relacionadas.  
- **Comercio y servicios:** centros comerciales y negocios locales.  
- **Turismo:** potencial cultural y natural.  
Esto la convierte en un centro económico clave en la región. Además, la ciudad ha diversificado su economía hacia sectores como educación, salud y turismo, consolidándose como un polo de desarrollo regional.

## Cultura
La cultura tampiqueña es resultado del mestizaje indígena, español y extranjero. Destaca el huapango huasteco, las tradiciones y la vida portuaria.  
**Patrimonio:** cuenta con edificios históricos, monumentos y espacios como el centro histórico y zonas relacionadas con la industria petrolera. Se promueven acciones de conservación y restauración.  
La vida cultural incluye festivales, ferias y actividades artísticas que refuerzan la identidad local.

## Valores
Predominan valores como:  
- Trabajo.  
- Solidaridad.  
- Hospitalidad.  
- Orgullo por la historia local.  
Estos valores se reflejan en la vida comunitaria y en la forma en que los habitantes preservan sus tradiciones.

## Costumbres (Fiestas)
- Xantolo (Día de Muertos).  
- Carnaval.  
- Feria y aniversario de la ciudad.  
Estas celebraciones combinan tradiciones religiosas, culturales y populares, siendo espacios de convivencia y orgullo comunitario.

## Gastronomía
Destacan platillos como:  
- Torta de la barda.  
- Jaibas rellenas.  
- Ceviches.  
- Asado de puerco.  
- Pan de Juancho.  
Es una cocina influenciada por el mar y la región huasteca, con sabores que reflejan la diversidad cultural de la ciudad.

## Educación
Cuenta con educación en todos los niveles, incluyendo universidades y centros de capacitación.  
La sociedad es diversa: pescadores, comerciantes, trabajadores industriales y familias tradicionales. Existen cooperativas, asociaciones y programas sociales que fortalecen la comunidad.  
También se promueven acciones en salud, seguridad y apoyo ante desastres naturales, lo que refuerza la resiliencia de la población.

## Turismo y Lugares Emblemáticos
Entre los principales atractivos están:  
- Centro Histórico de Tampico.  
- Laguna del Carpintero.  
- Cercanía con Playa Miramar (en Ciudad Madero).  
Es un destino que combina turismo cultural, natural y urbano, con gran potencial para atraer visitantes nacionales e internacionales.

## Conclusión
Tampico es una ciudad con gran importancia histórica, económica y cultural en Tamaulipas. Su desarrollo ha estado ligado al puerto y al petróleo, pero también destaca por sus tradiciones, gastronomía y riqueza natural.  
Tiene un gran potencial turístico y sigue siendo un punto clave en el desarrollo regional, consolidándose como una ciudad moderna que conserva su identidad histórica y cultural.
''',
  imagenAsset: 'assets/images/tampico.jpg',
  imagenes: [
    'assets/fotos/Tampico.png',
    'assets/fotos/tampico2.jpg',
    'assets/fotos/Tampico-1.webp',
  ],
  poblacion: '297,000 hab.',
  superficie: '92 km²',
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

final List<Map<String, dynamic>> lugaresTampico = [
  {
    'nombre': 'Centro Histórico de Tampico',
    'descripcion': 'Zona con edificios históricos y vida cultural.',
    'lat': 22.2167,
    'lng': -97.8500,
  },
  {
    'nombre': 'Laguna del Carpintero',
    'descripcion': 'Espacio natural con paseos en lancha.',
    'lat': 22.2200,
    'lng': -97.8550,
  },
  {
    'nombre': 'Playa Miramar',
    'descripcion': 'Playa cercana, en Ciudad Madero.',
    'lat': 22.2728,
    'lng': -97.8350,
  },
];