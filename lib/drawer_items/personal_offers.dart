import 'package:flutter/material.dart';

import '../presentation/cards/personal_offers_card.dart';
import '../components/strings.dart';
import '../models/personal_offers_card_model.dart';

class PersonalOffers extends StatelessWidget {
  static const String routeName = '/personalOffers';

  final Function? openDrawer;

  const PersonalOffers({Key? key, this.openDrawer}) : super(key: key);

  static const List<PersonalOffersCardModel> personal_offers =
      <PersonalOffersCardModel>[
    PersonalOffersCardModel(
      id: 1,
      picture: Strings.promotionPicNicLink,
      description: Strings.promotionPicNicDescription,
      offersPeriod: Strings.promotionPicNicPeriod,
      discount: '-20%',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.personalOffers),
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
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return PersonalOffersCard.fromModel(
              model: personal_offers[index % personal_offers.length]);
        },
      ),
    );
  }
}
