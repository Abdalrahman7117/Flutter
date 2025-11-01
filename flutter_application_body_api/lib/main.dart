import 'package:flutter/material.dart';
import 'package:flutter_application_body_api/screens/http.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Http(),
    );
  }
}