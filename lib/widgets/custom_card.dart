import 'package:flutter/material.dart';
class CustomCard extends StatelessWidget {

  final String imageUrl;
  final String? name;
  const CustomCard({
    Key? key, 
    required this.imageUrl, this.name
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacementNamed(context, 'anuncio_detail');
      },
      child: Card(
        
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        elevation: 10,
        shadowColor: Colors.lightGreenAccent.withOpacity(0.6),
        child: Column(
          children: [
            FadeInImage(
              image: AssetImage(imageUrl), 
              placeholder: const AssetImage('assets/jar-loading.gif'),
              width: double.infinity,
              
              fit: BoxFit.contain,
              fadeInDuration: const Duration(milliseconds: 900),
            ),
    
            // Container(
            //   alignment: AlignmentDirectional.centerEnd,
            //   padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            //   child: Row(
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       const Text('Deseas saber mas'),
            //       TextButton(
            //         onPressed: () {}, 
            //         child: Container(
                      
            //           alignment: Alignment.center,
            //           width: 120,
            //           decoration: BoxDecoration(
            //               borderRadius: const BorderRadius.all(Radius.circular(50)),
            //               color: Colors.grey.shade600
            //           ),
            //           child: const Padding(
            //             padding: EdgeInsets.symmetric(horizontal: 1,vertical: 5),
            //             child: Text('ver mas',
            //               style: TextStyle(color: Colors.white,
            //                   fontSize: 15,
            //                   fontWeight: FontWeight.bold),
            //             ),
            //           ),
            //         ),
            //       )
            //     ],
            //   )
            // )
          ],
        ),
      ),
    );
  }
}