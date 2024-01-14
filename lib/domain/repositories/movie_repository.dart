import 'package:flutter_movie_getx/app/utils/typedef.dart';
import 'package:flutter_movie_getx/domain/entities/movie.dart';

abstract class MovieRepository {
  ResultFuture<List<MovieEntity>> fetchMovies();
}
