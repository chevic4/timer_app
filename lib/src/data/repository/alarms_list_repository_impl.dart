import 'package:flutter_pomidoro_timer/src/data/mapper/alarm_model_mapper.dart';

import '../../domain/entity/alarm_model.dart';
import '../../domain/repository/alarms_list_repository.dart';
import '../datasources/alarms_list_storage_interface.dart';

class AlarmsListRepositoryImpl implements AlarmsListRepository {
  final AlarmsListStorage dataStore;
  AlarmsListRepositoryImpl(this.dataStore);

  @override
  Future<List<AlarmModel>> getAlarmList() async {
    final data = await dataStore.getAlarmsModelFromStore();
    if (data.isEmpty) {
      return [];
    }
    return data;
  }

  @override
  void saveAlarmList(List<AlarmModel> listAlarms) async {
    final res = MapperAlarmModel.getAlarmModelsStore(listAlarms);
    dataStore.setAlarmsModelToStore(res);
  }
}
