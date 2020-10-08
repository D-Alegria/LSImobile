import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';

@lazySingleton
class ApiManager {
  final Dio dio;

  ApiManager(this.dio);

  Future<Either<Glitch, Map<String, dynamic>>> get({
    @required String url,
    Map<String, dynamic> requestBody,
  }) async {
    Response response;
    try {
      response = await dio.get(url, queryParameters: requestBody);
      if (response.statusCode == 200) {
        return right(response.data);
      } else {
        print(response);
        return left(NetworkGlitch(message: "Internet Connection Lost"));
      }
    } on Exception catch (e) {
      print(e.toString());
      return left(NetworkGlitch(message: "Internet Connection Lost"));
    }
  }

  Future<Either<Glitch, Map<String, dynamic>>> post({
    @required String url,
    Map<String, dynamic> requestBody,
  }) async {
    Response response;
    try {
      response = await dio.post(url, data: requestBody);
      if (response.statusCode == 200) {
        return right(response.data);
      } else {
        print(response);
        return left(NetworkGlitch(message: "Internet Connection Lost"));
      }
    } on DioError catch (e) {
      print(e.toString());
      if (e.response != null) {
        print(e.response.data);
        print(e.response.headers);
        print(e.response.request);
      } else {
        print(e.request);
        print(e.message);
      }
      return left(NetworkGlitch(message: "Internal System Failure"));
    } on Exception catch (e) {
      print(e.toString());
      return left(NetworkGlitch(message: "Internet Connection Lost"));
    }
  }
}
