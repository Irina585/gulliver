import 'package:json_annotation/json_annotation.dart';

part 'promotion_card_dto.g.dart';

@JsonSerializable()
class PromotionCardDTO {
  @JsonKey(name: 'id', defaultValue: 0)
  final int id;
  @JsonKey(name: 'avatar')
  final String picture;
  @JsonKey(name: 'last_name')
  final String promotionPeriod;
  @JsonKey(name: 'email')
  final String description;

  PromotionCardDTO({
    required this.id,
    this.picture = '',
    this.promotionPeriod = '',
    this.description = '',
  });

  factory PromotionCardDTO.fromJson(Map<String, dynamic> json) =>
      _$PromotionCardDTOFromJson(json);
}
