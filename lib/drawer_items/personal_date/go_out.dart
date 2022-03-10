import 'package:flutter/material.dart';

import '../../strings.dart';

class GoOut extends StatelessWidget {

  static const String routeName = '/goOut';

  const GoOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(Strings.goOut),
        ),
        body: Container()
    );
  }
}