import 'package:flutter/material.dart';

import '../strings.dart';

class PersonalOffers extends StatelessWidget {

  static const String routeName = '/personalOffers';

  const PersonalOffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(Strings.personalOffers),
        ),
        body: Container()
    );
  }
}
