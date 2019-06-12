// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlanDetailModel _$PlanDetailModelFromJson(Map<String, dynamic> json) {
  return PlanDetailModel(
      json['msg'] as String,
      json['code'] as int,
      json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>));
}

Map<String, dynamic> _$PlanDetailModelToJson(PlanDetailModel instance) =>
    <String, dynamic>{
      'msg': instance.msg,
      'code': instance.code,
      'data': instance.data
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
      json['id'] as int,
      json['name'] as String,
      json['passDays'] as int,
      json['totalDays'] as int,
      json['savedMoney'] as int,
      json['totalMoney'] as int);
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'passDays': instance.passDays,
      'totalDays': instance.totalDays,
      'savedMoney': instance.savedMoney,
      'totalMoney': instance.totalMoney
    };
