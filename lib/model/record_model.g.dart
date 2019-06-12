// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecordModel _$RecordModelFromJson(Map<String, dynamic> json) {
  return RecordModel(
      json['code'] as int,
      json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>));
}

Map<String, dynamic> _$RecordModelToJson(RecordModel instance) =>
    <String, dynamic>{'code': instance.code, 'data': instance.data};

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
      json['id'] as int,
      json['planId'] as int,
      json['money'] as int,
      json['isSaved'] as int,
      json['createDate'] as String,
      json['savedDate'] as String);
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'planId': instance.planId,
      'money': instance.money,
      'isSaved': instance.isSaved,
      'createDate': instance.createDate,
      'savedDate': instance.savedDate
    };
