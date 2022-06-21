import 'package:flutter/material.dart';

import '../components/strings.dart';

class PurchaseHistory extends StatelessWidget {
  static const String routeName = '/purchaseHistory';

  final Function? openDrawer;

  const PurchaseHistory({Key? key, this.openDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(Strings.purchaseHistory),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                  onPressed: () {
                    openDrawer!();
                  },
                  icon: Icon(Icons.menu));
            },
          ),
        ),
        body: Container());
  }
}
