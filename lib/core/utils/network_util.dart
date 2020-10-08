import 'dart:io';

import 'package:injectable/injectable.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

@LazySingleton(as: NetworkInfo)
class NetworkInfoImpl implements NetworkInfo {
  @override
  Future<bool> get isConnected async {
    bool result;

    try {
      final list = await InternetAddress.lookup('example.com');
      if (list.isNotEmpty && list[0].rawAddress.isNotEmpty) {
        result = true;
        print('CONNECTED!');
      }
    } on SocketException catch (_) {
      print('NOT CONNECTED!');
      result = false;
      return result;
    }

    return result;
  }
}
