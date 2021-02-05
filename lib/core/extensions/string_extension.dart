extension StringExtension on String {
  String get capitalize {
    if (this == null || this.isEmpty) return this;
    var list = this.split(' ');
    list.removeWhere((element) => element.isEmpty);
    return list
        .map((e) => '${e[0].toUpperCase()}${e.substring(1).toLowerCase()}')
        .join(' ');
  }

  bool get isEmail {
    const emailRegex =
        r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
    if (RegExp(emailRegex).hasMatch(this)) return true;
    return false;
  }

  bool get isPhoneNo {
    final phoneNumberRegex = RegExp(r'^(\+)?([2][3][4]|[0])\d{10}$');
    if (phoneNumberRegex.hasMatch(this)) return true;
    return false;
  }

  bool get isDigit {
    final isDigitRegex = RegExp(r'^[0-9]*$');
    if (isDigitRegex.hasMatch(this)) return true;
    return false;
  }

  bool get isValidPassword {
    if (this.length > 5) return true;
    return false;
  }

  bool get isBvn {
    if (this.length == 11) return true;
    return false;
  }
}
