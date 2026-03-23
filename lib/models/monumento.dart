class Monumento {
  final String nombre;
  final String descripcion;
  final String? modeloUrl; // URL o ruta local al archivo GLB/GLTF
  final double escala;

  Monumento({
    required this.nombre,
    required this.descripcion,
    this.modeloUrl,
    this.escala = 0.5,
  });
}