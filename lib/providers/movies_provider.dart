import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MoviesProvider extends ChangeNotifier {
  final String _apiKey = 'f6c2900871be1ecc862a40a485c545b0';
  final String _baseUrl = 'api.themoviedb.org';
  final String _language = 'es-ES';

  //constructor
  MoviesProvider() {
    print('MoviesProvider inicializado');

    getOnDisplayMovies();
  }

//metodo para mostrar las peliculas
  getOnDisplayMovies() async {
    var url = Uri.https(_baseUrl, '3/movie/now_playing',
        {'api_key': _apiKey, 'language': _language, 'page': '1'});

    // Await the http get response, then decode the json-formatted response.
    final response = await http.get(url);

    print(response.body);
  }
}
