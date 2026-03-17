import 'package:flutter/material.dart';
import 'package:municipios_app/screens/splash_screen.dart'; // <--- Importar splash

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Municipios Tamaulipas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      home: const SplashScreen(), // <--- Cambiado
    );
  }
}