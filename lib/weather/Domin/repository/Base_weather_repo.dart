
import '../entities/weather_entities.dart';

abstract class BaseWeatherRepository {

 Future<Weather> getWeatherByCityName(String cityName);

}