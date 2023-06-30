import 'package:flutter/material.dart';

class Timer extends StatelessWidget {
  const Timer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            TimeDisplay(),
            Buttons(),
          ],
        ),
      ),
    );
  }
}

class TimeDisplay extends StatelessWidget {
  const TimeDisplay({super.key});
//listen time state

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Buttons extends StatelessWidget {
  const Buttons({super.key});
//listen timerStatus state

  Widget startButton() {
    return IconButton(onPressed: () {}, icon: const Icon(Icons.start_outlined));
  }

  Widget puasueButton() {
    return IconButton(
        onPressed: () {}, icon: const Icon(Icons.pause_circle_filled_outlined));
  }

  Widget ResetButton() {
    return IconButton(
        onPressed: () {}, icon: const Icon(Icons.refresh_outlined));
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
