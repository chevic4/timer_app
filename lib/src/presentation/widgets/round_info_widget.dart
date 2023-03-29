import 'package:flutter/material.dart';
import 'package:flutter_pomidoro_timer/src/core/extentions/extension.dart';
import '../../domain/entity/alarm_model.dart';

class RoundinfoTimeWidget extends StatelessWidget {
  const RoundinfoTimeWidget({
    Key? key,
    required this.data,
  }) : super(key: key);
  final AlarmModel data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data.durationAlarm.toMinSec(),
      style: Theme.of(context).textTheme.headlineLarge,
    );
  }
}

class RoundinfoNameWidget extends StatelessWidget {
  const RoundinfoNameWidget({
    Key? key,
    required this.data,
  }) : super(key: key);
  final AlarmModel data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data.nameAlarm,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
