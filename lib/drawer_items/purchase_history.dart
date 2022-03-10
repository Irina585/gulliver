import 'package:flutter/material.dart';

import '../strings.dart';

class PurchaseHistory extends StatelessWidget {

  static const String routeName = '/purchaseHistory';

  const PurchaseHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(Strings.purchaseHistory),
        ),
        body: Container()
    );
  }
}
