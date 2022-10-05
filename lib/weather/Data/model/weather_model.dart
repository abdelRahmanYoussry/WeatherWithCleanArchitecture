import 'package:flutter/foundation.dart';
import 'package:weather_with_cleanarchitecture/weather/Domin/entities/weather_entities.dart';

class WeatherModel extends Weather {
  WeatherModel(
      super.id, super.name, super.main, super.description, super.pressure);


  factory WeatherModel.fromJson(Map<String,dynamic> json)=>WeatherModel(
      json['id'],
      json['name'],
      json['weather'][0]['main'],
      json['weather'][0]['description'],
      json['main']['pressure'],
     );


}
