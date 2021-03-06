import 'package:flutter/material.dart';

import '../const.dart';
import '../strings.dart';
import '../utils.dart';

class FeedBack extends StatelessWidget {
  static const String routeName = '/feedBack';

  const FeedBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(Strings.feedBack),
        ),
        body: Column(
          children: [
            Image.asset('assets/feed_back.jpeg'),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Text(Strings.feed_back_text,
                      style: mainTextStyle_17, textAlign: TextAlign.center),
                  SizedBox(height: 20),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () =>
                            UtilsFeedBack.openPhoneCall(phoneNumber: '+79278147106'),
                        child: Text(Strings.feed_back_call),
                        style: ButtonStyle(
                            elevation: MaterialStateProperty.all(8)),
                      )),
                  SizedBox(height: 10),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () => UtilsFeedBack.openEmail(
                            toEmail: 'irina.pro84@mail.ru',
                            subject: 'Hello, World',
                            body: 'This works great!'
                          ),
                          child: Text(Strings.feed_back_write),
                          style: ButtonStyle(
                              elevation: MaterialStateProperty.all(8))))
                ],
              ),
            ),
          ],
        ));
  }
}
