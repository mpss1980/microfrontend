import 'package:flutter/material.dart';
import 'package:microfrontend/features/domain/entities/movie_details_entity.dart';
import 'package:microfrontend/features/domain/entities/movies_entity.dart';
import 'package:microfrontend/features/domain/usecases/get_movies_usecase.dart';

class MovieController {
  final GetMoviesUsecase _getMoviesUsecase;

  MovieController(this._getMoviesUsecase) {
    fetchData();
  }

  ValueNotifier<MovieEntity?> movies = ValueNotifier<MovieEntity?>(null);
  MovieEntity? _cacheMovies;

  onChanged(String value) {
    if (_cacheMovies == null) return;
    List<MovieDetailsEntity> list =
        _cacheMovies!.listMovies.where((e) => e.toString().toLowerCase().contains(value.toLowerCase())).toList();

    if (movies.value == null) return;
    movies.value = movies.value!.copyWith(listMovies: list);
  }

  fetchData() async {
    final result = await _getMoviesUsecase();
    result.fold((error) => debugPrint(error.toString()), (movie) => movies.value = movie);
    _cacheMovies = movies.value;
  }
}
