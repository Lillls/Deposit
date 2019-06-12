import 'package:deposit/model/record_model.dart';

import 'plan_detail_model.dart';

///这个model的钱数直接可用  不需要除100
class PlanModel {
  final PlanDetailModel planDetailModel;
  final RecordModel recordModel;

  PlanModel(this.planDetailModel, this.recordModel);
}
