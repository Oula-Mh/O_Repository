import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;
  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get(endPoint,
        options: Options(headers: {
          'Authorization':
              'Bearer 1|8bs4qH2vV5H7U9cJNZplhv94y7ayqs2Ww2LroGp7990ed2f9'
        }));

    return response.data;
  }

  Future<Map<String, dynamic>> post(
      {required String endPoint, required Map data}) async {
    var response = await _dio.post(endPoint,
        options: Options(headers: {
          'Authorization':
              'Bearer 1|8bs4qH2vV5H7U9cJNZplhv94y7ayqs2Ww2LroGp7990ed2f9'
        }),
        data: data);

    return response.data;
  }
}
