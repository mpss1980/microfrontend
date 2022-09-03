import 'package:microfrontend/core/@shared/constants/api_constants.dart';
import 'package:microfrontend/core/@shared/errors/exceptions.dart';
import 'package:microfrontend/core/domain/services/http_service.dart';
import 'package:microfrontend/features/data/datasources/remote/movies_remote_datasource.dart';
import 'package:microfrontend/features/data/dtos/movie_dto.dart';

class MoviesMovieDbDataSource implements MoviesRemoteDataSource {
  final HttpService _httpService;

  MoviesMovieDbDataSource(this._httpService);

  @override
  Future<MovieDto> getMovies() async {
    try {
      final response = await _httpService.get(ApiConstants.requestMovieList);
      return MovieDto.fromJson(response.data);
    } catch (error) {
      throw RemoteException();
    }
  }
}
