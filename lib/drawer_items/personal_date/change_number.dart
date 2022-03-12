import 'package:flutter/material.dart';

import '../../const.dart';
import '../../strings.dart';

class ChangeNumberScreen extends StatefulWidget {

  static const String routeName = '/changeNumber';

  const ChangeNumberScreen({Key? key}) : super(key: key);

  @override
  State<ChangeNumberScreen> createState() => _ChangeNumberScreenState();
}

class _ChangeNumberScreenState extends State<ChangeNumberScreen> {

  final numberPhoneTextController = TextEditingController();

  @override
  void dispose() {
    // Очищаем контроллер при удалении виджета
    numberPhoneTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.changeNumber),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(Strings.newNumberPhone, style: mainTextStyle_17),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Icon(Icons.call, color: mainColors),
                SizedBox(width: 20,),
                Text('+7', style: mainTextStyle_17),
                Expanded(
                  child: TextField(
                    autofocus: true,
                    controller: numberPhoneTextController,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      isCollapsed: true,
                      contentPadding: EdgeInsets.all(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text(numberPhoneTextController.text),
                      );
                    }
                );
              },
              child: Text(Strings.saveNumberPhone),
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all(8)))
        ],
      ),
    );
  }
}
