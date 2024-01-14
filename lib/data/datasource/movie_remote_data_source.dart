import 'package:flutter_movie_getx/data/models/movie_model.dart';
import 'package:flutter_movie_getx/data/providers/network/apis/movie_api.dart';

abstract class MovieRemoteDataSource {
  Future<List<MovieModel>> fetchMovies();
}

class MovieRemoteDataSourceImpl extends MovieRemoteDataSource {
  @override
  Future<List<MovieModel>> fetchMovies() async {
    final response = await MovieAPI.fetchMovies().request();

    List<dynamic> res = response['results'];

    var movies = res.map((e) => MovieModel.fromJson(e)).toList();

    //  PagingModel pagingModel = PagingModel.fromJson(response);
    return movies;
  }
}
