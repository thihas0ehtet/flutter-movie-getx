import 'package:flutter/material.dart';
import 'package:flutter_movie_getx/app/utils/dependency.dart';
import 'package:flutter_movie_getx/presentation/app.dart';

void main() {
  DependencyCreator.init();
  runApp(const App());
}
