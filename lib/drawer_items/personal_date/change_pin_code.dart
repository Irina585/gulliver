import 'package:flutter/material.dart';

import '../../strings.dart';

class ChangePinCode extends StatelessWidget {

  static const String routeName = '/changePinCode';

  const ChangePinCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(Strings.changePinCode),
        ),
        body: Container()
    );
  }
}