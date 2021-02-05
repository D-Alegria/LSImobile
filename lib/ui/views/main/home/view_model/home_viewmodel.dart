import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  int _index = 0;
  num investment = 0.00;

  int get index => _index;
  final controller =
      PageController(initialPage: 0, keepPage: true, viewportFraction: 0.98);

  String greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning';
    }
    if (hour < 17) {
      return 'Good Afternoon';
    }
    return 'Good Evening';
  }

  onChanged(int index) {
    _index = index;
    notifyListeners();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
