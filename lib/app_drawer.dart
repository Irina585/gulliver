import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'components/const.dart';
import 'components/strings.dart';
import 'drawer_items/alerts.dart';
import 'drawer_items/exit.dart';
import 'drawer_items/feed_back.dart';
import 'drawer_items/miracle_card.dart';
import 'drawer_items/personal_date/personal_date.dart';
import 'drawer_items/personal_offers.dart';
import 'drawer_items/promotions.dart';
import 'drawer_items/purchase_history.dart';
import 'drawer_items/shopping_lists/shopping_lists.dart';
import 'drawer_items/supermarkets.dart';

class AppDrawer extends StatefulWidget {
  static const String routeName = '/';

  const AppDrawer({Key? key}) : super(key: key);

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  openDrawer() {
    _drawerKey.currentState?.openDrawer();
  }

  Widget _screens(int index) {
    List temp = <Widget>[
      MiracleCard(openDrawer: openDrawer),
      Promotions(openDrawer: openDrawer),
      PersonalOffers(openDrawer: openDrawer),
      PersonalDate(openDrawer: openDrawer),
      PurchaseHistory(openDrawer: openDrawer),
      Supermarkets(openDrawer: openDrawer),
      ShoppingLists(openDrawer: openDrawer),
      Alerts(openDrawer: openDrawer),
      FeedBack(openDrawer: openDrawer),
      Exit(openDrawer: openDrawer),
    ];
    return temp[index];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      body: _screens(_selectedIndex),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            _createHeader(),
            _createDrawerItem(
              text: 'Моя ЧУДОкарта',
              icon: Icons.featured_play_list_sharp,
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context);
              },
            ),
            _createDrawerItem(
              icon: Icons.fastfood_outlined,
              text: 'Акции',
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context);
              },
            ),
            _createDrawerItem(
              icon: Icons.redeem,
              text: 'Персональные предложения',
              onTap: () {
                _onItemTapped(2);
                Navigator.pop(context);
              },
            ),
            _createDrawerItem(
              icon: Icons.person,
              text: 'Личные данные',
              onTap: () {
                _onItemTapped(3);

                Navigator.pop(context);
              },
            ),
            _createDrawerItem(
              icon: Icons.history,
              text: 'История покупок',
              onTap: () {
                _onItemTapped(4);
                Navigator.pop(context);
              },
            ),
            _createDrawerItem(
              icon: Icons.fmd_good,
              text: 'Супермаркеты',
              onTap: () {
                _onItemTapped(5);
                Navigator.pop(context);
              },
            ),
            _createDrawerItem(
              icon: Icons.list_alt_rounded,
              text: 'Списки покупок',
              onTap: () {
                _onItemTapped(6);
                Navigator.pop(context);
              },
            ),
            _createDrawerItem(
              icon: Icons.notifications,
              text: 'Оповещения',
              onTap: () {
                _onItemTapped(7);
                Navigator.pop(context);
              },
            ),
            _createDrawerItem(
              icon: Icons.forum_rounded,
              text: 'Обратная связь',
              onTap: () {
                _onItemTapped(8);
                Navigator.pop(context);
              },
            ),
            _createDrawerItem(
              icon: Icons.exit_to_app_rounded,
              text: 'Выйти',
              onTap: () {
                _onItemTapped(9);
                SystemChannels.platform.invokeMethod('SystemNavigator.pop');
              },
            )
          ],
        ),
      ),
    );
  }
}

// заголовок
DrawerHeader _createHeader() {
  return DrawerHeader(
      child: Row(
        children: [
          Container(
            width: 65,
            height: 65,
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.white),
            child: ClipRRect(
              child: Image.asset('assets/logo.png'),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  Strings.userName,
                  style: headerTextStyle,
                ),
                Text('У Вас 1 489.00 бонусов', style: headerTextStyle)
              ],
            ),
          ),
        ],
      ),
      decoration: const BoxDecoration(
        color: mainColors,
      ));
}

// макет пункта меню
Widget _createDrawerItem(
    {IconData? icon, String? text, GestureTapCallback? onTap}) {
  return ListTile(
    dense: true,
    title: Row(
      children: [
        Icon(
          icon,
          color: mainColors,
          size: 27,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(text!, style: mainTextStyle_15),
        )
      ],
    ),
    onTap: onTap,
  );
}
