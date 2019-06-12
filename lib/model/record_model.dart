import 'package:json_annotation/json_annotation.dart';

part 'record_model.g.dart';


@JsonSerializable()
class RecordModel extends Object {

  @JsonKey(name: 'code')
  int code;

  @JsonKey(name: 'data')
  Data data;

  RecordModel(this.code,this.data,);

  factory RecordModel.fromJson(Map<String, dynamic> srcJson) => _$RecordModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$RecordModelToJson(this);

}


@JsonSerializable()
class Data extends Object {

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'planId')
  int planId;

  @JsonKey(name: 'money')
  int money;

  @JsonKey(name: 'isSaved')
  int isSaved;

  @JsonKey(name: 'createDate')
  String createDate;

  @JsonKey(name: 'savedDate')
  String savedDate;

  Data(this.id,this.planId,this.money,this.isSaved,this.createDate,this.savedDate,);

  factory Data.fromJson(Map<String, dynamic> srcJson) => _$DataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DataToJson(this);

}


