import 'package:flutter/material.dart';

class KeepAlivePage extends StatefulWidget {
  final Widget child;

  const KeepAlivePage({Key key, this.child}) : super(key: key);

  @override
  _KeepAlivePageState createState() => new _KeepAlivePageState();
}

class _KeepAlivePageState extends State<KeepAlivePage>
    with AutomaticKeepAliveClientMixin<KeepAlivePage> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SafeArea(child: widget.child);
  }

  @override
  bool get wantKeepAlive => true;
}
