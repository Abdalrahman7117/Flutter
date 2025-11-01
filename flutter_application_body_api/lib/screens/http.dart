import 'package:flutter/material.dart';
import 'package:flutter_application_body_api/models/class.dart';
import 'package:flutter_application_body_api/utils/helper.dart';
import 'package:flutter_application_body_api/widget/widgetcard.dart';

class Http extends StatefulWidget {
  const Http({super.key});

  @override
  State<Http> createState() => _HttpState();
}

class _HttpState extends State<Http> {

  late Future<List<Products>> fetchproducts;

  @override
  void initState() {
    super.initState();
    fetchproducts = fetchproductsvv();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: fetchproducts,
        builder: (context,snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator(),);
          }
          else if(snapshot.hasError){
            return Center(child: Text("Error${snapshot.error}"),);
          }
          else if(snapshot.hasData){
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                childAspectRatio: 3/2
              ),
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) => Widgetcard(products: snapshot.data![index]),
            );
           
          }
           else{
              return Center(child: Text("not fount"),);
            }
        },
      ),
    );
  }
}