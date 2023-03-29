import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pomidoro_timer/src/domain/entity/alarm_model.dart';
import 'package:flutter_pomidoro_timer/src/presentation/widgets/icons/custom_icons.dart';
import 'package:flutter_pomidoro_timer/src/presentation/widgets/round_info_widget.dart';
import '../widgets/list_rounds.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final listAlarm = List<AlarmModel>.generate(10, (i) {
    return AlarmModel(
        nameAlarm: 'nameAlarm$i', durationAlarm: Duration(seconds: i + 10));
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Modular.to.pushNamed('/settings');
            },
            icon: const IconCustom(iconName: IconCustomName.settings)),
        title: const Text(
          'timer',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  RoundinfoTimeWidget(data: listAlarm.first),
                  RoundinfoNameWidget(data: listAlarm.first)
                ]),
              ),
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: ListRounds(listRounds: listAlarm)),
            Card(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon:
                              const IconCustom(iconName: IconCustomName.pause)),
                      IconButton(
                          onPressed: () {},
                          icon:
                              const IconCustom(iconName: IconCustomName.play)),
                      IconButton(
                          onPressed: () {
                            listAlarm.removeAt(0);
                            setState(() {});
                          },
                          icon:
                              const IconCustom(iconName: IconCustomName.next)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
