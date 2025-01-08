import 'package:flutter_local_notifications/flutter_local_notifications.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> notificationComplete() async {
  const AndroidNotificationDetails androidNotificationDetails =
      AndroidNotificationDetails(
    'completion_channel',
    'Countdown Completion',
    channelDescription: 'Notification when countdown is complete',
    importance: Importance.max,
    priority: Priority.high,
    autoCancel: true,
  );

  const NotificationDetails notificationDetails =
      NotificationDetails(android: androidNotificationDetails);

  await flutterLocalNotificationsPlugin.show(
    1, // Notification ID
    'Countdown Complete',
    'The timer has finished!',
    notificationDetails,
  );
}
