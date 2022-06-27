import 'package:flutter/material.dart';

import '../components/strings.dart';
import '../models/purchase_history_model.dart';
import '../presentation/cards/purchase_history_card.dart';

class PurchaseHistory extends StatelessWidget {
  static const String routeName = '/purchaseHistory';

  final Function? openDrawer;

  const PurchaseHistory({Key? key, this.openDrawer}) : super(key: key);

  static const List<PurchaseHistoryModel> purchase = <PurchaseHistoryModel>[
    PurchaseHistoryModel(
      id: 1,
      date: '15:22 18.06.2022',
      numCard: '5845 3647 9615 2088',
      nameMarket: 'Гурман',
      addressMarket: 'г. Ульяновск, ул. Орлова, 18',
      purchasePrice: 764.18,
      bonusesCredited: 53.5,
      bonusesWrittenOff: -148.47,
      currency: 'Рубля',
      bonus: 'Бонуса',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(Strings.purchaseHistory),
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
        body: ListView.builder(itemBuilder: (BuildContext context, int index) {
          return PurchaseHistoryCard.fromModel(
              model: purchase[index % purchase.length]);
        }));
  }
}
