import 'package:blocapi/models/movie_model.dart';

abstract class HomeState {}

class HomeIntialState extends HomeState {}

class HomeLoeadinState extends HomeState {
  HomeLoeadinState();
}

class MovieSuccessState extends HomeState {
  final List<MovieModel> trendingMovies;
  MovieSuccessState(this.trendingMovies);
}

class MovieErrorState extends HomeState {
  final String error;
  MovieErrorState(this.error);
}
