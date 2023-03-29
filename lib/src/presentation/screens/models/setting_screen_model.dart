import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pomidoro_timer/src/domain/services/alarms_list_service.dart';
import '../../../domain/entity/alarm_model.dart';

class SettingsScreenModel {
  final store = Modular.get<AlarmListService>();

  Future<void> saveToStoreService() async {
    final listAlarm = List<AlarmModel>.generate(10, (i) {
      return AlarmModel(
          nameAlarm: 'nameAlarm$i', durationAlarm: Duration(seconds: i + 10));
    });
    store.saveAlarmList(listAlarm);
  }

  Future<void> getFromStoreService() async {
    final res = await store.getAlarmList();
  }
}
