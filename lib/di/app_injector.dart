import 'package:inject/inject.dart';
import 'package:weather_app_di/persistence/repository.dart';
import 'package:weather_app_di/ui/weather_screen.dart';
import '../main.dart';
import 'app_injector.inject.dart' as g;

@Injector()
abstract class AppInjector {
  @provide
  MyApp get app;

  @provide
  Repository get repository;

  @provide
  WeatherScreen get weatherScreen;

  static Future<AppInjector> create() {
    return g.AppInjector$Injector.create();
  }
}