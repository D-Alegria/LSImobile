import 'package:intl/intl.dart';

extension DoubleExtension on double {
  String get moneyFormat {
    var moneyFormatter = new NumberFormat.currency(
      locale: "en_US",
      symbol: "₦",
    );
    return moneyFormatter.format(this);
  }
}
