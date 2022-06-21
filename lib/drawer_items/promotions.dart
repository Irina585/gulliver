import 'package:flutter/material.dart';
import 'package:gulliver/components/const.dart';
import 'package:gulliver/components/strings.dart';
import 'package:gulliver/models/home_promotions_model.dart';

import '../presentation/cards/promotion_card.dart';
import '../data/repositories/promotions_repository.dart';
import '../models/promotion_model.dart';

class Promotions extends StatefulWidget {
  static const String routeName = '/promotions';

  static final GlobalKey<State<StatefulWidget>> globalKey = GlobalKey();

  final Function? openDrawer;

  const Promotions({Key? key, this.openDrawer}) : super(key: key);

  @override
  State<Promotions> createState() => _PromotionsState();
}

class _PromotionsState extends State<Promotions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.promotions),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
                onPressed: () {
                  widget.openDrawer!();
                },
                icon: Icon(Icons.menu));
          },
        ),
      ),
      body: Column(
        key: Promotions.globalKey,
        children: [
          SizedBox(height: 5),
          FutureBuilder<HomePromotionsModel?>(
            future: PromotionsRepository.loadData(context),
            builder: (BuildContext context,
                AsyncSnapshot<HomePromotionsModel?> data) {
              return data.connectionState != ConnectionState.done
                  ? const Center(child: CircularProgressIndicator())
                  : data.hasData
                      ? Expanded(
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              return PromotionCard(
                                promotionCardModel: data.data?.data?[index],
                                key: ValueKey<int>(
                                    data.data?.data?[index].id ?? -1),
                              );
                            },
                            itemCount: data.data?.data?.length ?? 0,
                          ),
                        )
                      : Image.network(Query.pisecImageUrl, fit: BoxFit.cover);
            },
          ),
        ],
      ),
    );
  }
}
