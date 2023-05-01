import 'dart:js';

import 'package:floricultura/screens/cadastro.dart';
import 'package:floricultura/screens/carrinho.dart';
import 'package:floricultura/screens/detalhes_do_produto.dart';
import 'package:floricultura/screens/home.dart';
import 'package:floricultura/screens/informacoes_usuario.dart';
import 'package:floricultura/screens/main_page.dart';
import 'package:floricultura/screens/produto_page.dart';
import 'package:floricultura/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'screens/catalogo.dart';
import 'screens/login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/login': (context) => const LoginScreen(),
        '/cadastro': (context) => const Cadastro(),
        '/info-usuario': (context) => const InfoUsuario(),
        '/catalogo': (context) => const CatalogoPage(),
        '/home' : (context) => const Home(),
        '/main': (context) => const MainPage(),
        '/carrinho': (context) => const Carrinho(),
        '/detalhes-produto': (context) => const DetalhesProduto(),
        '/produto-page': (context) => const ProdutoPage(),
      }, 
    );
  }
  
}
