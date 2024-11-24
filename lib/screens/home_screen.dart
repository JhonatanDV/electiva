
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageUrls = [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/21/21/5f/e3/piazza-italia-by-storia.jpg?w=600&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/21/21/60/03/restaurant-example.jpg?w=600&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/21/21/60/1a/cozy-restaurant.jpg?w=600&h=-1&s=1',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Bienvenido a la App de Reseñas de Restaurantes',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Descubre los mejores lugares para disfrutar una comida inolvidable. Lee reseñas y comparte tus experiencias gastronómicas con otros usuarios.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 20),
          CarouselSlider(
            options: CarouselOptions(
              height: 200.0,
              autoPlay: true,
              enlargeCenterPage: true,
            ),
            items: imageUrls.map((url) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: NetworkImage(url),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
