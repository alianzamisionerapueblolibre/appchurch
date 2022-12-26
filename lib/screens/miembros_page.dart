
import 'package:app_red_jovenes/models/miembros.dart';
import 'package:app_red_jovenes/screens/loading.dart';
import 'package:app_red_jovenes/services/miembros_servicio.dart';
import 'package:app_red_jovenes/widgets/side_menu.dart';
import 'package:app_red_jovenes/widgets/user_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MiembrosPage extends StatefulWidget {
  const MiembrosPage({Key? key}) : super(key: key);

  @override
  State<MiembrosPage> createState() => _MiembrosPageState();
}

class _MiembrosPageState extends State<MiembrosPage> {

  List<Miembros> _listaUsuarios = [];

  @override
  Widget build(BuildContext context) {

    final miembrosService = Provider.of<MiembrosServicio>(context);

    if(miembrosService.isLoading) return const LoadingScreen();

    _listaUsuarios = miembrosService.miembrosSearch;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Miembros', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      drawer: const SideMenu(),
      body: SingleChildScrollView(
        child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 15, right: 30,),
                  child: TextField(
                    autofocus: false,
                    //style: TextStyle(color: Color.fromARGB(255, 136, 236, 189)),
                    textCapitalization: TextCapitalization.sentences,
                    keyboardType: TextInputType.text,
                    onChanged: ( value ) {
                      setState(() {
                        miembrosService.searchMiembros(value);
                        _listaUsuarios = miembrosService.miembrosSearch;
                      });
                    },
                    decoration: const InputDecoration(
                      isDense: true, 
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      filled: true,
                      fillColor: Color.fromARGB(255, 207, 209, 208),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 0, 
                            style: BorderStyle.none,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        
                      ),
                      //focusedBorder: OutlineInputBorder(
                        //borderSide: BorderSide(color: Colors.blue),
                        //borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      //),
                      
                      
                      hintText: 'Busca un miembro...',
                      helperText: '',
                      //counterText: '2 caracteres',
                      prefixIcon: Icon(Icons.search_outlined),
                      //suffixIcon: icon == null ? null : Icon(sufficIcon),
                      //icon: Icon(Icons.search_off_outlined),
                      // border: OutlineInputBorder(
                      //   borderRadius: BorderRadius.only(
                      //     bottomLeft: Radius.circular(10),
                      //     topRight: Radius.circular(10),
      
                      //   ),
      
                      // )  
                    ),
                  ),
                ),
                Container(
      
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10,),
                    scrollDirection: Axis.vertical,
                    itemCount: miembrosService.miembrosSearch.length,
                    itemBuilder: (BuildContext context, int index) {
                      return UserCard(miembro: miembrosService.miembrosSearch[index],);
                    },
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 300,
                      childAspectRatio: 2 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  ),
                )
              ],
            ),
      )
      
      
    );
  }
}