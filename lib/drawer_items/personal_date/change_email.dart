import 'package:flutter/material.dart';

import '../../components/const.dart';
import '../../components/strings.dart';

class ChangeEmailScreen extends StatefulWidget {
  static const String routeName = '/changeEmail';

  const ChangeEmailScreen({Key? key}) : super(key: key);

  @override
  _ChangeEmailScreenState createState() => _ChangeEmailScreenState();
}

class _ChangeEmailScreenState extends State<ChangeEmailScreen> {
  final emailTextController = TextEditingController();

  @override
  void dispose() {
    // Очищаем контроллер при удалении виджета
    emailTextController.dispose();
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
              Text(Strings.newEmail, style: mainTextStyle_17),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Icon(Icons.email, color: mainColors),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: TextField(
                    autofocus: true,
                    controller: emailTextController,
                    keyboardType: TextInputType.emailAddress,
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
                        content: Text(emailTextController.text),
                      );
                    });
              },
              child: Text(Strings.saveNumberPhone),
              style: ButtonStyle(elevation: MaterialStateProperty.all(8)))
        ],
      ),
    );
  }
}
