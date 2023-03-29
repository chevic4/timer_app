import 'package:flutter_pomidoro_timer/src/domain/repository/alarms_list_repository.dart';
import '../entity/alarm_model.dart';

class AlarmListService implements AlarmsListRepository {
  AlarmsListRepository store;
  AlarmListService({required this.store});

  @override
  Future<List<AlarmModel>> getAlarmList() async {
    final result = await store.getAlarmList();
    return result;
  }

  @override
  Future<void> saveAlarmList(List<AlarmModel> listAlarms) async {
    store.saveAlarmList(listAlarms);
  }
}
