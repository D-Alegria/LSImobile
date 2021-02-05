import 'package:catcher/catcher.dart';
import 'package:dartz/dartz.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/dto/value/value.dart';

Future<Either<Glitch, T>> tryMethod<T>({
  Future<Either<Glitch, T>> Function() function,
  String errorMessage,
}) async {
  try {
    return await function();
  } on Exception catch (error, stackTrace) {
    print(error);
    print(stackTrace);
    Catcher.reportCheckedError(error, stackTrace);
    return left(SystemGlitch(message: errorMessage));
  } on Error catch (error, stackTrace) {
    print(error);
    print(stackTrace);
    Catcher.reportCheckedError(error, stackTrace);
    return left(SystemGlitch(message: errorMessage));
  }
}

T tryLocalMethod<T>({T Function() function}) {
  try {
    return function();
  } on Exception catch (error, stackTrace) {
    print(error);
    print(stackTrace);
    Catcher.reportCheckedError(error, stackTrace);
    return null;
  } on Error catch (error, stackTrace) {
    print(error);
    print(stackTrace);
    Catcher.reportCheckedError(error, stackTrace);
    return null;
  }
}

String nullCheck(String value, List<Value> list) {
  if (value == null) return null;
  if (list.where((e) => e.id == value).isEmpty) return null;
  return value;
}
