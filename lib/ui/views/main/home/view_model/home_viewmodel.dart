import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';

class HomeViewModel extends ChangeNotifier {
  String name = 'John Doe';
  String image = 'assets/images/testImage.png';

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

  navigateToProfileView(BuildContext context) {
    context.navigator.pushMainView(pageNumber: 4);
  }

  navigateToLoanView(BuildContext context) {
    context.navigator.pushLoanProductView();
  }

  navigateToInvestmentView(BuildContext context) {
    context.navigator.pushMainView(pageNumber: 2);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
