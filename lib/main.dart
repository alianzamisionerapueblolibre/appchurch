
import 'package:app_red_jovenes/providers/ui_provider.dart';
import 'package:app_red_jovenes/screens/anuncio_detail.dart';
import 'package:app_red_jovenes/screens/home.dart';
import 'package:app_red_jovenes/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UiProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'login',
        routes: {
          'home': ( _ ) => const HomePage(),
          'login': ( _ ) => const Login(),
          'anuncio_detail': ( _ ) => const AnuncioDetail(),
        },
        
      ),
    );
  }
}