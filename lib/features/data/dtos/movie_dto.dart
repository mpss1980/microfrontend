import 'package:microfrontend/features/data/dtos/movie_details_dto.dart';
import 'package:microfrontend/features/domain/entities/movies_entity.dart';

class MovieDto extends MovieEntity {
  MovieDto(
      {required super.averageRating,
      required super.backdropPath,
      required super.description,
      required super.id,
      required super.iso_3166_1,
      required super.iso_639_1,
      required super.name,
      required super.page,
      required super.posterPath,
      required super.public,
      required super.listMovies,
      required super.revenue,
      required super.runtime,
      required super.sortBy,
      required super.totalPages,
      required super.totalResults});

  static MovieDto fromJson(Map json) {
    return MovieDto(
      averageRating: json['average_rating'] as double,
      backdropPath: json['backdrop_path'],
      description: json['description'],
      id: json['id'] as int,
      iso_3166_1: json['iso_3166_1'],
      iso_639_1: json['iso_639_1'],
      name: json['name'],
      page: json['page'] as int,
      posterPath: json['poster_path'],
      public: json['public'] as bool,
      listMovies: List.from(json['results']).map((e) => MovieDetailsDto.fromJson(e)).toList(),
      revenue: json['revenue'] as int,
      runtime: json['runtime'] as int,
      sortBy: json['sort_by'],
      totalPages: json['total_pages'] as int,
      totalResults: json['total_results'] as int,
    );
  }

  Map toJson() {
    return {
      'average_rating': averageRating,
      'backdrop_path': backdropPath,
      'description': description,
      'id': id,
      'iso_3166_1': iso_3166_1,
      'iso_639_1': iso_639_1,
      'name': name,
      'page': page,
      'poster_path': posterPath,
      'public': public,
      'results': listMovies.map((e) => MovieDetailsDto.fromDomain(e).toJson()).toList(),
      'revenue': revenue,
      'runtime': runtime,
      'sort_by': sortBy,
      'total_pages': totalPages,
      'total_results': totalResults,
    };
  }
}
