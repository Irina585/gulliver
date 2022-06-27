import 'package:flutter/cupertino.dart';

import '../../models/product_model.dart';

class ProductCard extends StatelessWidget {
  final int? id;
  final String? name;
  final double? weight;
  final String? volume;
  final double? count;
  final String? unit;
  final double? price;
  final String? currency;
  const ProductCard({
    Key? key,
    this.id,
    this.name = '',
    this.weight = 0,
    this.volume = '',
    this.count = 0,
    this.unit = '',
    this.price = 0,
    this.currency = '',
  }) : super(key: key);

  factory ProductCard.fromModel({
    required ProductModel model,
    Key? key,
  }) {
    return ProductCard(
      id: model.id,
      name: model.name,
      weight: model.weight,
      volume: model.volume,
      count: model.count,
      unit: model.unit,
      price: model.price,
      currency: model.currency,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          flex: 5,
          child: Text(
            '$name $weight$volume $count$unit ',
            softWrap: true,
            style: TextStyle(fontSize: 12),
          ),
        ),
        Text(
          '$price$currency',
          style: TextStyle(fontSize: 12, overflow: TextOverflow.ellipsis),
        ),
      ],
    );
  }
}
