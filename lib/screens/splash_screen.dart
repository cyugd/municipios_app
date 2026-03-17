import 'dart:async';
import 'package:flutter/material.dart';
import 'package:municipios_app/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Espera 2 segundos y luego navega al Home
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF004d40), Color(0xFF00796b)], // teal oscuro a teal
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo de Tamaulipas (debes tener el archivo)
              Image.asset(
                'assets/logo/tamaulipas_logo.png',
                width: 150,
                height: 150,
                errorBuilder: (_, __, ___) => const Icon(
                  Icons.map,
                  size: 100,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Municipios de Tamaulipas',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Conoce nuestros 43 municipios',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}