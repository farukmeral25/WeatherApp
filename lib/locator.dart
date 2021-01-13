import 'package:flutter_app_havadurumu_project/viewmodels/weather_view_model.dart';
import 'package:get_it/get_it.dart';

import 'data/weather_api_client.dart';
import 'data/weather_repository.dart';

GetIt locator = GetIt();

void setupLocator() {
  locator.registerLazySingleton(() => WeatherRepository());
  locator.registerLazySingleton(() => WeatherApiClient());
  locator.registerFactory(() => WeatherViewModel());
}
