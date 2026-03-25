import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black), // Flecha negra automática
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              const SizedBox(height: 10),
              // Logo simple (Reemplazar con tu imagen)
              const Text('DQ', style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.red, fontStyle: FontStyle.italic)),
              const SizedBox(height: 20),
              const Text('Registrarse', style: TextStyle(fontSize: 22)),
              const SizedBox(height: 30),
              
              TextField(
                decoration: InputDecoration(
                  labelText: 'Nombre',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                ),
              ),
              const SizedBox(height: 15),
              
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'Telefono',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                ),
              ),
              const SizedBox(height: 15),
              
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Correo',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                ),
              ),
              const SizedBox(height: 15),
              
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                ),
              ),
              const SizedBox(height: 40),
              
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue[100]),
                onPressed: () {
                  // Lógica para registrarse
                },
                child: const Text('Registrarse', style: TextStyle(color: Colors.black87)),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}