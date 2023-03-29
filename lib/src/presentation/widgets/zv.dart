// import 'package:flutter/material.dart';
// import 'package:flutter_modular/flutter_modular.dart';
// import 'package:timer_count_down/timer_count_down.dart';

// import '../../domain/services/time_controller_service.dart';

// class TimerWidget extends StatefulWidget {
//   const TimerWidget({super.key});

//   @override
//   State<TimerWidget> createState() => _TimerWidgetState();
// }

// class _TimerWidgetState extends State<TimerWidget> {
//   final timeControleer = Modular.get<TimeControllerService>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'widget.title',
//         ),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 16,
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   // Start
//                   ElevatedButton(
//                     child: const Text('Start'),
//                     onPressed: () {
//                       timeControleer.timeControllerStart();
//                     },
//                   ),
//                   // Pause
//                   ElevatedButton(
//                     child: const Text('Pause'),
//                     onPressed: () {
//                       timeControleer.timeControllerPause();
//                     },
//                   ),
//                   // Resume
//                   ElevatedButton(
//                     child: const Text('Resume'),
//                     onPressed: () {
//                       timeControleer.timeControllerResume();
//                     },
//                   ),
//                   // Stop
//                   ElevatedButton(
//                     child: const Text('Restart'),
//                     onPressed: () {
//                       timeControleer.timeControllerRestart();
//                     },
//                   ),
//                 ],
//               ),
//             ),
//             Countdown(
//               controller: timeControleer.timeControllerGet,
//               seconds: 500,
//               build: (_, double time) => Text(
//                 time.toString(),
//                 style: const TextStyle(fontSize: 100),
//               ),
//               interval: const Duration(seconds: 1),
//               onFinished: () {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   const SnackBar(
//                     content: Text('Timer is done!'),
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
