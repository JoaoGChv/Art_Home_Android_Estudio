import 'package:art_home/home_screen.dart';
import 'package:flutter/material.dart';
 // Importe o arquivo de tela de login

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Art Home',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/', // Defina a rota inicial conforme sua estrutura de navegação
      routes: {
        '/': (context) => HomeScreen(), // Rota para a tela inicial
        '/login': (context) => LoginScreen(), // Rota para a tela de login
        // Adicione outras rotas conforme necessário
      },
    );
  }
}

LoginScreen() {
}
