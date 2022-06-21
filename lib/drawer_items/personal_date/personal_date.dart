import 'package:flutter/material.dart';

import '../../components/const.dart';
import '../../components/strings.dart';

class PersonalDate extends StatelessWidget {
  static const String routeName = '/personalDate';

  final Function? openDrawer;

  const PersonalDate({Key? key, this.openDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(Strings.personalDate),
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
                text: Strings.my_contacts,
                onTap: () => Navigator.pushNamed(context, '/my_contacts')),
            const SizedBox(height: 20),
            _createItemListPersonalData(
                icon: Icons.password,
                text: Strings.changePinCode,
                onTap: () => Navigator.pushNamed(context, '/changePinCode')),
            const SizedBox(height: 20),
            _createItemListPersonalData(
                icon: Icons.credit_card,
                text: Strings.cardManagement,
                onTap: () => Navigator.pushNamed(context, '/cardManagement')),
            const SizedBox(height: 20),
            _createItemListPersonalData(
                icon: Icons.exit_to_app_rounded,
                text: Strings.goOut,
                onTap: () => Navigator.pushNamed(context, '/goOut')),
          ],
        ));
  }
}

// макет пункта списка
Widget _createItemListPersonalData(
    {IconData? icon, String? text, GestureTapCallback? onTap}) {
  return ListTile(
    dense: true,
    leading: Icon(icon, color: mainColors, size: 30),
    title: Text(text!, style: mainTextStyle_15),
    onTap: onTap,
  );
}
