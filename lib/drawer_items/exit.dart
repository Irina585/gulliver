import 'package:flutter/material.dart';

import '../components/strings.dart';

class Exit extends StatelessWidget {
  static const String routeName = '/exit';

  final Function? openDrawer;

  const Exit({Key? key, this.openDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(Strings.exit),
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
