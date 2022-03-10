import 'package:flutter/material.dart';

import '../strings.dart';

class Alerts extends StatelessWidget {

  static const String routeName = '/alerts';

  const Alerts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(Strings.alerts),
        ),
        body: Container()
    );
  }
}
