import 'package:intl/intl.dart';

extension DoubleExtension on double {
  String moneyFormat(int decimalDigits) {
    var moneyFormatter = new NumberFormat.currency(
      locale: "en_US",
      symbol: "₦",
      decimalDigits: decimalDigits,
    );
    return moneyFormatter.format(this);
  }
}
