import 'package:flutter/material.dart';

class Accion extends StatelessWidget {
  const Accion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accion'),
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
            'Arena Breakout',
            'assets/arenabreakout.jpg',
            'FPS realista con combates tácticos donde debes sobrevivir y recoger equipo.',
            'Accion',
            '85.000 COP',
            4.7,
          ),
          buildGameCard(
            context,
            'Call of Duty Mobile',
            'assets/codmobile.jpg',
            'Una experiencia de guerra y combate multijugador en tu móvil.',
            'Accion',
            'Gratis',
            4.9,
          ),
          buildGameCard(
            context,
            'Blood Strike',
            'assets/bloodstrike.jpg',
            'Juego de disparos multijugador con gráficos impresionantes y jugabilidad rápida.',
            'Accion',
            '70.000 COP',
            4.6,
          ),
          buildGameCard(
            context,
            'Free Fire',
            'assets/freefire.jpg',
            'Un battle royale con partidas rápidas y acción intensa.',
            'Accion',
            'Gratis',
            4.4,
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
          Image.asset(imagePath),
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