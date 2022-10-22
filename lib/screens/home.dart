import 'package:app_red_jovenes/screens/anuncios.dart';
import 'package:app_red_jovenes/widgets/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app_red_jovenes/providers/ui_provider.dart';
import 'package:app_red_jovenes/widgets/custom_navigatorbar.dart';


class HomePage extends StatelessWidget {
   
  const HomePage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuestros anuncios', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: const SideMenu(),
      body: const _HomePageBody(),
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}

class _HomePageBody extends StatelessWidget {
  const _HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final currentIndex = uiProvider.selectedMenuOpt;
    //final tempScan = new ScanModel(valor: 'http://google.com');
    //DBProvider.db.nuevoScan(tempScan);
    //DBProvider.db.getScanById(2).then((scan) => print(scan.valor));
    //DBProvider.db.getTodosScan().then((scan) => print(scan));


    switch (currentIndex) {
      case 0:
        return const AnunciosPage();
      case 1:
        return Container();
      default:
      return Container();
    }
  }
}