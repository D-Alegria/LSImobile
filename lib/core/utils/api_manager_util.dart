import 'dart:convert' as convert;
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';

import 'config_reader_util.dart';
import 'network_util.dart';

@lazySingleton
class ApiManager {
  final NetworkInfo _networkInfo;

  ApiManager(this._networkInfo);

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
        var jsonResponse = convert.jsonDecode(body);
        if ((response.statusCode == 200 || response.statusCode == 201) &&
            (jsonResponse["status"] ?? true)) {
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
    } on SocketException catch (e) {
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
