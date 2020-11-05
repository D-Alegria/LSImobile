
extension StringExtension on String {
  String get capitalize {
    if (this == null || this.isEmpty) return this;
    return '${this[0].toUpperCase()}${this.substring(1).toLowerCase()}';
  }

  bool get isEmail {
    const emailRegex =
        r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
    if (RegExp(emailRegex).hasMatch(this)) return true;
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
