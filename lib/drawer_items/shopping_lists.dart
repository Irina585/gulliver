import 'package:flutter/material.dart';

import '../strings.dart';

class ShoppingLists extends StatelessWidget {

  static const String routeName = '/shoppingLists';

  const ShoppingLists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(Strings.shoppingLists),
        ),
        body: Container()
    );
  }
}
