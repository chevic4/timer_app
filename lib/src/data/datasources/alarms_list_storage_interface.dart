import '../models/alarm_list_model/alarm_model_store.dart';

abstract class AlarmsListStorage {
  Future<List<AlarmModelStore>> getAlarmsModelFromStore();
  Future<void> setAlarmsModelToStore(List<AlarmModelStore> value);
}
