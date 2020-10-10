import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/configs/interceptor/dio_interceptor.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';

@lazySingleton
class ApiManager {
  final Dio _dio;
  final DioInterceptor _dioInterceptor;

  ApiManager(this._dio, this._dioInterceptor);

  Future<Either<Glitch, Map<String, dynamic>>> get({
    @required String url,
    Map<String, dynamic> requestBody,
  }) async {
    return await performRequest(_dio.get(url, queryParameters: requestBody));
  }

  Future<Either<Glitch, Map<String, dynamic>>> post({
    @required String url,
    Map<String, dynamic> requestBody,
  }) async {
    return await performRequest(_dio.post(url, data: requestBody));
  }

  Future<Either<Glitch, Map<String, dynamic>>> performRequest(
      Future<Response<dynamic>> request) async {
    Response response;
    try {
      _dioInterceptor.intercept();
      response = await request;
      print(response);
      if (response.statusCode == 200 && response.data["status"]) {
        return right(response.data);
      } else {
        return left(ServerGlitch(message: response.data["message"]));
      }
    } on DioError catch (e) {
      print(e.toString());
      return left(ServerGlitch(message: "Internal System Failure"));
    } on Exception catch (e) {
      print(e.toString());
      return left(NetworkGlitch(message: "Internet Connection Lost"));
    }
  }
}
