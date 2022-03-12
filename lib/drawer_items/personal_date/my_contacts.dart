import 'package:flutter/material.dart';

import '../../const.dart';
import '../../strings.dart';

class MyContacts extends StatefulWidget {
  static const String routeName = '/my_contacts';

  const MyContacts({Key? key}) : super(key: key);

  @override
  State<MyContacts> createState() => _MyContactsState();
}

class _MyContactsState extends State<MyContacts> {

  bool _subscriptionSms = true;
  bool _subscriptionEmail = true;
  bool _subscriptionPush = true;
  bool _subscriptionViber = true;

  void onSubscriptionChange1(bool value1) {
    setState(() {
      _subscriptionSms = value1;
    });
  }
  void onSubscriptionChange2(bool value2) {
    setState(() {
      _subscriptionEmail = value2;
    });
  }
  void onSubscriptionChange3(bool value3) {
    setState(() {
      _subscriptionPush = value3;
    });
  }
  void onSubscriptionChange4(bool value4) {
    setState(() {
      _subscriptionViber = value4;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(Strings.my_contacts),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              Text(Strings.contacts, style: mainTextStyle_15),
              SizedBox(height: 20),
              _createContactItem(
                  icon: Icons.call,
                  text1: Strings.changeNumberPhone,
                  text2: Strings.numberPhone,
                  onTap: () => Navigator.pushNamed(context, '/changeNumber')),
              _createContactItem(
                  icon: Icons.email,
                  text1: Strings.changeNumberPhone,
                  text2: Strings.email,
                  onTap: () => Navigator.pushNamed(context, '/changeEmail')),
              Divider(height: 2, thickness: 2),
              SizedBox(height: 20),
              Text(Strings.managementSubscription),
              SizedBox(height: 20),
              _createSwitchItem(Icons.textsms, Strings.SMS, _subscriptionSms, onSubscriptionChange1),
              _createSwitchItem(Icons.email, Strings.Email, _subscriptionEmail, onSubscriptionChange2),
              _createSwitchItem(Icons.chat_bubble, Strings.Push, _subscriptionPush, onSubscriptionChange3),
              _createSwitchItem(Icons.phonelink_ring, Strings.Viber, _subscriptionViber, onSubscriptionChange4)
            ],
          ),
        ));
  }
}

// макет контакта
Widget _createContactItem(
    {IconData? icon, String? text1, String? text2, GestureTapCallback? onTap}) {
  return ListTile(
    dense: true,
    leading: Icon(icon, color: mainColors, size: 30),
    title: Text(text1!, style: mainTextStyle_15),
    subtitle: Text(text2!),
    onTap: onTap,
  );
}

// макет контакта
Widget _createSwitchItem(IconData? icon, String text, bool val, Function onSubscriptionChange) {

  return Padding(
    padding: const EdgeInsets.only(top: 22, left: 16, right: 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(icon, color: mainColors, size: 30),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(text, style: mainTextStyle_15),
        ),
        Spacer(),
        Switch(
            value: val,
            onChanged: (value) {
              onSubscriptionChange(value);
            }
        )
        //secondary: Icon(icon, color: mainColors, size: 30),
      ],
    ),
  );
}

