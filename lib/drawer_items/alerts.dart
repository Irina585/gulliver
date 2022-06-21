import 'package:flutter/material.dart';

import '../components/strings.dart';

class Alerts extends StatelessWidget {
  static const String routeName = '/alerts';

  final Function? openDrawer;

  const Alerts({Key? key, this.openDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(Strings.alerts),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                  onPressed: () {
                    openDrawer!();
                  },
                  icon: Icon(Icons.menu));
            },
          ),
        ),
        body: Container());
  }
}
