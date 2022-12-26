import 'dart:ui';

import 'package:app_red_jovenes/models/anuncio.dart';
import 'package:flutter/material.dart';
class CustomCard extends StatelessWidget {

  final Anuncio anuncio;
  const CustomCard({
    Key? key, 
    required this.anuncio
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'anuncio_detail', arguments: anuncio);
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.45,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: Colors.greenAccent,
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
            image: AssetImage(anuncio.imagenEvento.toString()),
            fit: BoxFit.cover
          )
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.grey.shade600.withOpacity(0.1)
                ),
                child: Text(
                  anuncio.descripcion, 
                  textAlign: TextAlign.left, 
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        // child: Column(
        //   children: [
        //     FadeInImage(
        //       image: AssetImage(imageUrl), 
        //       placeholder: const AssetImage('assets/jar-loading.gif'),
        //       width: double.infinity,
              
        //       fit: BoxFit.contain,
        //       fadeInDuration: const Duration(milliseconds: 900),
        //     ),
    
        //     // Container(
        //     //   alignment: AlignmentDirectional.centerEnd,
        //     //   padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
        //     //   child: Row(
        //     //     crossAxisAlignment: CrossAxisAlignment.center,
        //     //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     //     children: [
        //     //       const Text('Deseas saber mas'),
        //     //       TextButton(
        //     //         onPressed: () {}, 
        //     //         child: Container(
                      
        //     //           alignment: Alignment.center,
        //     //           width: 120,
        //     //           decoration: BoxDecoration(
        //     //               borderRadius: const BorderRadius.all(Radius.circular(50)),
        //     //               color: Colors.grey.shade600
        //     //           ),
        //     //           child: const Padding(
        //     //             padding: EdgeInsets.symmetric(horizontal: 1,vertical: 5),
        //     //             child: Text('ver mas',
        //     //               style: TextStyle(color: Colors.white,
        //     //                   fontSize: 15,
        //     //                   fontWeight: FontWeight.bold),
        //     //             ),
        //     //           ),
        //     //         ),
        //     //       )
        //     //     ],
        //     //   )
        //     // )
        //   ],
        // ),
      ),
    );
  }
}