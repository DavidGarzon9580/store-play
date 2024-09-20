import 'package:flutter/material.dart';



class Aventura extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aventuras'),
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
            'Pokémon GO',
            'assets/pokemon_go.jpg',
            'Captura Pokémon en el mundo real usando la realidad aumentada y compite en batallas. ',
            'Aventuras',
            'Gratis',
            4.5,
          ),
          buildGameCard(
            context,
            'Super Mario Run',
            'assets/super_mario_run.jpg',
            'Un juego de plataformas donde Mario corre automáticamente mientras tú controlas los saltos.',
            'Aventuras',
            'Gratis',
            4.2,
          ),
          buildGameCard(
            context,
            'SoulKnight',
            'assets/soulknight.jpg',
            'Un juego de acción con elementos de mazmorras donde debes derrotar enemigos y mejorar tu personaje.',
            'Aventuras',
            'Gratis',
            4.8,
          ),
          buildGameCard(
            context,
            'Roblox',
            'assets/roblox.jpg',
            'Plataforma de creación de juegos donde los jugadores pueden diseñar sus propios mundos y experiencias.',
            'Aventuras',
            'Gratis',
            4.7,
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
