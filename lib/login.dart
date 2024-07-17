import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: LoginForm(),
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  List<String> registeredEmails = ['teste@exemplo.com', 'usuario@exemplo.com', 'admin@exemplo.com'];

  void validateEmail() {
    String emailValue = _emailController.text.trim();
    bool isValidEmail = RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$').hasMatch(emailValue);

    if (isValidEmail) {
      if (registeredEmails.contains(emailValue)) {
        setState(() {
          // Email já cadastrado
          // Implemente o feedback visual apropriado aqui, se necessário
          print('Email já cadastrado');
        });
      } else {
        // Email válido e não cadastrado
        openBlackPage(); // Função para abrir a página desejada
      }
    } else {
      setState(() {
        // Email inválido
        // Implemente o feedback visual apropriado aqui, se necessário
        print('Email inválido');
      });
    }
  }

  void openBlackPage() {
    // Redireciona para a página desejada
    // Implemente o redirecionamento adequado aqui
    print('Redirecionando para a próxima página');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Login',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          TextField(
            controller: _emailController,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              labelText: 'Email',
              labelStyle: TextStyle(color: Colors.white),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 16),
          TextField(
            controller: _passwordController,
            style: TextStyle(color: Colors.white),
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Senha',
              labelStyle: TextStyle(color: Colors.white),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: validateEmail,
            child: Text('Login'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[700],
              padding: EdgeInsets.symmetric(vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          SizedBox(height: 16),
          Divider(color: Colors.white),
          SizedBox(height: 16),
          OutlinedButton(
            onPressed: () {
              // Implemente a lógica para o login com Google
              print('Login com Google');
            },
            child: Text('Entrar com Google'),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: Colors.transparent,
              side: BorderSide(color: Colors.white),
              padding: EdgeInsets.symmetric(vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
