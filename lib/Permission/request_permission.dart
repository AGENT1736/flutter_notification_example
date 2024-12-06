import 'package:permission_handler/permission_handler.dart';
import '../Notifications/persistent_notifications.dart';

Future<void> requestNotificationPermission() async {
  var status = await Permission.notification.request();

  if (status.isGranted) {
    showPersistentNotification();
  }
}
