import 'package:flutter/material.dart';


class Estrategia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Estrategia'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
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
            'Clash Royale',
            'assets/clashroyale.jpg',
            'Juego de estrategia en tiempo real con cartas donde los jugadores deben destruir las torres del oponente.',
            'Estrategia',
            'Gratis',
            4.8,
          ),
          buildGameCard(
            context,
            'Mobile Legends',
            'assets/mobilelegends.jpg',
            'Un juego de estrategia y acción en tiempo real, con combates de 5 contra 5 en línea.',
            'Estrategia',
            'Gratis',
            4.6,
          ),
          buildGameCard(
            context,
            'Clash of Clans',
            'assets/clashofclans.jpg',
            'Construye tu aldea, entrena tus tropas y compite en guerras de clanes épicas.',
            'Estrategia',
            'Gratis',
            4.7,
          ),
          buildGameCard(
            context,
            'War and Order',
            'assets/warandorder.jpg',
            'Un juego de estrategia donde debes construir tu imperio, entrenar tus tropas y dominar el campo de batalla.',
            'Estrategia',
            '50.000 COP',
            4.5,
          ),
        ],
      ),
    );
  }

  Widget buildGameCard(BuildContext context, String title, String imagePath, String description, String genre, String price, double rating) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagePath),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
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
                SizedBox(width: 10),
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
          return Icon(Icons.star, color: Colors.yellow);
        } else {
          return Icon(Icons.star_border, color: Colors.yellow);
        }
      }),
    );
  }
}

