import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gulliver/presentation/cards/product_card.dart';

import '../../models/purchase_history_model.dart';
import '../../components/widgets/custom_expansion_tile.dart';
import '../../models/product_model.dart';

class PurchaseHistoryCard extends StatelessWidget {
  final int? id;
  final String? date;
  final String? numCard;
  final String? nameMarket;
  final String? addressMarket;
  final double? purchasePrice;
  final double? bonusesCredited;
  final double? bonusesWrittenOff;
  final String? currency;
  final String? bonus;
  const PurchaseHistoryCard({
    Key? key,
    this.id,
    this.date,
    this.numCard,
    this.nameMarket,
    this.addressMarket,
    this.purchasePrice,
    this.bonusesCredited,
    this.bonusesWrittenOff,
    this.currency,
    this.bonus,
  }) : super(key: key);

  factory PurchaseHistoryCard.fromModel({
    required PurchaseHistoryModel model,
    Key? key,
  }) {
    return PurchaseHistoryCard(
      id: model.id,
      date: model.date,
      numCard: model.numCard,
      nameMarket: model.nameMarket,
      addressMarket: model.addressMarket,
      purchasePrice: model.purchasePrice,
      bonusesCredited: model.bonusesCredited,
      bonusesWrittenOff: model.bonusesWrittenOff,
      currency: model.currency,
      bonus: model.bonus,
    );
  }

  static const List<ProductModel> product = <ProductModel>[
    ProductModel(
      id: 1,
      name: 'Багет французский',
      weight: 200,
      volume: 'г',
      count: 1,
      unit: 'шт',
      price: 35.99,
      currency: 'руб',
    ),
    ProductModel(
      id: 2,
      name: 'Картофель молодой',
      weight: 1.25,
      volume: 'кг',
      count: 1,
      unit: 'шт',
      price: 78.74,
      currency: 'руб',
    ),
    ProductModel(
      id: 3,
      name: 'Пакет Гулливер большой',
      weight: 200,
      volume: 'г',
      count: 1,
      unit: 'шт',
      price: 6.99,
      currency: 'руб',
    ),
    ProductModel(
      id: 4,
      name: 'Хлеб УЛЬЯНХЛЕБПРОМ Пастуший формовой половинка',
      weight: 350,
      volume: 'г',
      count: 1,
      unit: 'шт',
      price: 24.99,
      currency: 'руб',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 2,
                  offset: const Offset(0, 0.5))
            ]),
        child: CustomExpansionTile(
          title: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 7),
                Text('$date',
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 10)),
                SizedBox(height: 5),
                Text('$numCard',
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.w400)),
                SizedBox(height: 10),
                Text('$nameMarket', style: TextStyle(fontSize: 17)),
                SizedBox(height: 3),
                Row(
                  children: [
                    Icon(
                      Icons.place_outlined,
                    ),
                    Text('$addressMarket',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400)),
                  ],
                ),
                SizedBox(height: 7),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    _buildPriceColumn('$purchasePrice', '$currency'),
                    Spacer(),
                    _buildBonusPlusColumn('$bonusesCredited', '$bonus'),
                    Spacer(),
                    _buildBonusMinusColumn('$bonusesWrittenOff', '$bonus'),
                  ],
                ),
              ],
            ),
          ),
          //subtitle: Text('$nameMarket'),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                    product.length,
                    (index) => ProductCard.fromModel(
                          model: product[index],
                        )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Column _buildPriceColumn(String counter, String volume) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        counter,
        style: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
      ),
      Text(
        volume,
        style: const TextStyle(
            fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
      )
    ],
  );
}

Column _buildBonusPlusColumn(String counter, String volume) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        counter,
        style: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.w600, color: Colors.yellow),
      ),
      Text(
        volume,
        style: const TextStyle(
            fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
      )
    ],
  );
}

Column _buildBonusMinusColumn(String counter, String volume) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        counter,
        style: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.w600, color: Colors.red),
      ),
      Text(
        volume,
        style: const TextStyle(
            fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
      )
    ],
  );
}
