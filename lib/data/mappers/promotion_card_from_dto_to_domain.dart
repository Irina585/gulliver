// преобразование данных из DTO в модель
import 'package:flutter/material.dart';

import '../../models/home_promotions_model.dart';
import '../../models/promotion_model.dart';
import '../dto/home_promotion_dto.dart';
import '../dto/promotion_card_dto.dart';

extension HomeFromDTOToDomain on HomePromotionDTO {
  HomePromotionsModel toDomain() {
    return HomePromotionsModel(
      data: data?.map((PromotionCardDTO e) => e.toDomain()).toList(),
    );
  }
}

extension PromotionCardFromDTOtoDomain on PromotionCardDTO {
  PromotionCardModel toDomain() {
    return PromotionCardModel(
      id: id,
      picture: picture,
      promotionPeriod: promotionPeriod,
      description: description,
    );
  }
}
