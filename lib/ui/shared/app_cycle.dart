import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/core/utils/file_reader_util.dart';
import 'package:lsi_mobile/ui/views/authentication/view_model/authentication/authentication_bloc.dart';

class AppCycle extends StatefulWidget {
  final Widget child;

  const AppCycle({Key key, this.child}) : super(key: key);

  @override
  _AppCycleState createState() => _AppCycleState();
}

class _AppCycleState extends State<AppCycle> with WidgetsBindingObserver {
  final _inactivityTimeout =
      Duration(seconds: FileReader.getAppConfig().appTimeOutDurationInSec);
  Timer _keepAliveTimer;

  void _keepAlive(bool visible) {
    _keepAliveTimer?.cancel();
    if (visible) {
      _keepAliveTimer = null;
    } else {
      _keepAliveTimer = Timer(
        _inactivityTimeout,
        () {
          print("logging out ");
          context.bloc<AuthenticationBloc>().add(LogoutRequest());
          return ExtendedNavigator.root.pushAndRemoveUntil(
            Routes.authWrapper,
            (route) => false,
          );
        },
      );
    }
  }

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print('state = $state');
    switch (state) {
      case AppLifecycleState.resumed:
        _keepAlive(true);
        break;
      case AppLifecycleState.inactive:
      case AppLifecycleState.paused:
      case AppLifecycleState.detached:
        _keepAlive(false);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
