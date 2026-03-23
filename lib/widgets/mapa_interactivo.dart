import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

class MapaInteractivo extends StatelessWidget {
  final List<Map<String, dynamic>> lugares;

  const MapaInteractivo({Key? key, required this.lugares}) : super(key: key);

  void _openGoogleMaps(double lat, double lng) async {
    final url = Uri.parse('https://www.google.com/maps/search/?api=1&query=$lat,$lng');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      final geoUrl = Uri.parse('geo:$lat,$lng?q=$lat,$lng');
      if (await canLaunchUrl(geoUrl)) {
        await launchUrl(geoUrl);
      } else {
        // No se pudo abrir, mostramos snackbar (necesitamos contexto)
        // Lo manejamos desde el diálogo
        debugPrint('No se pudo abrir Google Maps');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final center = lugares.isNotEmpty
        ? LatLng(lugares.first['lat'], lugares.first['lng'])
        : const LatLng(23.9478, -98.4102);

    return Card(
      elevation: 8,
      shadowColor: Colors.teal.withOpacity(0.3),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.teal, Colors.tealAccent],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: Row(
                children: [
                  const Icon(Icons.map, color: Colors.white),
                  const SizedBox(width: 8),
                  const Text(
                    'Mapa de lugares turísticos',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'Interactivo',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 300,
              child: FlutterMap(
                options: MapOptions(
                  initialCenter: center,
                  initialZoom: 13,
                  interactionOptions: const InteractionOptions(
                    enableMultiFingerGestureRace: true,
                    flags: InteractiveFlag.all,
                  ),
                ),
                children: [
                  TileLayer(
                    urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                    userAgentPackageName: 'com.example.municipios_app',
                  ),
                  MarkerLayer(
                    markers: lugares.map((lugar) {
                      return Marker(
                        width: 40,
                        height: 40,
                        point: LatLng(lugar['lat'], lugar['lng']),
                        child: GestureDetector(
                          onTap: () => _showMarkerDialog(context, lugar),
                          child: const Icon(
                            Icons.location_pin,
                            color: Colors.red,
                            size: 40,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showMarkerDialog(BuildContext context, Map<String, dynamic> lugar) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.place, color: Colors.teal),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    lugar['nombre'],
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(lugar['descripcion']),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cerrar'),
                ),
                const SizedBox(width: 12),
                ElevatedButton.icon(
                  icon: const Icon(Icons.map),
                  label: const Text('Ver en Google Maps'),
                  onPressed: () {
                    Navigator.pop(context);
                    _openGoogleMaps(lugar['lat'], lugar['lng']);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}