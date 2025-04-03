import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Fondo blanco para el celular
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, // Quitar la sombra por defecto
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 30,
            height: 30,
            child: Image.asset(
              'assets/zapa.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
        actions: const [
          Icon(Icons.search, color: Colors.black, size: 30),
          SizedBox(width: 15),
          Icon(Icons.account_circle, color: Colors.black, size: 30),
          SizedBox(width: 15),
          Icon(Icons.shopping_cart, color: Colors.black, size: 30),
          SizedBox(width: 15),
          Icon(Icons.menu, color: Colors.black, size: 30),
          SizedBox(width: 15),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(2), // Altura de la línea
          child: Container(
            color: Colors.black, // Línea negra en la parte inferior
            height: 2, // Grosor de la línea
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 70),

          // Logo de la zapatería
          Image.asset('assets/zapateria.png', height: 250),

          const Spacer(),

          // Botones de acción
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.only(bottom: 30),
            child: Column(
              children: [
                _buildButton("Iniciar sesión", () {
                  // Acción para iniciar sesión
                }),
                const SizedBox(height: 10),
                _buildButton("Registrarse", () {
                  // Acción para registrarse
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Widget para los botones
  static Widget _buildButton(String text, VoidCallback onPressed) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Colors.black, width: 2),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.symmetric(vertical: 15),
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
    );
  }
}
