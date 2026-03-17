import 'package:flutter/material.dart';
import 'package:municipios_app/data/municipios_list.dart';
import 'package:municipios_app/screens/detail_screen.dart';
import 'package:municipios_app/widgets/municipio_card.dart';
import 'package:municipios_app/widgets/buscar_municipio_delegate.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/logo/tamaulipas_logo.png',
              height: 30,
              errorBuilder: (_, __, ___) => const Icon(Icons.map, color: Colors.white),
            ),
            const SizedBox(width: 8),
            const Text('Municipios de Tamaulipas'),
          ],
        ),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        elevation: 2,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: BuscarMunicipioDelegate(),
              );
            },
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFE0F2F1), Color(0xFFB2DFDB)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),
            itemCount: todosLosMunicipios.length,
            itemBuilder: (context, index) {
              final municipio = todosLosMunicipios[index];
              return TweenAnimationBuilder(
                tween: Tween<double>(begin: 0.0, end: 1.0),
                duration: Duration(milliseconds: 500 + (index * 100)),
                curve: Curves.easeOut,
                builder: (context, double value, child) {
                  return Opacity(
                    opacity: value,
                    child: Transform.translate(
                      offset: Offset(0, 50 * (1 - value)),
                      child: child,
                    ),
                  );
                },
                child: MunicipioCard(
                  municipio: municipio,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DetailScreen(municipio: municipio),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}