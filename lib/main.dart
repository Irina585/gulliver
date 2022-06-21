import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gulliver/components/const.dart';
import 'app_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Портретная ориентация
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return MaterialApp(
        theme: ThemeData(primarySwatch: mainColors),
        title: 'Моя ЧУДОкарта',
        initialRoute: '/',
        onGenerateRoute: (RouteSettings settings) {
          if (settings.name == AppDrawer.routeName) {
            return MaterialPageRoute(
              builder: (context) {
                return const AppDrawer();
              },
            );
          }
        });
  }
}

//#FFF44336
