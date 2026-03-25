class Monumento {
  final String nombre;
  final String descripcion;
  final String rutaModelo;   // Ruta al archivo .glb
  final double escala;

  Monumento({
    required this.nombre,
    required this.descripcion,
    required this.rutaModelo,
    this.escala = 1.0,
  });
}
