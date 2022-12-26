import 'package:app_red_jovenes/screens/loading.dart';
import 'package:app_red_jovenes/services/anuncios_servicio.dart';
import 'package:app_red_jovenes/widgets/custom_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:provider/provider.dart';

class AnunciosPage extends StatefulWidget {
  const AnunciosPage({Key? key}) : super(key: key);

  @override
  State<AnunciosPage> createState() => _AnunciosPageState();
}

class _AnunciosPageState extends State<AnunciosPage> {
  var activeSliderIndex = 0;
  @override
  Widget build(BuildContext context) {

    final anunciosService = Provider.of<AnunciosServicio>(context);

    if(anunciosService.isLoading) return const LoadingScreen();

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CarouselSlider(
            items: [
              CustomCard(anuncio: anunciosService.anuncios[0],),
              CustomCard(anuncio: anunciosService.anuncios[1],),
              CustomCard(anuncio: anunciosService.anuncios[2],),
              
            ], 
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height * 0.45,
              enlargeCenterPage: true,
              viewportFraction: 0.7,
              enableInfiniteScroll: true,
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(() {
                  activeSliderIndex = index;
                });
              },
            )
          ),
          Center(
            child: AnimatedSmoothIndicator(
              activeIndex: activeSliderIndex, 
              count: 3,
              effect: const ExpandingDotsEffect(
                activeDotColor: Color.fromARGB(255, 50, 200, 130),
                dotColor: Colors.grey,
                dotWidth: 22,
                dotHeight: 12
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(top: 25, left: 20, bottom: 10),
            child: Text(
              'Proximamente en la red', 
              textAlign: TextAlign.left, 
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            
            margin: const EdgeInsets.symmetric(vertical: 1,horizontal: 20),
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  margin:  const EdgeInsets.symmetric(vertical: 2,horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                    image: const DecorationImage(
                      image: AssetImage('assets/evento.jpeg'),
                      fit: BoxFit.cover,
                      opacity: 0.7
                    )
                  ),
                  child: Column(
                    children: const [
                      Text('11', style: TextStyle(color: Colors.white),),
                      SizedBox(height: 2,),
                      Text('Nov', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),)
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Celebra RJ', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
                      SizedBox(height: 2,),
                      Text('De 7:30 P.M a 10:00 P.M', style: TextStyle(color: Colors.grey,fontSize: 13),),
                      SizedBox(height: 2,),
                      Text('Av. Brasil 1854 (Cuarto piso)', style: TextStyle(color: Colors.grey,fontSize: 13),),
                    ],
                  ),
                ),
                Container(
                  width: 90,
                  alignment: Alignment.center,
                  child: Column(
                    children: const [
                      Icon(Icons.send_rounded)
                    ],
                  ),
                )
              ],
            )
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(top: 25, left: 20, bottom: 10),
            child: Text(
              'Cumpleañeros del mes', 
              textAlign: TextAlign.left, 
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 1,horizontal: 20),
            height: 150.0,
            child: ListView.separated(
              itemCount: 10,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  width: 10,
                );
              },
              itemBuilder: (_, i) => const SampleAvatar(imagenAvatar: 'assets/raquel.jpeg'),
              scrollDirection: Axis.horizontal,
            ),
          )


        ],
      ),
    );
  }
}

class SampleAvatar extends StatelessWidget {
  
  const SampleAvatar({
    Key? key, required this.imagenAvatar,
  }) : super(key: key);

  final String imagenAvatar;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80.0,
          height: 80,
          margin: const EdgeInsets.only(right: 5, left: 5, top: 5),
          padding: const EdgeInsets.all(2),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.transparent,
            boxShadow: [BoxShadow(blurRadius: 3, color: Colors.grey, spreadRadius: 2)],
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage(
                imagenAvatar),
            child: const Align(
              alignment: Alignment.topRight,

              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 15,
                backgroundImage: AssetImage(
                'assets/icono-fiesta.png'),
              ),
            )
          ),
        ),
        const SizedBox(height: 10,),
        Container(
         width: 80,
         child: const Text('Raquel Salirosas', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),)
       )
      ],
    );
  }
}