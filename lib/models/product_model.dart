class ProductModel {
  final int id;
  final String? name;
  final double? weight;
  final String? volume;
  final double? count;
  final String? unit;
  final double? price;
  final String? currency;

  const ProductModel({
    required this.id,
    this.name = '',
    this.weight = 0,
    this.volume = '',
    this.count = 0,
    this.unit = '',
    this.price = 0,
    this.currency = '',
  });
}
