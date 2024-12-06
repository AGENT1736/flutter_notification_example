import 'package:flutter_local_notifications/flutter_local_notifications.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> showPersistentNotification() async {
  const AndroidNotificationDetails androidNotificationDetails =
      AndroidNotificationDetails(
    'foreground_service_channel_id',
    'Foreground Service',
    channelDescription: 'This is a non-dismissable notification.',
    importance: Importance.max,
    priority: Priority.high,
    ongoing: true,
    autoCancel: false,
  );

  const NotificationDetails notificationDetails =
      NotificationDetails(android: androidNotificationDetails);

  //this is what will be displayed in the notification
  await flutterLocalNotificationsPlugin.show(
    0,
    'Good Man Alert!',
    'There is a good man in the hood!',
    notificationDetails,
  );
}
