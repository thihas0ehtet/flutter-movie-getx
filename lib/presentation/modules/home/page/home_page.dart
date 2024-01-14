import 'package:flutter/material.dart';
import 'package:flutter_movie_getx/presentation/modules/home/controller/home_controller.dart';

import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController homeController = Get.find();

  @override
  void initState() {
    super.initState();
    homeController.fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return GetX(
        init: homeController,
        builder: (_) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("My Movie"),
            ),
            body: ListView.builder(
              itemCount: homeController.movies.length,
              itemBuilder: (context, index) {
                final movie = homeController.movies[index];
                return Text(movie.originalTitle);
              },
            ),
          );
        });
  }
}
