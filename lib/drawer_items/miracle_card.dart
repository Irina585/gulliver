import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gulliver/components/const.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:gulliver/components/strings.dart';

// Моя ЧУДОкарта

class MiracleCard extends StatelessWidget {
  static const String routeName = '/miracleCard';

  final Function? openDrawer;

  const MiracleCard({
    Key? key,
    this.openDrawer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.miracleCard),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          miracleCard,
          paySection,
          cardBalance,
          Padding(
            padding:
                const EdgeInsets.only(top: 15, left: 8, right: 8, bottom: 8),
            child: Column(
              children: [
                Row(
                  children: const [
                    Expanded(
                        child:
                            Text('Категория карты:', style: forwardTextStyle)),
                    Text('Карта сотрудника',
                        style: TextStyle(fontSize: 16, color: Colors.red))
                  ],
                ),
                Divider(
                  color: Colors.grey[300],
                  height: 20,
                  thickness: 1,
                  indent: 10,
                  endIndent: 10,
                ),
                Row(
                  children: const [
                    Expanded(
                      child: Text(
                        'Текущий % начисления:',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Text('7%',
                        style: TextStyle(fontSize: 18, color: Colors.red))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget miracleCard = Container(
  margin: const EdgeInsets.only(top: 12, left: 8, right: 8, bottom: 8),
  child: Image.asset('assets/chudokarta.png'),
);

Widget paySection = Container(
  decoration: BoxDecoration(
      color: Colors.grey[200], borderRadius: BorderRadius.circular(12)),
  margin: const EdgeInsets.only(left: 8, right: 8),
  height: 175,
  child: Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 15, left: 8, right: 8, bottom: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Expanded(
              child: Text(
                'Данные карты',
                style: forwardTextStyle,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text('GPay'),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.orange[200])),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 8, left: 20, right: 20, bottom: 10),
            child: SizedBox(
              child: BarcodeWidget(
                barcode: Barcode.code128(),
                data: '5845 3647 9615 2088',
                style: mainTextStyle_15,
              ),
            ),
          ),
        ),
      )
    ],
  ),
);

Widget cardBalance = Container(
  decoration: BoxDecoration(
      color: Colors.grey[200], borderRadius: BorderRadius.circular(12)),
  margin: const EdgeInsets.only(top: 8, left: 8, right: 8),
  height: 130,
  child: Padding(
    padding: const EdgeInsets.only(top: 15, left: 8, right: 8, bottom: 8),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text('Баланс карты', style: forwardTextStyle),
          ],
        ),
        const SizedBox(height: 17),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Expanded(child: Text('Бонусы', style: balanceTextStyle)),
            Text('1 489.00',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
          ],
        ),
        const SizedBox(height: 17),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Expanded(child: Text('Бонусы детские', style: balanceTextStyle)),
            Text('0.00',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
          ],
        ),
      ],
    ),
  ),
);
