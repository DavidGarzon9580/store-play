import 'package:flutter/material.dart';

class Terror extends StatelessWidget {
  const Terror({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terror'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Volver a la vista de Categorías
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: <Widget>[
          buildGameCard(
            context,
            'Five Nights at Freddy\'s',
            'assets/fnaf.jpg',
            'Juego de terror y suspenso que ocurre en una pizzería donde el jugador es un guardia nocturno.',
            'Terror',
            '50.000 COP',
            4.5,
          ),
          buildGameCard(
            context,
            'The Walking Dead',
            'assets/walkingdead.jpg',
            'Basado en la serie, lucha contra zombies para sobrevivir en un mundo post-apocalíptico.',
            'Terror',
            '120.000 COP',
            4.8,
          ),
          buildGameCard(
            context,
            'Escape Room',
            'assets/escaperoom.jpg',
            'Resuelve acertijos y escapa de habitaciones cerradas antes de que el tiempo se agote.',
            'Terror',
            '35.000 COP',
            4.2,
          ),
          buildGameCard(
            context,
            'Age of Origins: Tower Defense',
            'assets/ageoforigins.jpg',
            'Defiende tu base de hordas de zombies y monstruos en este juego de estrategia.',
            'Terror',
            '90.000 COP',
            4.3,
          ),
        ],
      ),
    );
  }

  Widget buildGameCard(BuildContext context, String title, String imagePath, String description, String genre, String price, double rating) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagePath), // Ruta de imagen corregida
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(description),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Género: $genre'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Precio: $price'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('Rating: $rating'),
                const SizedBox(width: 10),
                buildRatingStars(rating),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRatingStars(double rating) {
    return Row(
      children: List.generate(5, (index) {
        if (index < rating) {
          return const Icon(Icons.star, color: Colors.yellow);
        } else {
          return const Icon(Icons.star_border, color: Colors.yellow);
        }
      }),
    );
  }
}
