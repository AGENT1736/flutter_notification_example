import 'package:flutter_local_notifications/flutter_local_notifications.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> notificationUpdate(int remainingSeconds) async {
  const AndroidNotificationDetails androidNotificationDetails =
      AndroidNotificationDetails(
    'countdown_channel',
    'Countdown Timer',
    channelDescription:
        'Displays the countdown timer in a persistent notification',
    importance: Importance.max,
    priority: Priority.high,
    ongoing: true,
    autoCancel: false,
    onlyAlertOnce: true,
  );

  const NotificationDetails notificationDetails =
      NotificationDetails(android: androidNotificationDetails);

  await flutterLocalNotificationsPlugin.show(
    0, // Notification ID
    'Countdown Timer',
    'Time remaining: $remainingSeconds seconds',
    notificationDetails,
  );
}
