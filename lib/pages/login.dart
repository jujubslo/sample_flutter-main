import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatelessWidget {
  // final _auth = FirebaseAuth.instance;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Adicionando o Logotipo
            Center(
              child: Image.asset('lib/assets/logo.png', height: 100.0),
            ),
            SizedBox(height: 20),
            // Campo do Usuário
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Usuário',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 10),
            // Campo da Senha
            TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Senha',
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 20),
            // Botão de Login
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/sobre');
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
