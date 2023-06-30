import 'package:freezed_annotation/freezed_annotation.dart';
part 'timer_status.freezed.dart';

@freezed
abstract class TimerStatus with _$TimerStatus {
  const factory TimerStatus.init() = Init;
  const factory TimerStatus.run() = Run;
  const factory TimerStatus.stop() = Stop;
  const factory TimerStatus.finish() = Finish;
}
