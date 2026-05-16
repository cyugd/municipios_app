import 'package:flutter/material.dart';
import 'package:municipios_app/data/municipios_list.dart';
import 'package:municipios_app/screens/detail_screen.dart';
import 'package:municipios_app/widgets/municipio_card.dart';
import 'package:municipios_app/widgets/buscar_municipio_delegate.dart';
import 'package:municipios_app/widgets/chat_ai_widget.dart';
import 'package:municipios_app/services/auth_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authService = AuthService();

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/logo/tamaulipas_logo.png',
              height: 35,
              errorBuilder: (_, __, ___) => const Icon(Icons.map, color: Colors.white, size: 28),
            ),
            const SizedBox(width: 12),
            const Expanded(
              child: Text(
                'Municipios de Tamaulipas',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        backgroundColor: const Color(0xFF722F37),
        foregroundColor: Colors.white,
        elevation: 4,
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
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await authService.signOut();
            },
          ),
        ],
      ),
      floatingActionButton: const ChatAIWidget(),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF722F37), Color(0xFF8B3A3F)], // degradado guindo
          ),
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            int crossAxisCount = 2;
            double maxWidth = 1200;

            if (constraints.maxWidth > 1200) {
              crossAxisCount = 5;
            } else if (constraints.maxWidth > 900) {
              crossAxisCount = 4;
            } else if (constraints.maxWidth > 600) {
              crossAxisCount = 3;
            }

            double childAspectRatio = constraints.maxWidth < 600 ? 0.68 : 0.75;

            return Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: maxWidth),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      childAspectRatio: childAspectRatio,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                    ),
                    itemCount: todosLosMunicipios.length,
                    itemBuilder: (context, index) {
                      final municipio = todosLosMunicipios[index];
                      return TweenAnimationBuilder(
                        tween: Tween<double>(begin: 0.0, end: 1.0),
                        duration: Duration(milliseconds: 400 + (index % crossAxisCount * 100)),
                        curve: Curves.easeOut,
                        builder: (context, double value, child) {
                          return Opacity(
                            opacity: value,
                            child: Transform.translate(
                              offset: Offset(0, 30 * (1 - value)),
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
          },
        ),
      ),
    );
  }
}