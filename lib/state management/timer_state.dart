import 'package:flutter_minimal_timer/state%20management/timer_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_state.freezed.dart';

@freezed
class TimerState with _$TimerState {
  factory TimerState({
    @Default(10) int time,
    @Default(TimerStatus.init()) TimerStatus status,
  }) = _TimerState;
}
