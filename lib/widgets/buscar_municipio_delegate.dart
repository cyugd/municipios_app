import 'package:flutter/material.dart';
import 'package:municipios_app/data/municipios_list.dart';
import 'package:municipios_app/models/municipio.dart';
import 'package:municipios_app/screens/detail_screen.dart';

class BuscarMunicipioDelegate extends SearchDelegate<Municipio?> {
  @override
  ThemeData appBarTheme(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return theme.copyWith(
      primaryColor: Colors.teal,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        elevation: 2,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        border: InputBorder.none,
        hintStyle: TextStyle(color: Colors.white70),
      ),
    );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final resultados = todosLosMunicipios
        .where((m) => m.nombre.toLowerCase().contains(query.toLowerCase()))
        .toList();
    return _buildResultList(resultados);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final sugerencias = query.isEmpty
        ? todosLosMunicipios
        : todosLosMunicipios
        .where((m) => m.nombre.toLowerCase().contains(query.toLowerCase()))
        .toList();
    return _buildResultList(sugerencias);
  }

  Widget _buildResultList(List<Municipio> municipios) {
    return ListView.builder(
      itemCount: municipios.length,
      itemBuilder: (context, index) {
        final municipio = municipios[index];
        return TweenAnimationBuilder(
          tween: Tween<double>(begin: 0.0, end: 1.0),
          duration: Duration(milliseconds: 300 + (index * 50)),
          curve: Curves.easeOut,
          builder: (context, double value, child) {
            return Opacity(
              opacity: value,
              child: Transform.translate(
                offset: Offset(20 * (1 - value), 0),
                child: child,
              ),
            );
          },
          child: ListTile(
            leading: Hero(
              tag: 'municipio-${municipio.id}',
              child: _buildAvatar(municipio),
            ),
            title: Text(
              municipio.nombre,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(municipio.descripcionCorta),
            onTap: () {
              close(context, null);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => DetailScreen(municipio: municipio)),
              );
            },
          ),
        );
      },
    );
  }

  Widget _buildAvatar(Municipio municipio) {
    // Tamaño más grande para que se note la imagen
    return CircleAvatar(
      radius: 28,
      backgroundColor: _colorFromString(municipio.id),
      child: ClipOval(
        child: Image.asset(
          municipio.imagenAsset,
          width: 56,
          height: 56,
          fit: BoxFit.cover,
          errorBuilder: (_, __, ___) => Center(
            child: Text(
              municipio.nombre.isNotEmpty ? municipio.nombre[0].toUpperCase() : '?',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Color _colorFromString(String str) {
    int hash = str.hashCode;
    return Color((hash & 0xFFFFFF).toInt()).withOpacity(1.0);
  }
}