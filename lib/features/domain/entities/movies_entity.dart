import 'package:microfrontend/features/domain/entities/movie_details_entity.dart';

class MovieEntity {
  final double averageRating;
  final String backdropPath;
  final String description;
  final int id;
  final String iso_3166_1;
  final String iso_639_1;
  final String name;
  final int page;
  final String posterPath;
  final bool public;
  final List<MovieDetailsEntity> listMovies;
  final int revenue;
  final int runtime;
  final String sortBy;
  final int totalPages;
  final int totalResults;

  MovieEntity({
    required this.averageRating,
    required this.backdropPath,
    required this.description,
    required this.id,
    required this.iso_3166_1,
    required this.iso_639_1,
    required this.name,
    required this.page,
    required this.posterPath,
    required this.public,
    required this.listMovies,
    required this.revenue,
    required this.runtime,
    required this.sortBy,
    required this.totalPages,
    required this.totalResults,
  });

  copyWith({
    double? averageRating,
    String? backdropPath,
    String? description,
    int? id,
    String? iso_3166_1,
    String? iso_639_1,
    String? name,
    int? page,
    String? posterPath,
    bool? public,
    List<MovieDetailsEntity>? listMovies,
    int? revenue,
    int? runtime,
    String? sortBy,
    int? totalPages,
    int? totalResults,
  }) =>
      MovieEntity(
        averageRating: averageRating ?? this.averageRating,
        backdropPath: backdropPath ?? this.backdropPath,
        description: description ?? this.description,
        id: id ?? this.id,
        iso_3166_1: iso_3166_1 ?? this.iso_3166_1,
        iso_639_1: iso_639_1 ?? this.iso_639_1,
        name: name ?? this.name,
        page: page ?? this.page,
        posterPath: posterPath ?? this.posterPath,
        public: public ?? this.public,
        listMovies: listMovies ?? this.listMovies,
        revenue: revenue ?? this.revenue,
        runtime: runtime ?? this.runtime,
        sortBy: sortBy ?? this.sortBy,
        totalPages: totalPages ?? this.totalPages,
        totalResults: totalResults ?? this.totalResults,
      );
}
