import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:weather_with_cleanarchitecture/Core/Utils/constance.dart';
import 'package:weather_with_cleanarchitecture/weather/Data/model/weather_model.dart';

abstract class BaseRemoteDataSource{
 Future<WeatherModel?> getCurrentWeatherByCityName(String cityName);

}


class RemoteDataSourse implements BaseRemoteDataSource{
  @override
  Future<WeatherModel?> getCurrentWeatherByCityName(String cityName) async{
   try {
    var response = await Dio().get('${AppConstance.baseUrl}/weather?q=$cityName&appid=${AppConstance.apiKey}');
    print(response);
    return WeatherModel.fromJson(response.data);
   } catch (e) {
    print(e);
    return null;
   }



  }



}