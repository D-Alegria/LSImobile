import 'package:flutter_test/flutter_test.dart';
import 'package:lsi_mobile/ui/lsi_app_dev.dart';

void main() {
  testWidgets('App should run', (WidgetTester tester) async {
    await tester.pumpWidget(LSIAppDev());
  });
}
