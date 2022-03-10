import 'package:flutter/material.dart';
import 'package:gulliver/const.dart';
import 'package:gulliver/strings.dart';

class BuildDrawer extends StatelessWidget {
  const BuildDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _createHeader(),
          _createDrawerItem(icon: Icons.featured_play_list_sharp, text: 'Моя ЧУДОкарта', onTap: () => Navigator.pushNamed(context, '/miracleCard')),
          _createDrawerItem(icon: Icons.fastfood_outlined, text: 'Акции', onTap: () => Navigator.pushNamed(context, '/promotions')),
          _createDrawerItem(icon: Icons.redeem, text: 'Персональные предложения', onTap: () => Navigator.pushNamed(context, '/personalOffers')),
          _createDrawerItem(icon: Icons.person, text: 'Личные данные', onTap: () => Navigator.pushNamed(context, '/personalDate')),
          _createDrawerItem(icon: Icons.history, text: 'История покупок', onTap: () => Navigator.pushNamed(context, '/purchaseHistory')),
          _createDrawerItem(icon: Icons.fmd_good, text: 'Супермаркеты', onTap: () => Navigator.pushNamed(context, '/supermarkets')),
          _createDrawerItem(icon: Icons.list_alt_rounded, text: 'Списки покупок', onTap: () => Navigator.pushNamed(context, '/shoppingLists')),
          _createDrawerItem(icon: Icons.notifications, text: 'Оповещения', onTap: () => Navigator.pushNamed(context, '/alerts')),
          _createDrawerItem(icon: Icons.forum_rounded, text: 'Обратная связь', onTap: () => Navigator.pushNamed(context, '/feedBack')),
          _createDrawerItem(icon: Icons.exit_to_app_rounded, text: 'Выйти', onTap: () => Navigator.pushNamed(context, '/exit')),
        ],
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
                borderRadius: BorderRadius.circular(12),
                color: Colors.white
            ),
            child: ClipRRect(
              child: Image.asset('assets/logo.png'),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(Strings.userName,
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
        Icon(icon, color: mainColors),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(text!, style: mainTextStyle_15),
        )
      ],
    ),
    onTap: onTap,
  );
}





Drawer buildDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
         SizedBox(
          height: 150,
          child: _createHeader(),
        ),
        ListTile(
          dense: true,
          iconColor: mainColors,
          leading: const Icon(Icons.featured_play_list_sharp, size: 27),
          title: const Text('Моя ЧУДОкарта', style: mainTextStyle_15),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          dense: true,
          iconColor: mainColors,
          leading: const Icon(Icons.fastfood_outlined, size: 27),
          title: const Text('Акции', style: mainTextStyle_15),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          dense: true,
          iconColor: mainColors,
          leading: const Icon(Icons.redeem, size: 27),
          title: const Text('Персональные предложения', style: mainTextStyle_15),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          dense: true,
          iconColor: mainColors,
          leading: const Icon(Icons.person, size: 27),
          title: const Text('Личные данные', style: mainTextStyle_15),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          dense: true,
          iconColor: mainColors,
          leading: const Icon(Icons.history, size: 27),
          title: const Text('История покупок', style: mainTextStyle_15),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          dense: true,
          iconColor: mainColors,
          leading: const Icon(Icons.fmd_good, size: 27),
          title: const Text('Супермаркеты', style: mainTextStyle_15),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          dense: true,
          iconColor: mainColors,
          leading: const Icon(Icons.list_alt_rounded, size: 27),
          title: const Text('Списки покупок', style: mainTextStyle_15),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          dense: true,
          iconColor: mainColors,
          leading: const Icon(Icons.notifications, size: 27),
          title: const Text('Оповещения', style: mainTextStyle_15),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          dense: true,
          iconColor: mainColors,
          leading: const Icon(Icons.forum_rounded, size: 27),
          title: const Text('Обратная связь', style: mainTextStyle_15),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          dense: true,
          iconColor: mainColors,
          leading: const Icon(Icons.exit_to_app_rounded, size: 27),
          title: const Text('Выйти', style: mainTextStyle_15),
          onTap: () {
            Navigator.pop(context);
          },
        )
      ],
    ),
  );
}

