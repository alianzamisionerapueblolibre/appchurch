
import 'package:app_red_jovenes/models/anuncio.dart';
import 'package:flutter/material.dart';

class AnuncioDetail extends StatelessWidget {
  const AnuncioDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Anuncio anuncio = ModalRoute.of(context)!.settings.arguments as Anuncio;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(anuncio: anuncio, ),
          SliverList(
            delegate: SliverChildListDelegate([
              //_PosterAndTitle( movie ),
            ])
          )
        ],
      )
    );
  }
}

class _CustomAppBar extends StatelessWidget {

  final Anuncio anuncio;

  const _CustomAppBar({Key? key, required this.anuncio}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      expandedHeight: 350,
      floating: false,
      pinned: true,

      flexibleSpace: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.circular(20.0),
        ),
        child: FlexibleSpaceBar(
          centerTitle: true,
          titlePadding: const EdgeInsets.all(0),
          title: Container(
            width: double.infinity,
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.only( bottom: 10, left: 10, right: 10),
            color: Colors.black12,
            child: Text(
                anuncio.descripcion,
                style: const TextStyle( fontSize: 16, color: Color.fromARGB(207, 225, 251, 251) ),
                textAlign: TextAlign.center,
              ),
          ),
      
          background: FadeInImage(
            placeholder: const AssetImage('assets/loading.gif'), 
            image: AssetImage( anuncio.imagenEvento.toString() ),
            fit: BoxFit.fitWidth,
            height: 250,
            alignment: Alignment.topCenter,
          ),
        ),
      ),
    );
  }
}

// class _AnuncioBody extends StatelessWidget {
  
//   final Anuncio anuncio;

//   const _AnuncioBody({Key? key, required this.anuncio}) : super(key: key);


//   @override
//   Widget build(BuildContext context) {

//     final TextTheme textTheme = Theme.of(context).textTheme;
//     final size = MediaQuery.of(context).size;

//     return Container(
//       margin: EdgeInsets.only( top: 20 ),
//       padding: EdgeInsets.symmetric( horizontal: 20 ),
//       child: Row(
//         children: [
//           Hero(
//             tag: movie.heroId!,
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(20),
//               child: FadeInImage(
//                 placeholder: AssetImage('assets/no-image.jpg'), 
//                 image: NetworkImage( movie.fullPosterImg ),
//                 height: 150,
//               ),
//             ),
//           ),

//           SizedBox( width: 20 ),

//           ConstrainedBox(
//             constraints: BoxConstraints( maxWidth: size.width - 190 ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
                
//                 Text( movie.title, style: textTheme.headline5, overflow: TextOverflow.ellipsis, maxLines: 2 ),
                
//                 Text( movie.originalTitle, style: textTheme.subtitle1, overflow: TextOverflow.ellipsis, maxLines: 2),

//                 Row(
//                   children: [
//                     Icon( Icons.star_outline, size: 15, color: Colors.grey ),
//                     SizedBox( width: 5 ),
//                     Text( '${movie.voteAverage}', style: textTheme.caption )
//                   ],
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

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