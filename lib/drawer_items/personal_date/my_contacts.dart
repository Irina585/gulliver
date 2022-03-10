import 'package:flutter/material.dart';

import '../../strings.dart';

class MyContacts extends StatelessWidget {

  static const String routeName = '/my_contacts';

  const MyContacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(Strings.my_contacts),
        ),
        body: Container()
    );
  }
}