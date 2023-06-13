import 'package:floricultura/models/loja_flores.dart';
import 'package:floricultura/screens/cadastro.dart';
import 'package:floricultura/screens/carrinho.dart';
import 'package:floricultura/screens/detalhes_do_pedido.dart';
import 'package:floricultura/screens/historico_de_pedidos.dart';
import 'package:floricultura/screens/home.dart';
import 'package:floricultura/screens/informacoes_usuario.dart';
import 'package:floricultura/screens/pagamento.dart';
import 'package:floricultura/screens/pagina_do_produto.dart';
import 'package:floricultura/screens/search.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/catalogo.dart';
import 'screens/login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LojaFlores(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const LoginScreen(),
          '/login': (context) => const LoginScreen(),
          '/cadastro': (context) => const Cadastro(),
          '/search': (context) => Search(),
          '/info-usuario': (context) => const InfoUsuario(),
          '/catalogo': (context) => const CatalogoPage(),
          '/home': (context) => const Home(),
          '/carrinho': (context) => const Carrinho(),
          '/detalhes-pedido': (context) => const DetalhesPedido(),
          '/pagamento': (context) => const Pagamento(),
          '/meus-pedidos': (context) => const HistoricoPedidos(),
        },
      ),
    );
  }
}
