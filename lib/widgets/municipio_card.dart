import 'package:flutter/material.dart';
import 'package:municipios_app/models/municipio.dart';

class MunicipioCard extends StatefulWidget {
  final Municipio municipio;
  final VoidCallback onTap;

  const MunicipioCard({Key? key, required this.municipio, required this.onTap})
      : super(key: key);

  @override
  State<MunicipioCard> createState() => _MunicipioCardState();
}

class _MunicipioCardState extends State<MunicipioCard> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      curve: Curves.easeInOut,
      transform: _isPressed ? Matrix4.diagonal3Values(0.95, 0.95, 1) : Matrix4.identity(),
      child: GestureDetector(
        onTapDown: (_) => setState(() => _isPressed = true),
        onTapUp: (_) => setState(() => _isPressed = false),
        onTapCancel: () => setState(() => _isPressed = false),
        onTap: widget.onTap,
        child: Card(
          elevation: 8,
          shadowColor: Colors.teal.withOpacity(0.3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
                child: Hero(
                  tag: 'municipio-${widget.municipio.id}',
                  child: Image.asset(
                    widget.municipio.imagenAsset,
                    height: 120,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      height: 120,
                      color: Colors.grey[300],
                      child: Center(
                        child: Text(
                          widget.municipio.nombre[0].toUpperCase(),
                          style: const TextStyle(fontSize: 40, color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.municipio.nombre,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      widget.municipio.descripcionCorta,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.grey[600], fontSize: 13),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(Icons.people, size: 16, color: Colors.teal),
                        const SizedBox(width: 4),
                        Text(widget.municipio.poblacion, style: const TextStyle(fontSize: 12)),
                        const SizedBox(width: 8),
                        const Icon(Icons.map, size: 16, color: Colors.teal),
                        const SizedBox(width: 4),
                        Text(widget.municipio.superficie, style: const TextStyle(fontSize: 12)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}