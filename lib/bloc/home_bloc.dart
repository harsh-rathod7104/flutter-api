import 'package:blocapi/bloc/home_event.dart';
import 'package:blocapi/bloc/home_state.dart';
import 'package:blocapi/models/movie_model.dart';
import 'package:blocapi/repositories/home_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeRepository movieRespository;
  HomeBloc({required this.movieRespository}) : super(HomeIntialState()) {
    on<FetchMovieEvent>((event, emit) async {
      emit(HomeLoeadinState());
      try {
        final List<MovieModel> trendingMovies = await movieRespository.fetchMovies(
            "https://api.themoviedb.org/3/trending/movie/day?api_key=c3f030a72294caf3cfbc0675e82aa176");
        emit(MovieSuccessState(trendingMovies));
      } catch (ex) {
        emit(MovieErrorState(ex.toString()));
      }
    });
  }
}
