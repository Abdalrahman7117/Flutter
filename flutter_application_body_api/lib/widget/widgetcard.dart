import 'package:flutter/material.dart';
import 'package:flutter_application_body_api/models/class.dart';
import 'package:flutter_application_body_api/widget/widgetdetils.dart';
import 'package:transparent_image/transparent_image.dart';
class Widgetcard extends StatelessWidget {
  const Widgetcard({super.key,required this.products});

  final Products products;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context){
            return Widgetdetils(products: products);
          }));
      } ,
      child: Card(
        
      
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
      
            FadeInImage(
              placeholder: MemoryImage(kTransparentImage) , 
              image: NetworkImage(products.image),
              height: 150,
              fit: BoxFit.cover,
              ),
              SizedBox(height: 10,),
              Text(products.category),
              SizedBox(height: 10,),
              Text(products.title),
              SizedBox(height: 10,),
              Text(products.price.toString()),
              SizedBox(height: 10,),
              Text(products.rate.toString()),
              
          ],
        ),
      
      ),
    );
  }
}