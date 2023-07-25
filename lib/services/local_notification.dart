import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:intl/intl.dart';

class LocalNotificationService {
  static final _notificationPlugin = FlutterLocalNotificationsPlugin();

  static void initialize() {
    const initializationSettings = InitializationSettings(
        android: AndroidInitializationSettings("@mipmap/ic_launcher"));
    _notificationPlugin.initialize(initializationSettings);
  }

  static void displayNotification({
    required String day,
    required String hour,
    required String minute,
    required String pillName,
    required String countMedicine,
    RemoteMessage? message,
  }) async {
    print('calling');
    final dateTime = DateTime.now();
    try {
      for (int i = 0; i < int.parse(day); i++) {
        final scheduleTime = DateTime(
          dateTime.year,
          dateTime.month,
          dateTime.day + i,
          int.parse(hour),
          int.parse(minute),
        );
        const notificationDetails = NotificationDetails(
          android: AndroidNotificationDetails(
            "medical",
            "medical_channel",
            importance: Importance.max,
            priority: Priority.high,
          ),
        );

       // final id = DateTime.now().millisecondsSinceEpoch ~/ 1000; // no need to use this because for loop is running and we can use value of i as id.
        tz.Location timeZone = tz.getLocation('Asia/Kolkata');
        tz.TZDateTime tzDateTime = tz.TZDateTime.from(scheduleTime, timeZone);
        await _notificationPlugin.zonedSchedule(
          i,
          'reminder',
          'did you forget to take $countMedicine pill of $pillName?',
          tzDateTime,
          notificationDetails,
          uiLocalNotificationDateInterpretation:
              UILocalNotificationDateInterpretation.absoluteTime,
          androidAllowWhileIdle: true,
        );
        //await _notificationPlugin.show(id, message.notification?.title, message.notification?.body, notificationDetails);
      }
    } on Exception catch (e) {
      print(e);
    }
  }
}
