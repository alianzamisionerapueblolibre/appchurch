import 'package:app_red_jovenes/models/miembros.dart';
import 'package:flutter/material.dart';
class UserCard extends StatelessWidget {

  final Miembros miembro;

  const UserCard({
    Key? key, required this.miembro
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //Navigator.pushReplacementNamed(context, 'anuncio_detail');
      },
      child: Card(
        
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        elevation: 5,
        child: Column(
          children: [
            Container(
            
              margin: const EdgeInsets.symmetric( horizontal: 5, vertical: 15),
              width: 80,
              height: 80,
              child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(miembro.imagenPerfil.toString()),
              ),

            ),
            Center(
              child: Text(miembro.firstName, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
            ),
            Container(
              margin: const EdgeInsets.only(left: 25,right: 25),
              child: Center(
                child: Text(miembro.email, textAlign: TextAlign.center, style: const TextStyle(fontSize: 12, color: Colors.grey),),
              ),
            )

          ],
        ),
      ),
    );
  }
}