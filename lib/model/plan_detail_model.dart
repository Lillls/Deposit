import 'package:json_annotation/json_annotation.dart';

part 'plan_detail_model.g.dart';


@JsonSerializable()
class PlanDetailModel extends Object {

  @JsonKey(name: 'msg')
  String msg;

  @JsonKey(name: 'code')
  int code;

  @JsonKey(name: 'data')
  Data data;

  PlanDetailModel(this.msg,this.code,this.data,);

  factory PlanDetailModel.fromJson(Map<String, dynamic> srcJson) => _$PlanDetailModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PlanDetailModelToJson(this);

}


@JsonSerializable()
class Data extends Object {

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'passDays')
  int passDays;

  @JsonKey(name: 'totalDays')
  int totalDays;

  @JsonKey(name: 'savedMoney')
  int savedMoney;

  @JsonKey(name: 'totalMoney')
  int totalMoney;

  Data(this.id,this.name,this.passDays,this.totalDays,this.savedMoney,this.totalMoney,);

  factory Data.fromJson(Map<String, dynamic> srcJson) => _$DataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DataToJson(this);

}


