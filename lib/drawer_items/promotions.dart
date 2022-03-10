import 'package:flutter/material.dart';
import 'package:gulliver/strings.dart';

class Promotions extends StatelessWidget {

  static const String routeName = '/promotions';

  const Promotions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(Strings.promotions),
        ),
        body: Container()
    );
  }
}
