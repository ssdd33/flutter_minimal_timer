import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_event.freezed.dart';

@freezed
class TimerEvent with _$TimerEvent {
  const factory TimerEvent.start() = Start;
  const factory TimerEvent.puase() = Pause;
  const factory TimerEvent.reset() = Reset;
}
