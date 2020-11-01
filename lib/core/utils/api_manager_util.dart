import 'dart:convert' as convert;
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/configs/interceptor/dio_interceptor.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';

import 'config_reader_util.dart';
import 'network_util.dart';

@lazySingleton
class ApiManager {
  final Dio _dio;
  final DioInterceptor _dioInterceptor;
  final NetworkInfo _networkInfo;

  ApiManager(this._dio, this._dioInterceptor, this._networkInfo);

  Future<Either<Glitch, Map<String, dynamic>>> get({
    @required String url,
  }) async {
    print(
        "Sent [GET] Request to path: ${ConfigReader.getAppConfig().baseUrl + url}");
    return await performRequest(
      http.get(
        ConfigReader.getAppConfig().baseUrl + url,
        headers: {"x-api-key": ConfigReader.getAppConfig().apiKey},
      ),
    );
  }

  Future<Either<Glitch, Map<String, dynamic>>> post({
    @required String url,
    Map<String, dynamic> requestBody,
  }) async {
    print(
        "Sent [POST] Request to path: ${ConfigReader.getAppConfig().baseUrl + url} with payload $requestBody");
    return await performRequest(
      http.post(
        ConfigReader.getAppConfig().baseUrl + url,
        headers: {"x-api-key": ConfigReader.getAppConfig().apiKey},
        body: convert.jsonEncode(requestBody),
      ),
    );
  }

  Future<Either<Glitch, Map<String, dynamic>>> performRequest(
      Future<http.Response> request) async {
    http.Response response;
    try {
      if (await _networkInfo.isConnected) {
        response = await request;
        print(response.statusCode);
        var start = response.body.indexOf('{');
        print(response.body);
        var body = response.body.substring(start);
        print(body);
        var jsonResponse = convert.jsonDecode(body);
        if (response.statusCode == 200 && jsonResponse["status"]) {
          return right(jsonResponse);
        } else if (response.statusCode == 400) {
          return left(
              ServerGlitch(message: "Error 400. Please Contact Developer."));
        } else if (response.statusCode == 403) {
          return left(
              ServerGlitch(message: "Error 403. Please Contact Developer."));
        } else {
          return left(ServerGlitch(message: jsonResponse["message"]));
        }
      } else {
        return left(NetworkGlitch(
            message:
                "Please connect to an active internet provider and try again."));
      }
    }
    // on DioError catch (e) {
    //   print(e.toString());
    //   switch (e.type) {
    //     case DioErrorType.CONNECT_TIMEOUT:
    //     case DioErrorType.SEND_TIMEOUT:
    //     case DioErrorType.RECEIVE_TIMEOUT:
    //       return left(
    //         NetworkGlitch(
    //             message: "Connection timed out. Please try again later"),
    //       );
    //       break;
    //     case DioErrorType.RESPONSE:
    //     case DioErrorType.CANCEL:
    //       return left(
    //         NetworkGlitch(
    //             message: "Unknown connection error. Please try again later"),
    //       );
    //       break;
    //     case DioErrorType.DEFAULT:
    //       return left(
    //         NetworkGlitch(
    //             message:
    //                 "Couldn't connect with server. Please try again later"),
    //       );
    //       break;
    //   }
    //   return left(NetworkGlitch(message: "Connection Error"));
    // }
    on SocketException catch (e) {
      print(e.toString());
      return left(NetworkGlitch(message: "Unable to connect to server"));
    } on Exception catch (e) {
      print(e.toString());
      return left(NetworkGlitch(message: "No Connection Found"));
    } on Error catch (e) {
      print(e.toString());
      return left(NetworkGlitch(message: "Error Occurred"));
    }
  }
}
