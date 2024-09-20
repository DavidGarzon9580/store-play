import 'package:flutter/material.dart';
import 'categorias.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Categorías de Juegos',
      theme: ThemeData.dark(),
      home: Categorias(), 
    );
  }
}




class Category {
  final String title;
  final String imagePath;
  final Widget destination;

  Category(this.title, this.imagePath, this.destination);
}
