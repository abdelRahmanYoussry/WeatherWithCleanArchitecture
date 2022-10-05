import 'package:weather_with_cleanarchitecture/weather/Data/dataSource/remote_dataSource.dart';
import 'package:weather_with_cleanarchitecture/weather/Domin/entities/weather_entities.dart';
import 'package:weather_with_cleanarchitecture/weather/Domin/repository/Base_weather_repo.dart';

class WeatherRepo implements BaseWeatherRepository{
  final BaseRemoteDataSource baseRemoteDataSource;

  WeatherRepo(this.baseRemoteDataSource);

  @override
  Future<Weather> getWeatherByCityName(String? cityName) async{

  return (await baseRemoteDataSource.getCurrentWeatherByCityName(cityName!))!;

  }


}