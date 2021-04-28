import 'dart:convert' as convert;
import 'dart:developer';
import 'dart:io';

import 'package:catcher/catcher.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:path/path.dart';

import 'file_reader_util.dart';
import 'network_util.dart';

@lazySingleton
class ApiManager {
  final NetworkInfo _networkInfo;

  ApiManager(this._networkInfo);

  Future<Either<Glitch, Map<String, dynamic>>> get({
    @required String url,
  }) async {
    print(
        "Sent [GET] Request to path: ${FileReader.getAppConfig().baseUrl + url}");
    return await _performRequest(
      request: http.get(
        FileReader.getAppConfig().baseUrl + url,
        headers: {"x-api-key": FileReader.getAppConfig().apiKey},
      ),
    );
  }

  Future<Either<Glitch, Map<String, dynamic>>> post({
    @required String url,
    Map<String, dynamic> requestBody,
  }) async {
    print(
        "Sent [POST] Request to path: ${FileReader.getAppConfig().baseUrl + url} with payload $requestBody");
    return await _performRequest(
      request: http.post(
        FileReader.getAppConfig().baseUrl + url,
        headers: {"x-api-key": FileReader.getAppConfig().apiKey},
        body: convert.jsonEncode(requestBody),
      ),
    );
  }

  Future<Either<Glitch, Map<String, dynamic>>> postFormData({
    @required String url,
    File imageFile,
    Map<String, String> fields,
  }) async {
    try {
      // open a byteStream
      var stream = new http.ByteStream(imageFile.openRead());
      // add headers
      Map<String, String> headers = {
        "x-api-key": FileReader.getAppConfig().apiKey,
      };
      // get file length
      var length = await imageFile.length();
      // string to uri
      var uri = Uri.parse(FileReader.getAppConfig().baseUrl + url);
      // create multipart request
      var request = new http.MultipartRequest("POST", uri);
      // multipart that takes file
      var multipartFile = new http.MultipartFile('file', stream.cast(), length,
          filename: basename(imageFile.path));
      //add headers
      request.headers.addAll(headers);
      // add file to multipart
      request.files.add(multipartFile);
      // add body
      request.fields.addAll(fields);
      print(
          "Sent [POST] Request to path: ${FileReader.getAppConfig().baseUrl + url} with payload");
      return await _performRequest(request2: request.send());
    } on Error catch (error, stackTrace) {
      Catcher.reportCheckedError(error, stackTrace);
      return left(SystemGlitch(message: "Error occurred during image upload"));
    }
  }

  Future<Either<Glitch, Map<String, dynamic>>> _performRequest(
      {Future<http.Response> request,
      Future<http.StreamedResponse> request2}) async {
    try {
      if (await _networkInfo.isConnected) {
        if (request == null) {
          return await _handleStreamedResponse(request2);
        } else {
          return await _handleResponse(request);
        }
      } else {
        return left(NetworkGlitch(
            message:
                "Please connect to an active internet provider and try again."));
      }
    } on SocketException {
      return left(NetworkGlitch(message: "Unable to connect to server"));
    } on Exception catch (error, stackTrace) {
      Catcher.reportCheckedError(error, stackTrace);
      return left(NetworkGlitch(message: "No Connection Found"));
    } on Error catch (error, stackTrace) {
      Catcher.reportCheckedError(error, stackTrace);
      return left(NetworkGlitch(message: "Error Occurred"));
    }
  }

  Future<Either<Glitch, Map<String, dynamic>>> _handleStreamedResponse(
      Future<http.StreamedResponse> request2) async {
    Either<Glitch, Map<String, dynamic>> result;
    await request2.then((response) async {
      response.stream.transform(convert.utf8.decoder).listen((value) {
        var start = value.indexOf('{');
        print(value);
        var body = value.substring(start);
        var jsonResponse = convert.jsonDecode(body);
        if (response.statusCode == 200 || response.statusCode == 201) {
          result = right(jsonResponse);
        } else if (response.statusCode == 400) {
          result = left(
              ServerGlitch(message: "Error 400. Please Contact Developer."));
        } else if (response.statusCode == 403) {
          result = left(
              ServerGlitch(message: "Error 403. Please Contact Developer."));
        } else {
          result = left(ServerGlitch(
              message: jsonResponse["message"] ?? "Unknown error Message"));
        }
      });
    });
    return result;
  }

  Future<Either<Glitch, Map<String, dynamic>>> _handleResponse(
      Future<http.Response> request) async {
    http.Response response;
    response = await request;
    print(response.statusCode);
    var start = response.body.indexOf('{');
    log(response.body);
    var body = response.body.substring(start);
    var jsonResponse = convert.jsonDecode(body);
    if (response.statusCode == 200 || response.statusCode == 201) {
      return right(jsonResponse);
    } else if (response.statusCode == 400) {
      return left(
          ServerGlitch(message: "Error 400. Please Contact Developer."));
    } else if (response.statusCode == 403) {
      return left(
          ServerGlitch(message: "Error 403. Please Contact Developer."));
    } else {
      return left(ServerGlitch(
          message: jsonResponse["message"] ?? "Unknown error Message"));
    }
  }
}
