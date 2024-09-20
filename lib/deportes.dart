import 'package:flutter/material.dart';

class Deportes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deportes'),
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
            'Dream League Soccer',
            'assets/dream_league_soccer.jpg',
            'Construye tu equipo de ensueño y compite en emocionantes partidos de fútbol.',
            'Deportes',
            'Gratis',
            4.5,
          ),
          buildGameCard(
            context,
            'EA Sports UFC',
            'assets/ea_sports_ufc.jpg',
            'Enfréntate a los mejores luchadores en este juego de artes marciales mixtas.',
            'Deportes',
            'Gratis',
            4.4,
          ),
          buildGameCard(
            context,
            'NBA LIVE Mobile',
            'assets/nba_live_mobile.jpg',
            'Juega baloncesto en tiempo real con los mejores equipos de la NBA.',
            'Deportes',
            'Gratis',
            4.6,
          ),
          buildGameCard(
            context,
            'MLB 9 Innings 24',
            'assets/mlb_9_innings.jpg',
            'Disfruta del béisbol con jugadores reales y partidos emocionantes.',
            'Deportes',
            'Gratis',
            4.3,
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
