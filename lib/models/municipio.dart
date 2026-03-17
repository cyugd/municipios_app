class Municipio {
  final String id;
  final String nombre;
  final String descripcionCorta;
  final String descripcionLarga;
  final String imagenAsset; // imagen principal (opcional, la mantenemos por compatibilidad)
  final List<String> imagenes; // NUEVO: lista para la galería
  final String poblacion;
  final String superficie;
  final String gentilicio;

  Municipio({
    required this.id,
    required this.nombre,
    required this.descripcionCorta,
    required this.descripcionLarga,
    required this.imagenAsset,
    required this.imagenes, // ahora es requerido
    required this.poblacion,
    required this.superficie,
    required this.gentilicio,
  });
}