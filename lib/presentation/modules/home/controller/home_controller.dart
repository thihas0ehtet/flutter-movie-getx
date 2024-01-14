import 'package:flutter_movie_getx/domain/entities/movie.dart';
import 'package:flutter_movie_getx/domain/usecases/fetch_movies_use_case.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  HomeController(this.fetchMovieUseCase);
  final FetchMoviesCase fetchMovieUseCase;

  var movies = RxList<MovieEntity>([]);

  var error = "".obs;

  fetchData() async {
    final result = await fetchMovieUseCase.execute();
    result.fold((failure) {
      error.value = failure.toString();
    }, (data) {
      movies.assignAll(data);
    });
  }
}
