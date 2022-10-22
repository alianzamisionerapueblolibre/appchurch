import 'package:app_red_jovenes/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class AnunciosPage extends StatelessWidget {
  const AnunciosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10,),
        children: const [
          CustomCard(imageUrl: 'assets/cheho.jpeg',),
          SizedBox(height: 10,),
          CustomCard(imageUrl: 'assets/culto_especial.jpeg',),
          SizedBox(height: 10,),
          CustomCard( imageUrl: 'assets/aniversario.jpeg',),
          SizedBox(height: 10,),
          CustomCard(imageUrl: 'assets/peniel.jpeg',),

        ],
      );
  }
}