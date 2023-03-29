import 'package:flutter_pomidoro_timer/src/data/models/alarm_list_model/alarm_model_store.dart';
import 'package:flutter_pomidoro_timer/src/domain/entity/alarm_model.dart';

class MapperAlarmModel {
  static List<AlarmModelStore> getAlarmModelsStore(List<AlarmModel> storeData) {
    List<AlarmModelStore> res = storeData
        .map((e) => AlarmModelStore(
            nameAlarm: e.nameAlarm, durationAlarm: e.durationAlarm))
        .toList();
    return res;
  }

  static List<AlarmModel> getAlarmModels(List<AlarmModelStore> storeData) {
    List<AlarmModel> res = storeData
        .map((e) =>
            AlarmModel(nameAlarm: e.nameAlarm, durationAlarm: e.durationAlarm))
        .toList();
    return res;
  }
}
