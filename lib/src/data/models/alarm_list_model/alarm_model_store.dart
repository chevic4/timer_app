import 'package:flutter_pomidoro_timer/src/domain/entity/alarm_model.dart';

class AlarmModelStore extends AlarmModel {
  AlarmModelStore({
    required super.nameAlarm,
    required super.durationAlarm,
  });

  factory AlarmModelStore.fromJson(Map<String, dynamic> json) {
    final currextDuration = Duration(seconds: json['durationAlarm'] as int);
    return AlarmModelStore(
      nameAlarm: json['nameAlarm'],
      durationAlarm: currextDuration,
    );
  }

  static Map<String, dynamic> toJson(AlarmModelStore value) {
    return {
      'nameAlarm': value.nameAlarm,
      'durationAlarm': value.durationAlarm.inSeconds,
    };
  }
}
