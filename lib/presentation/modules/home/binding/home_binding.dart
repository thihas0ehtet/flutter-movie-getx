import 'package:flutter_movie_getx/data/repository/movie_repository_impl.dart';
import 'package:flutter_movie_getx/domain/usecases/fetch_movies_use_case.dart';
import 'package:flutter_movie_getx/presentation/modules/home/controller/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FetchMoviesCase(Get.find<MovieRepositoryIml>()));
    Get.lazyPut(() => HomeController(Get.find()));
  }
}
