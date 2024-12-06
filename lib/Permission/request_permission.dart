import 'package:permission_handler/permission_handler.dart';
import '../Notifications/persistent_notifications.dart';

//this part is used to request permission before using notifications
//you'll need persistent_notifications added in your dependencies
Future<void> requestNotificationPermission() async {
  var status = await Permission.notification.request();

  if (status.isGranted) {
    showPersistentNotification();
  }
}
