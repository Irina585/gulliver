import 'package:flutter/material.dart';

import '../../const.dart';
import '../../strings.dart';

class PersonalDate extends StatelessWidget {
  static const String routeName = '/personalDate';

  const PersonalDate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(Strings.personalDate),
        ),
        body: ListView(
          children: [
            const SizedBox(height: 10),
            ListTile(
              leading: const Icon(Icons.person, size: 40, color: mainColors),
              title: const Text(Strings.my_profile),
              subtitle: const Text(Strings.userName),
              onTap: () => Navigator.pushNamed(context, '/my_profile'),
            ),
            const SizedBox(height: 20),
            _createItemListPersonalData(
                icon: Icons.contacts,
                text_1: Strings.my_contacts,
                onTap: () => Navigator.pushNamed(context, '/my_contacts')),
            const SizedBox(height: 20),
            _createItemListPersonalData(
                icon: Icons.password,
                text_1: Strings.changePinCode,
                onTap: () => Navigator.pushNamed(context, '/changePinCode')),
            const SizedBox(height: 20),
            _createItemListPersonalData(
                icon: Icons.credit_card,
                text_1: Strings.cardManagement,
                onTap: () => Navigator.pushNamed(context, '/cardManagement')),
            const SizedBox(height: 20),
            _createItemListPersonalData(
                icon: Icons.exit_to_app_rounded,
                text_1: Strings.goOut,
                onTap: () => Navigator.pushNamed(context, '/goOut')),
          ],
        ));
  }
}

// макет пункта списка
Widget _createItemListPersonalData({IconData? icon,
  String? text_1,
  GestureTapCallback? onTap}) {
  return ListTile(
    dense: true,
    leading: Icon(icon, color: mainColors, size: 30),
    title: Text(text_1!, style: mainTextStyle_15),
    onTap: onTap,
  );
}


