import 'package:flutter/material.dart';
import 'package:flutter_application_body_api/models/class.dart';
import 'package:transparent_image/transparent_image.dart';

class Widgetdetils extends StatelessWidget {
  const Widgetdetils({super.key,required this.products});

  final Products products;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView(
       child: Padding(
         padding: const EdgeInsets.only(top: 30),
         child: Center(
           child: Container(
            height: 450,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.grey
            ),
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
             
               children: [
             
                FadeInImage(
                  placeholder: MemoryImage(kTransparentImage) , 
                  image: NetworkImage(products.image),
                  height: 150,
                  fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Text(products.description),
                  ),
             
               ],
             ),
           ),
         ),
       ),
     ),
    );
  }
}