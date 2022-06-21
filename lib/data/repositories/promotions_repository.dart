import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:gulliver/components/const.dart';
import 'package:gulliver/components/error_dialog.dart';
import 'package:gulliver/data/dto/promotion_card_dto.dart';
import 'package:gulliver/data/mappers/promotion_card_from_dto_to_domain.dart';
import 'package:gulliver/models/promotion_model.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../models/home_promotions_model.dart';
import '../dto/home_promotion_dto.dart';

class PromotionsRepository {
  static final Dio _dio = Dio()
    ..interceptors.add(PrettyDioLogger(requestHeader: true, requestBody: true));

  static Future<HomePromotionsModel?> loadData(BuildContext context) async {
    try {
      //выполняем запрос
      const String url = Query.baseUrl;
      final Response<dynamic> response =
          await _dio.get<Map<dynamic, dynamic>>(url);

      //парсим дто
      final HomePromotionDTO dto =
          HomePromotionDTO.fromJson(response.data as Map<String, dynamic>);
      final HomePromotionsModel model = dto.toDomain();
      return model;
    } on DioError catch (error) {
      //при ошибке покажем её в диалоге
      final statusCode = error.response?.statusCode;
      showErrorDialog(error: statusCode?.toString() ?? '');
      return null;
    }
  }
}
