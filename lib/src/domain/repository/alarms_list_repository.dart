import 'package:flutter_pomidoro_timer/src/domain/entity/alarm_model.dart';

abstract class AlarmsListRepository {
  Future<List<AlarmModel>> getAlarmList();
  void saveAlarmList(List<AlarmModel> listAlarms);
}
