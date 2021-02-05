import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/main_common.dart';

Future<void> main() async {
  await mainCommon(Environment.dev);
}
