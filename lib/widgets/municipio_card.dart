import 'package:flutter/material.dart';
import 'package:municipios_app/models/municipio.dart';

class MunicipioCard extends StatefulWidget {
  final Municipio municipio;
  final VoidCallback onTap;
  const MunicipioCard({super.key, required this.municipio, required this.onTap});

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
          elevation: 6,
          shadowColor: const Color(0xFF722F37).withValues(alpha: 0.3),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: Hero(
                  tag: 'municipio-${widget.municipio.id}',
                  child: Image.asset(
                    widget.municipio.imagenAsset,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      color: const Color(0xFF722F37).withValues(alpha: 0.1),
                      child: const Center(
                        child: Icon(Icons.image_not_supported, size: 40),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.municipio.nombre,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF722F37),
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            widget.municipio.descripcionCorta,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.grey[600], fontSize: 11),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.people, size: 13, color: Color(0xFFFFD700)),
                          const SizedBox(width: 2),
                          Expanded(
                            child: Text(
                              widget.municipio.poblacion,
                              style: const TextStyle(fontSize: 10),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const Icon(Icons.map, size: 13, color: Color(0xFFFFD700)),
                          const SizedBox(width: 2),
                          Expanded(
                            child: Text(
                              widget.municipio.superficie,
                              style: const TextStyle(fontSize: 10),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}