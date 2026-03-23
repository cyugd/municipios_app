class Monumento {
  final String nombre;
  final String descripcion;
  final String? modeloUrl; // Si es null, usaremos un cubo básico
  final double escala;

  Monumento({
    required this.nombre,
    required this.descripcion,
    this.modeloUrl,
    this.escala = 0.5,
  });
}