import 'app_injector.dart' as _i1;
import '../persistence/api_provider.dart' as _i2;
import '../persistence/repository.dart' as _i3;
import 'dart:async' as _i4;
import '../main.dart' as _i5;
import '../ui/weather_screen.dart' as _i6;
import '../bloc/weather_bloc.dart' as _i7;

class AppInjector$Injector implements _i1.AppInjector {
  AppInjector$Injector._();

  _i2.ApiProvider _singletonApiProvider;

  _i3.Repository _singletonRepository;

  static _i4.Future<_i1.AppInjector> create() async {
    final injector = AppInjector$Injector._();

    return injector;
  }

  _i5.MyApp _createMyApp() => _i5.MyApp(_createWeatherScreen);
  _i6.WeatherScreen _createWeatherScreen() =>
      _i6.WeatherScreen(_createWeatherBloc());
  _i7.WeatherBloc _createWeatherBloc() => _i7.WeatherBloc(_createRepository());
  _i3.Repository _createRepository() =>
      _singletonRepository ??= _i3.Repository(_createApiProvider());
  _i2.ApiProvider _createApiProvider() =>
      _singletonApiProvider ??= _i2.ApiProvider();
  @override
  _i5.MyApp get app => _createMyApp();
  @override
  _i3.Repository get repository => _createRepository();
  @override
  _i6.WeatherScreen get weatherScreen => _createWeatherScreen();
}
