// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'salafiya_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SalafiyaModel _$SalafiyaModelFromJson(Map<String, dynamic> json) =>
    _SalafiyaModel(
      id: json['id'] as String,
      name: json['name'] as String,
      adminName: json['adminName'] as String,
      adminPhone: json['adminPhone'] as String,
      monthlyAmount: (json['monthlyAmount'] as num).toDouble(),
      totalAmount: (json['totalAmount'] as num).toDouble(),
      startDate: DateTime.parse(json['startDate'] as String),
      inviteCode: json['inviteCode'] as String,
      themeColor: json['themeColor'] as String,
      icon: json['icon'] as String?,
      status:
          $enumDecodeNullable(_$SalafiyaStatusEnumMap, json['status']) ??
          SalafiyaStatus.active,
      notes: json['notes'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$SalafiyaModelToJson(_SalafiyaModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'adminName': instance.adminName,
      'adminPhone': instance.adminPhone,
      'monthlyAmount': instance.monthlyAmount,
      'totalAmount': instance.totalAmount,
      'startDate': instance.startDate.toIso8601String(),
      'inviteCode': instance.inviteCode,
      'themeColor': instance.themeColor,
      'icon': instance.icon,
      'status': _$SalafiyaStatusEnumMap[instance.status]!,
      'notes': instance.notes,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$SalafiyaStatusEnumMap = {
  SalafiyaStatus.active: 'active',
  SalafiyaStatus.completed: 'completed',
};
