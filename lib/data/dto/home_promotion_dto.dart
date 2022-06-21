import 'package:gulliver/data/dto/promotion_card_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'home_promotion_dto.g.dart';

@JsonSerializable()
class HomePromotionDTO {
  @JsonKey(name: 'data')
  final List<PromotionCardDTO>? data;

  HomePromotionDTO({
    this.data,
  });

  factory HomePromotionDTO.fromJson(Map<String, dynamic> json) =>
      _$HomePromotionDTOFromJson(json);
}
