import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_minimal_timer/state%20management/timer_event.dart';
import 'package:flutter_minimal_timer/state%20management/timer_state.dart';
import 'package:flutter_minimal_timer/state%20management/timer_status.dart';

class TimerViewModel with ChangeNotifier {
  TimerViewModel();
  TimerState _state = TimerState();
  TimerState get state => _state;

  void onEvent(TimerEvent event) {
    event.when(
      start: _startTimer,
      puase: _pauseTimer,
      reset: _resetTimer,
    );
  }

  _startTimer() {
    _state = _state.copyWith(status: const TimerStatus.run());
    notifyListeners();
    Timer(Duration(seconds: state.time), () {
      if (state.status == const TimerStatus.run()) {
        _state = _state.copyWith(time: state.time - 1);
        notifyListeners();
      }
    });
  }

  _pauseTimer() {
    _state = _state.copyWith(status: const TimerStatus.stop());
    notifyListeners();
  }

  _resetTimer() {
    _state = _state.copyWith(time: 10, status: const TimerStatus.init());
    notifyListeners();
  }
}
