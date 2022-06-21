

import 'package:flutter/material.dart';

import '../../models/personal_offers_card_model.dart';

class PersonalOffersCard extends StatelessWidget {
  final int? id;
  final String? picture;
  final String? offersPeriod;
  final String? description;
  final String? discount;
  const PersonalOffersCard(
      {Key? key,
        this.id,
        this.picture,
        this.description,
        this.offersPeriod,
        this.discount})
      : super(key: key);

  factory PersonalOffersCard.fromModel({
    required PersonalOffersCardModel model,
    Key? key,
  }) {
    return PersonalOffersCard(
      id: model.id,
      picture: model.picture,
      offersPeriod: model.offersPeriod,
      description: model.description,
      discount: model.discount,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black.withOpacity(0.2)),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 2))
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Stack(
              children: [
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                      child: Image.network(
                        '$picture',
                        loadingBuilder: (BuildContext context, Widget child,
                            ImageChunkEvent? loadingProgress) {
                          if (loadingProgress == null) {
                            return child;
                          }
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '$description',
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 5),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              color: Colors.grey[100],
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('$offersPeriod'),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  left: 20,
                  top: 20,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      color: Colors.yellow,
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: Text(
                          '-20%',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}