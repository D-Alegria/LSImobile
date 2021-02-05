import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

PageRoute unknownRouteView(String routeName) => MaterialPageRoute(
      builder: (context) => Scaffold(
        body: UnknownRouteView(routeName: routeName),
      ),
    );

class UnknownRouteView extends StatelessWidget {
  final String routeName;

  const UnknownRouteView({Key key, this.routeName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          "$routeName not found",
          textAlign: TextAlign.center,
          style: GoogleFonts.workSans(fontSize: 16),
        ),
      ),
    );
  }
}
