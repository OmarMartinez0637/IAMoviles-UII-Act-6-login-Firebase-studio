import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'register_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  // Widget reutilizable para simular el logo de DQ
  Widget _buildLogo() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(30),
        border: const Border(bottom: BorderSide(color: Colors.blue, width: 5)),
      ),
      child: const Text(
        'DQ',
        style: TextStyle(
          fontSize: 80,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildLogo(), // Reemplaza esto con Image.asset si tienes la imagen real
                const SizedBox(height: 30),
                const Text(
                  'EL SABOR DE\nLA ALEGRÍA',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 50),
                
                // Botón Usuario
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginScreen()),
                    );
                  },
                  child: const Text('Iniciar Sesión como Usuario'),
                ),
                const SizedBox(height: 15),
                
                // Botón Admin (Lleva a la misma pantalla)
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginScreen()),
                    );
                  },
                  child: const Text('Iniciar Sesion como Admin'),
                ),
                const SizedBox(height: 40),
                
                // Texto de registro
                const Text('¿No tienes cuenta?'),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RegisterScreen()),
                    );
                  },
                  child: const Text(
                    'Regístrate aquí',
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}