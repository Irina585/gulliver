import 'package:flutter/material.dart';

import '../../strings.dart';

class CardManagement extends StatelessWidget {

  static const String routeName = '/cardManagement';

  const CardManagement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(Strings.cardManagement),
        ),
        body: Container()
    );
  }
}