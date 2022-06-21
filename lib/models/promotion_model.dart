class PromotionCardModel {
  final int id;
  final String? picture;
  final String? promotionPeriod;
  final String? description;

  const PromotionCardModel({
    required this.id,
    this.picture = '',
    this.promotionPeriod = '',
    this.description = '',
  });
}
