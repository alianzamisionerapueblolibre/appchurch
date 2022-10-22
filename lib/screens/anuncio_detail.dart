
import 'package:flutter/material.dart';

class AnuncioDetail extends StatelessWidget {
  const AnuncioDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/cheho.jpeg'),
                fit: BoxFit.fill
              ),
              borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(50, 40), bottomRight: Radius.elliptical(50, 40))
            ),
          ),

          const Title(),

          const ButtonSection(),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: const Text('It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'))
        ],
      )
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(height: 10,),
              Text('Campaña familiar CREHO', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            ],
          ),
          Expanded(child: Container()),
          const Icon(Icons.star, color: Colors.red,),
          const Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Material(
        elevation: 10,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: Row(
          
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            CustomButton(icon: Icons.call, texto: 'Call',),
            CustomButton(icon: Icons.map_sharp, texto: 'Route',),
            CustomButton(icon: Icons.share, texto: 'Share',),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final String texto;

  const CustomButton({
    Key? key, 
    required this.icon, 
    required this.texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue, size: 30,),
        Text(texto, style: const TextStyle(color: Colors.blue),)
      ],
    );
  }
}