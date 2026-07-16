import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enums/salafiya_status.dart';

part 'salafiya_model.freezed.dart';
part 'salafiya_model.g.dart';

@freezed
abstract class SalafiyaModel with _$SalafiyaModel {
  const factory SalafiyaModel({
    required String id,

    required String name,

    required String adminName,

    required String adminPhone,

    required double monthlyAmount,

    required double totalAmount,

    required DateTime startDate,

    required String inviteCode,

    required String themeColor,

    String? icon,

    @Default(SalafiyaStatus.active) SalafiyaStatus status,

    String? notes,

    required DateTime createdAt,

    required DateTime updatedAt,
  }) = _SalafiyaModel;

  factory SalafiyaModel.fromJson(Map<String, dynamic> json) =>
      _$SalafiyaModelFromJson(json);
}
