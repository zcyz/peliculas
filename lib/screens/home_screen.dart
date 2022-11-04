import 'package:flutter/material.dart';
import 'package:peliculas/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Peliculas en Cines'),
            elevation: 0,
            actions: [
              IconButton(
                icon: Icon(Icons.search_outlined),
                onPressed: () {},
              )
            ]),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // tarjetas principales
              CardSwiper(),

              //Slider de peliculas
              MovieSlider(),
            ],
          ),
        ));
  }
}
