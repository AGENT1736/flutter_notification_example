import 'dart:async';
import 'package:flutter/material.dart';
import 'package:notification_test/Notifications/get_completed_notification.dart';
import '../Permission/request_permission.dart';
import '../Notifications/update_timer_notification.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _remainingSeconds = 60; // Initial countdown time in seconds
  Timer? _timer;

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void startTimer() {
    setState(() {
      _remainingSeconds = 60; // Reset countdown
    });

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingSeconds > 0) {
        setState(() {
          _remainingSeconds--;
        });
        notificationUpdate(_remainingSeconds);
      } else {
        _timer?.cancel();
        notificationComplete();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Persistent Notification Countdown",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Time Remaining: $_remainingSeconds seconds",
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                requestNotificationPermission();
                startTimer();
              },
              child: const Text("Start Countdown"),
            ),
          ],
        ),
      ),
    );
  }
}
