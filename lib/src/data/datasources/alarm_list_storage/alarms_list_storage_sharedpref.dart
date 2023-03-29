import 'dart:convert';
import 'package:flutter_pomidoro_timer/src/data/datasources/alarms_list_storage_interface.dart';
import 'package:flutter_pomidoro_timer/src/data/models/alarm_list_model/alarm_model_store.dart';
import 'package:shared_preferences/shared_preferences.dart';

const pathStore = 'storagePreferences';

class AlarmsListStorageSharedPrefences implements AlarmsListStorage {
  @override
  Future<List<AlarmModelStore>> getAlarmsModelFromStore() async {
    final store = await SharedPreferences.getInstance();

    final jsonData = store.getStringList(pathStore);

    if (jsonData != null) {
      return Future.value(jsonData
          .map((e) => AlarmModelStore.fromJson(jsonDecode(e)))
          .toList());
    } else {
      return [];
    }
  }

  @override
  Future<void> setAlarmsModelToStore(List<AlarmModelStore> value) async {
    final store = await SharedPreferences.getInstance();

    final dataJson =
        value.map((e) => jsonEncode(AlarmModelStore.toJson(e))).toList();

    await store.setStringList(pathStore, dataJson);
  }
}
