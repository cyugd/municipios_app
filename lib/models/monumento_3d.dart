class Monumento3D {
  final String nombre;
  final String descripcion;
  final String rutaModelo;   // Ruta al archivo .glb
  final double escala;

  Monumento3D({
    required this.nombre,
    required this.descripcion,
    required this.rutaModelo,
    this.escala = 1.0,
  });
}