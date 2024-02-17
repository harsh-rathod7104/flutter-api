import 'dart:convert';
import 'dart:developer';

import 'package:blocapi/models/movie_model.dart';
import 'package:http/http.dart' as http;

class HomeRepository {
  Future<List<MovieModel>> fetchMovies(String category) async {
    final response = await http.get(Uri.parse(category));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData
          .map((movieMap) => MovieModel.fromJson(movieMap))
          .toList();
    } else {
      throw Exception("Failed to Load Movie");
    }
  }
}
