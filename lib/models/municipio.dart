import 'monumento.dart';

class Municipio {
  final String id;
  final String nombre;
  final String descripcionCorta;
  final String descripcionLarga;
  final String imagenAsset;
  final List<String> imagenes;
  final String poblacion;
  final String superficie;
  final String gentilicio;
  final List<Monumento> monumentos3D;
  final List<String> imagenesGastronomia;
  final List<String> imagenesTurismo;

  Municipio({
    required this.id,
    required this.nombre,
    required this.descripcionCorta,
    required this.descripcionLarga,
    required this.imagenAsset,
    required this.imagenes,
    required this.poblacion,
    required this.superficie,
    required this.gentilicio,
    this.monumentos3D = const [],
    this.imagenesGastronomia = const [], // Si no existe, será lista vacía
    this.imagenesTurismo = const [],     // Si no existe, será lista vacía
  });
}