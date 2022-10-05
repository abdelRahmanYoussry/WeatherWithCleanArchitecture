import 'package:weather_with_cleanarchitecture/weather/Domin/entities/weather_entities.dart';
import 'package:weather_with_cleanarchitecture/weather/Domin/repository/Base_weather_repo.dart';

class GetWeatherByCountryName{

  final BaseWeatherRepository repository;

  GetWeatherByCountryName(this.repository);

 Future<Weather> execute(String cityName)async{
  return await repository.getWeatherByCityName(cityName);

  }
}