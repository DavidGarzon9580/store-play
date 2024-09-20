import 'package:flutter/material.dart';


class Carreras extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carreras'),
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
            'Asphalt 8',
            'assets/asphalt8.jpg',
            'Carreras de alta velocidad con impresionantes gráficos y acrobacias aéreas. Corre en coches de lujo y motos. ',
            'Carreras',
            'Gratis',
            4.6,
          ),
          buildGameCard(
            context,
            'Real Racing 3',
            'assets/realracing3.jpg',
            'Un simulador de carreras realista con más de 200 coches y circuitos oficiales.',
            'Carreras',
            'Gratis',
            4.5,
          ),
          buildGameCard(
            context,
            'Race Max Pro',
            'assets/racemaxpro.jpg',
            'Un emocionante juego de carreras con gráficos de alta calidad y carreras en entornos urbanos.',
            'Carreras',
            'Gratis',
            4.4,
          ),
          buildGameCard(
            context,
            'NFS: Sin Limites',
            'assets/nfs_sin_limites.jpg',
            'Personaliza tu coche y compite en intensas carreras callejeras en el universo de Need for Speed.',
            'Carreras',
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

