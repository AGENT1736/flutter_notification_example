import 'package:flutter/material.dart';
import '../Permission/request_permission.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Persistent notification",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  requestNotificationPermission();
                },
                child: const Text("Persistent Notification"))
          ],
        ),
      ),
    );
  }
}
