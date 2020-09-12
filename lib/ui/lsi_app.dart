import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/ui/exception/unknown_route_view.dart';

class LSIApp extends StatelessWidget {
  const LSIApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: ExtendedNavigator.builder<Router>(
        router: Router(),
        onUnknownRoute: (settings) => unknownRouteView(settings.name),
      ),
      home: Container(
        child: Center(
          child: Text('Start'),
        ),
      ),
    );
  }
}
