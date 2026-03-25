import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black), // Flecha negra
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              // Logo simple (Reemplazar con tu imagen)
              const Text('DQ', style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.red, fontStyle: FontStyle.italic)),
              const SizedBox(height: 20),
              const Text('Inicio de sesión', style: TextStyle(fontSize: 22)),
              const SizedBox(height: 30),
              
              // Formulario Correo
              TextField(
                decoration: InputDecoration(
                  labelText: 'Correo',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                ),
              ),
              const SizedBox(height: 20),
              
              // Formulario Contraseña
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                ),
              ),
              const SizedBox(height: 40),
              
              // Botón
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue[100]),
                onPressed: () {
                  // Lógica para iniciar sesión
                },
                child: const Text('Iniciar Sesion', style: TextStyle(color: Colors.black87)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}