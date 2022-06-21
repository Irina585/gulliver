import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import '../../components/strings.dart';

class ShoppingLists extends StatelessWidget {
  static const String routeName = '/shoppingLists';

  final Function? openDrawer;

  const ShoppingLists({Key? key, this.openDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(Strings.shoppingLists),
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
        body: Column(
          children: [
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/addShoppingLists'),
              child: Card(
                  child: Column(
                children: [
                  Badge(
                    child: Icon(Icons.shopping_cart,
                        color: Colors.yellow[700], size: 50),
                    badgeContent:
                        Text('3', style: TextStyle(color: Colors.white)),
                    position: BadgePosition.topEnd(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Купить в Гулливере')
                ],
              )),
            )
          ],
        ));
  }
}
