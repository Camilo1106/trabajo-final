import 'package:flutter/material.dart';
import 'pantallas/ingreso.dart'; // Importa la pantalla de ingreso desde ingreso.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Oculta el banner de debug
      home: IngresoScreen(), // Pantalla de ingreso como pantalla inicial
    );
  }
}
