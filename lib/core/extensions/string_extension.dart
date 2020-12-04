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

  bool get isValuePhoneNo {
    // todo update phone no
    if (this.length == 11) return true;
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
