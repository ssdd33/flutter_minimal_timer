import 'package:flutter/material.dart';
import 'package:flutter_minimal_timer/state%20management/timer_event.dart';
import 'package:provider/provider.dart';

import 'package:flutter_minimal_timer/state%20management/timer_view_model.dart';

class Timer extends StatelessWidget {
  const Timer({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<TimerViewModel>();
    final state = viewModel.state;

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TimeDisplay(time: state.time),
              Buttons(
                viewModel: viewModel,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TimeDisplay extends StatelessWidget {
  final int time;
  const TimeDisplay({
    Key? key,
    required this.time,
  }) : super(key: key);
//listen time state

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        width: double.infinity,
        child: Center(child: Text(time.toString())));
  }
}

class Buttons extends StatelessWidget {
  final TimerViewModel viewModel;
  const Buttons({
    Key? key,
    required this.viewModel,
  }) : super(key: key);
//listen timerStatus state

  Widget startButton() {
    return IconButton(
        onPressed: () {
          viewModel.onEvent(const TimerEvent.start());
        },
        icon: const Icon(Icons.play_circle_fill_outlined));
  }

  Widget puasueButton() {
    return IconButton(
        onPressed: () {
          viewModel.onEvent(const TimerEvent.puase());
        },
        icon: const Icon(Icons.pause_circle_filled_rounded));
  }

  Widget resetButton() {
    return IconButton(
        onPressed: () {
          viewModel.onEvent(const TimerEvent.reset());
        },
        icon: const Icon(Icons.refresh_outlined));
  }

  @override
  Widget build(BuildContext context) {
    return viewModel.state.status.when(init: () {
      return startButton();
    }, run: () {
      return Row(
        children: [puasueButton(), const SizedBox(width: 10), resetButton()],
      );
    }, stop: () {
      return Row(children: [
        startButton(),
        const SizedBox(width: 10),
        resetButton(),
      ]);
    }, finish: () {
      return resetButton();
    });
  }
}
