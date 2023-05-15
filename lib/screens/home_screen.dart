import 'package:flutter/material.dart';

// Pantalla que sale el ingresar al login (Se tiene que configurar en las rutas del main)
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Pociconar al centro de la pantalla
      body: Center(child: Text('Home Screen')),
      floatingActionButton: MaterialButton(
        color: Colors.blueAccent,
        child: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () => Navigator.pushReplacementNamed(context, 'login'),
      ),
    );
  }
}
