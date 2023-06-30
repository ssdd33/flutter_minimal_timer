import 'package:flutter/material.dart';
import 'package:flutter_minimal_timer/state%20management/timer_view_model.dart';
import 'package:flutter_minimal_timer/ui/timer_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<TimerViewModel>(
    create: (_) => TimerViewModel(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Timer App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Timer(),
    );
  }
}
