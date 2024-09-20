import 'package:flutter/material.dart';
import 'package:flutter_store_play/accion.dart';
import 'package:flutter_store_play/aventura.dart';
import 'package:flutter_store_play/carreras.dart';
import 'package:flutter_store_play/deportes.dart';
import 'package:flutter_store_play/estrategia.dart';
import 'package:flutter_store_play/main.dart';
import 'package:flutter_store_play/terror.dart';

class Categorias extends StatelessWidget {
  final List<Category> categories = [
    Category('Terror', 'assets/terror.jpg',  Terror()), // Redirige a la vista de "Terror"
    Category('Accion', 'assets/accion.jpg',  Accion()), // Redirige a la vista de "Accion"
    Category('Estrategia', 'assets/estrategia.jpg', Estrategia()), // Placeholder para futuras vistas
    Category('Carrera', 'assets/carrera.jpg',  Carreras()), // Placeholder para futuras vistas
    Category('Aventura', 'assets/aventura.jpg', Aventura()), // Placeholder para futuras vistas
    Category('Deportes', 'assets/deportes.jpg', Deportes()), // Placeholder para futuras vistas
  ];

  Categorias({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categorias'),
        leading: const Icon(Icons.home),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final category = categories[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => category.destination,
                  ),
                );
              },
              child: GridTile(
                footer: GridTileBar(
                  backgroundColor: Colors.black54,
                  title: Text(category.title),
                ),
                child: Image.asset(category.imagePath, fit: BoxFit.cover),
              ),
            );
          },
        ),
      ),
    );
  }
}
