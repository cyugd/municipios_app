import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:municipios_app/models/monumento_3d.dart';

class Visor3DScreen extends StatefulWidget {
  final Monumento3D monumento;
  const Visor3DScreen({Key? key, required this.monumento}) : super(key: key);

  @override
  State<Visor3DScreen> createState() => _Visor3DScreenState();
}

class _Visor3DScreenState extends State<Visor3DScreen> {
  @override
  Widget build(BuildContext context) {
    // Usar la ruta del modelo definida en el objeto monumento
    // Si la ruta no empieza con http, asumimos que es un asset local
    final String src = widget.monumento.rutaModelo;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.monumento.nombre),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: _showInfo,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.grey[900],
              child: ModelViewer(
                src: src,
                alt: widget.monumento.nombre,
                ar: false,
                autoRotate: true,
                cameraControls: true,
                scale: '${widget.monumento.escala} ${widget.monumento.escala} ${widget.monumento.escala}',
                backgroundColor: Colors.grey[900]!,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withAlpha(50),
                    blurRadius: 10,
                    offset: const Offset(0, -2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.monumento.nombre,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Text(
                        widget.monumento.descripcion,
                        style: const TextStyle(fontSize: 14, height: 1.5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showInfo() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Acerca del modelo 3D'),
        content: const Text(
          'Puedes rotar el modelo con un dedo y hacer zoom con dos dedos.\n'
              'El modelo se carga desde los archivos definidos para este monumento.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cerrar'),
          ),
        ],
      ),
    );
  }
}
