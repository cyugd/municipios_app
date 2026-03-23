import 'package:flutter/material.dart';
import 'package:ar_flutter_plugin/ar_flutter_plugin.dart';
import 'package:ar_flutter_plugin/datatypes/node_types.dart';
import 'package:ar_flutter_plugin/managers/ar_session_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_object_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_anchor_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_location_manager.dart';
import 'package:ar_flutter_plugin/models/ar_node.dart';
import 'package:vector_math/vector_math_64.dart' as vector;
import 'package:municipios_app/models/monumento.dart';

class ARMonumentScreen extends StatefulWidget {
  final Monumento monumento;
  const ARMonumentScreen({Key? key, required this.monumento}) : super(key: key);

  @override
  State<ARMonumentScreen> createState() => _ARMonumentScreenState();
}

class _ARMonumentScreenState extends State<ARMonumentScreen> {
  ARSessionManager? arSessionManager;
  ARObjectManager? arObjectManager;
  ARAnchorManager? arAnchorManager;
  bool _isPlacing = false;
  ARNode? _placedNode;

  @override
  void dispose() {
    arSessionManager?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AR: ${widget.monumento.nombre}'),
        backgroundColor: Colors.teal,
      ),
      body: Stack(
        children: [
          ARView(
            onARViewCreated: _onARViewCreated,
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  _isPlacing ? "Toca en el suelo para colocar el monumento" : "Mueve el dispositivo para detectar un plano",
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          if (_placedNode != null)
            Positioned(
              top: 40,
              right: 20,
              child: FloatingActionButton.extended(
                onPressed: _showInfo,
                icon: const Icon(Icons.info),
                label: const Text("Info"),
                backgroundColor: Colors.teal,
              ),
            ),
        ],
      ),
    );
  }

  void _onARViewCreated(ARViewController controller) {
    arSessionManager = controller.sessionManager;
    arObjectManager = controller.objectManager;
    arAnchorManager = controller.anchorManager;

    controller.onTap = (tap) async {
      if (_isPlacing) return;
      setState(() => _isPlacing = true);

      // Realizar hit test en el punto tocado
      final hitResults = await arSessionManager?.getHitTestResults(tap);
      if (hitResults == null || hitResults.isEmpty) {
        setState(() => _isPlacing = false);
        return;
      }

      // Tomar el primer resultado (debe ser un plano horizontal)
      final hit = hitResults.first;
      final position = hit.position;

      // Crear un cubo básico (no requiere modelo externo)
      final node = ARNode(
        type: NodeType.primitive,
        primitiveShape: PrimitiveShape.cube,
        position: position,
        scale: vector.Vector3(widget.monumento.escala, widget.monumento.escala, widget.monumento.escala),
        material: Material(
          color: Colors.teal,
          metalness: 0.8,
          roughness: 0.2,
        ),
      );

      bool added = await arObjectManager?.addNode(node) ?? false;
      if (added) {
        setState(() => _placedNode = node);
      }
      setState(() => _isPlacing = false);
    };
  }

  void _showInfo() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(widget.monumento.nombre),
        content: Text(widget.monumento.descripcion),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cerrar"),
          ),
        ],
      ),
    );
  }
}