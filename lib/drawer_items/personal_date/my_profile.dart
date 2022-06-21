import 'package:flutter/material.dart';

import '../../components/const.dart';
import '../../components/strings.dart';

class MyProfile extends StatefulWidget {

  static const String routeName = '/my_profile';

  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(Strings.profile),
        ),
        body: ListView(
          padding: EdgeInsets.zero,
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  height: 50,
                  color: Colors.grey[200],
                  child:
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('Личные данные'),
                  ),
                ),
                const SizedBox(height: 10),
                personalDateList(text: 'Фамилия*'),
                personalDateList(text: 'Имя*'),
                personalDateList(text: 'Дата рождения*'),
                personalDateList(text: 'Пол*'),
                personalDateList(text: 'Город проживания*'),
                personalDateList(text: 'Улица проживания*'),
                personalDateList(text: 'Дом'),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: () {}, child: Text(Strings.save)),
                )
              ],
            )
    );
  }
}


// макет пункта списка
Widget personalDateList({String? text}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Text(text!, textAlign: TextAlign.start,),
      ),
      const SizedBox(height: 10),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: TextField(
          keyboardType: TextInputType.name,
          autofocus: true,
          decoration: InputDecoration(
            isCollapsed: true,
            contentPadding: EdgeInsets.all(10),
            enabledBorder: borderStyle,
            focusedBorder: borderStyle,
          ),
        ),
      ),
      const SizedBox(height: 10),
      const Divider(height: 2, thickness: 2),
      const SizedBox(height: 10),
    ],

  );
}


