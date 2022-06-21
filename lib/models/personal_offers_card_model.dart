class PersonalOffersCardModel {
  final int? id;
  final String? picture;
  final String? offersPeriod;
  final String? description;
  final String? discount;

  const PersonalOffersCardModel({
    this.id,
    this.picture = '',
    this.offersPeriod = '',
    this.description = '',
    this.discount,
  });
}