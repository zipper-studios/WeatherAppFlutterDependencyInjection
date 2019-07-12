import 'package:flutter/material.dart';
import 'package:inject/inject.dart';
import 'package:weather_app_di/ui/weather_screen.dart';

import 'di/app_injector.dart';

typedef Provider<T> = T Function();

void main() async {
  final container = await AppInjector.create();
  runApp(container.app);
}

@provide
class MyApp extends StatelessWidget {
  final Provider<WeatherScreen> weatherScreen;

  MyApp(this.weatherScreen) : super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: weatherScreen()),
    );
  }
}
