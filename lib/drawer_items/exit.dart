import 'package:flutter/material.dart';

import '../strings.dart';

class Exit extends StatelessWidget {

  static const String routeName = '/exit';

  const Exit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(Strings.exit),
        ),
        body: Container()
    );
  }
}
