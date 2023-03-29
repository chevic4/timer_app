import 'package:flutter/material.dart';
import 'package:flutter_pomidoro_timer/src/core/extentions/extension.dart';
import '../../domain/entity/alarm_model.dart';

class ListRounds extends StatelessWidget {
  const ListRounds({super.key, required this.listRounds});
  final List<AlarmModel> listRounds;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: listRounds.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return _DataStringWidget(roundData: listRounds[index]);
            }),
      ),
    );
  }
}

class _DataStringWidget extends StatelessWidget {
  const _DataStringWidget({
    Key? key,
    required this.roundData,
  }) : super(key: key);
  final AlarmModel roundData;

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(style: Theme.of(context).textTheme.bodyLarge, children: [
      TextSpan(text: '${roundData.nameAlarm} '),
      TextSpan(text: roundData.durationAlarm.toMinSec()),
    ]));
  }
}
