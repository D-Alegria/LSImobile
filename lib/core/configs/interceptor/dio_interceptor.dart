import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DioInterceptor {
  final Dio dio;

  DioInterceptor(this.dio);

  void intercept() {
    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (RequestOptions options) async {
      print(
          "Sent ${options.method} Request to path: ${options.baseUrl}${options.path} with payload ${options.data ?? options.queryParameters}");
      return options; //continue
    }, onResponse: (Response response) async {
      print(
          "Received ${response.data} with status code ${response.statusCode} and message ${response.statusMessage}");
      return response; // continue
    }, onError: (DioError e) async {
      if (e.response != null) {
        print(e.response.data);
        print(e.response.headers);
        print(e.response.request);
      } else {
        print(e.request);
        print(e.message);
      }
      // switch (e.type) {
      //   case DioErrorType.CONNECT_TIMEOUT:
      //   case DioErrorType.SEND_TIMEOUT:
      //   case DioErrorType.RECEIVE_TIMEOUT:
      //     throw NetworkGlitch(message: "Connection Timed Out");
      //     break;
      //   case DioErrorType.RESPONSE:
      //     throw ServerGlitch(message: "Server failure");
      //     break;
      //   case DioErrorType.CANCEL:
      //
      //     break;
      //   case DioErrorType.DEFAULT:
      //     // TODO: Handle this case.
      //     break;
      // }
      return e;
    }));
  }
}
