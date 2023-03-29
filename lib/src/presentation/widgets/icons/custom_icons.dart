import 'package:flutter/material.dart';

class IconCustom extends StatelessWidget {
  final IconCustomName iconName;
  const IconCustom({
    Key? key,
    required this.iconName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      iconName.path,
    );
  }
}

enum IconCustomName {
  play('assets/icons/play_40.png'),
  pause('assets/icons/pause_40.png'),
  next('assets/icons/skip_next_40.png'),
  prew('assets/icons/skip_previous_40.png'),
  settings('assets/icons/settings.png'),
  check('assets/icons/checkFill_40.png');

  final String path;
  const IconCustomName(this.path);
}
