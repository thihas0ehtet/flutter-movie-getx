import 'package:flutter/material.dart';
import 'package:flutter_movie_getx/presentation/modules/home/binding/home_binding.dart';
import 'package:flutter_movie_getx/presentation/modules/home/page/home_page.dart';
import 'package:get/route_manager.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      initialBinding: HomeBinding(),
      home: const HomePage(),
    );
  }
}
