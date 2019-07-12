import 'package:inject/inject.dart';
import 'package:weather_app_di/model/weather_response_model.dart';
import 'api_provider.dart';

@provide
@singleton
class Repository {
  ApiProvider apiProvider;

  Repository(this.apiProvider);

  Future<WeatherResponse> fetchLondonWeather() => apiProvider.fetchLondonWeather();
}