import 'package:dartz/dartz.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/dto/value/value.dart';

Future<Either<Glitch, T>> tryMethod<T>({
  Future<Either<Glitch, T>> Function() function,
  String errorMessage,
}) async {
  try {
    return await function();
  } on Exception catch (e) {
    print(e);
    return left(ServerGlitch(message: errorMessage));
  } on Error catch (e) {
    print(e);
    print(e.stackTrace);
    return left(ServerGlitch(message: errorMessage));
  }
}

String nullCheck(String value, List<Value> list) {
  if (value == null) return null;
  if (list.where((e) => e.id == value).isEmpty) return null;
  return value;
}
