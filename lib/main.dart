
import 'package:app_red_jovenes/providers/ui_provider.dart';
import 'package:app_red_jovenes/screens/anuncio_detail.dart';
import 'package:app_red_jovenes/screens/home.dart';
import 'package:app_red_jovenes/screens/login.dart';
import 'package:app_red_jovenes/screens/miembros_page.dart';
import 'package:app_red_jovenes/services/anuncios_servicio.dart';
import 'package:app_red_jovenes/services/miembros_servicio.dart';
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
        ChangeNotifierProvider(create: (_) => MiembrosServicio()),
        ChangeNotifierProvider(create: (_) => AnunciosServicio()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'login',
        routes: {
          'home': ( _ ) => const HomePage(),
          'login': ( _ ) => const Login(),
          'anuncio_detail': ( _ ) => const AnuncioDetail(),
          'miembros': ( _ ) => const MiembrosPage(),
        },
        theme: ThemeData.light().copyWith(
          colorScheme: ThemeData().colorScheme.copyWith(
            primary: Color.fromARGB(255, 18, 136, 81),
          ),
          hintColor: Color.fromARGB(255, 36, 36, 36),
          scaffoldBackgroundColor: Color.fromARGB(255, 238, 240, 239),

          
        ),
        
      ),
    );
  }
}