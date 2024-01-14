import 'package:flutter_movie_getx/domain/entities/movie.dart';

class Paging {
  Paging({
    required this.totalResults,
    required this.movies,
  });

  int totalResults;
  List<MovieEntity> movies;
}
