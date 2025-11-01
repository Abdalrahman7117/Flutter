import 'dart:convert';
import 'package:flutter_application_body_api/models/class.dart';
import 'package:http/http.dart'as https;

Future<List<Products>> fetchproductsvv() async{
  final Response = await https.get(Uri.parse('https://fakestoreapi.com/products'));
  if(Response.statusCode == 200){
    List<dynamic> datavv = json.decode(Response.body);
    return datavv.map((json) => Products.fromJson(json)).toList();
  }
  else{
    throw Exception("Error");
  }
}