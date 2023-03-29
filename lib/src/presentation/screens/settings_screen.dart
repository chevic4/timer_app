import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pomidoro_timer/src/presentation/screens/models/setting_screen_model.dart';
import '../widgets/icons/custom_icons.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  final model = SettingsScreenModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: const Text('settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const _TextMenu(data: 'количество сетов'),
            const _TextMenu(data: 'автоматический переход'),
            const _TextMenu(data: 'длительность сета'),
            const _TextMenu(data: 'время перерыва'),
            ElevatedButton(
                onPressed: () async {
                  model.saveToStoreService();
                },
                child: const Text('save')),
            ElevatedButton(
                onPressed: () {
                  model.getFromStoreService();
                },
                child: const Text('get')),
            IconButton(
                onPressed: () {
                  Modular.to.pop();
                },
                icon: const IconCustom(iconName: IconCustomName.check)),
          ],
        ),
      ),
    );
  }
}

class _TextMenu extends StatelessWidget {
  const _TextMenu({required this.data});

  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: Theme.of(context).textTheme.titleMedium,
    );
  }
}
