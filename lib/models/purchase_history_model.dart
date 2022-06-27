class PurchaseHistoryModel {
  final int id;
  final String? date;
  final String? numCard;
  final String? nameMarket;
  final String? addressMarket;
  final double? purchasePrice;
  final double? bonusesCredited;
  final double? bonusesWrittenOff;
  final String? currency;
  final String? bonus;

  const PurchaseHistoryModel({
    required this.id,
    this.date,
    this.numCard,
    this.nameMarket,
    this.addressMarket,
    this.purchasePrice,
    this.bonusesCredited,
    this.bonusesWrittenOff,
    this.currency,
    this.bonus,
  });
}
