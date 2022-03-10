import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gulliver/const.dart';
import 'package:gulliver/drawer_items/miracle_card.dart';

import 'drawer_items/alerts.dart';
import 'drawer_items/exit.dart';
import 'drawer_items/feed_back.dart';
import 'drawer_items/personal_date/card_management.dart';
import 'drawer_items/personal_date/change_pin_code.dart';
import 'drawer_items/personal_date/go_out.dart';
import 'drawer_items/personal_date/my_contacts.dart';
import 'drawer_items/personal_date/personal_date.dart';
import 'drawer_items/personal_date/my_profile.dart';
import 'drawer_items/personal_offers.dart';
import 'drawer_items/promotions.dart';
import 'drawer_items/purchase_history.dart';
import 'drawer_items/shopping_lists.dart';
import 'drawer_items/supermarkets/supermarkets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // Портретная ориентация
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);

    return MaterialApp(
      theme: ThemeData(primarySwatch: mainColors),
      title: 'Моя ЧУДОкарта',
      initialRoute: '/miracleCard',
      routes: {
        // пункты меню
        '/miracleCard': (context) => const MiracleCard(),
        '/promotions': (context) => const Promotions(),
        '/personalOffers': (context) => const PersonalOffers(),
        '/personalDate': (context) => const PersonalDate(),
        '/purchaseHistory': (context) => const PurchaseHistory(),
        '/supermarkets': (context) => Supermarkets(),
        '/shoppingLists': (context) => const ShoppingLists(),
        '/alerts': (context) => const Alerts(),
        '/feedBack': (context) => const FeedBack(),
        '/exit': (context) => const Exit(),
        // личные данные
        '/my_profile': (context) => const MyProfile(),
        '/my_contacts': (context) => const MyContacts(),
        '/changePinCode': (context) => const ChangePinCode(),
        '/cardManagement': (context) => const CardManagement(),
        '/goOut': (context) => const GoOut(),
      },
    );
  }
}

//#FFF44336
