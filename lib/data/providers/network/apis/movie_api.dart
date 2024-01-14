import 'package:flutter_movie_getx/data/providers/network/api_endpoint.dart';
import 'package:flutter_movie_getx/data/providers/network/api_provider.dart';
import 'package:flutter_movie_getx/data/providers/network/api_request_representable.dart';

enum MovieType { fetchMovies }

class MovieAPI implements APIRequestRepresentable {
  final MovieType type;

  MovieAPI._({required this.type});

  MovieAPI.fetchMovies()
      : this._(
          type: MovieType.fetchMovies,
        );

  @override
  String get endpoint => APIEndpoint.baseApi;

  @override
  String get path {
    switch (type) {
      case MovieType.fetchMovies:
        return "/movie/popular?api_key=8b15534cd9e0fb9ce4e5e287580e51e0";
    }
  }

  @override
  HTTPMethod get method {
    return HTTPMethod.get;
  }

  @override
  Map<String, String> get headers => {
        "Authorization":
            "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4YjE1NTM0Y2Q5ZTBmYjljZTRlNWUyODc1ODBlNTFlMCIsInN1YiI6IjY1YTI2OWEwMWYwMjc1MDExZTA4NGE2ZiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.2cGwvpzqNCBubL69W_K-h2T6459wx8Mk7kaoaQ1iOV0",
        "accept": "application/json"
      };

  @override
  Map<String, String> get query {
    switch (type) {
      case MovieType.fetchMovies:
        return {};
    }
  }

  @override
  get body => null;

  @override
  Future request() {
    return APIProvider.instance.request(this);
  }

  @override
  String get url => endpoint + path;
}
