import 'package:flutter/material.dart';
import 'package:microfrontend/core/@di/app_di.dart';
import 'package:microfrontend/features/presentation/movies_catalog/pages/home_page.dart';

void main() {
  AppDependencyInjection.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}
