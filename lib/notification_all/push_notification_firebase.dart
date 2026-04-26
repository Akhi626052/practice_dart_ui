import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:practice_dart_ui/notification_all/push_notification_nevigation_screen.dart';
import 'package:timezone/data/latest.dart';
import 'package:timezone/data/latest.dart' as tz;
import '../firebase_options.dart';
import 'package:timezone/timezone.dart' as tz;
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

/// 🔴 Background handler: function jo app band hone par bhi notification ko handle karta hai
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async { // notification data
  await Firebase.initializeApp( // background me firebase ko du-bara handle karna pa-dta hai
    options: DefaultFirebaseOptions.currentPlatform,
  );
  print("Background Message: ${message.messageId}");
}// ui update nahi karta hai.
// FCM Token: Firebase Cloud Messaging ka unique token hota hai
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp( // app connected
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler); // app band ho ya minimized ho tab yah chalega
  String? token = await FirebaseMessaging.instance.getToken();
  print("Device Token: $token");
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    print('Message received: ${message.notification?.title}');
  });


  // careeritunited@gmail.com
  tz.initializeTimeZones();
  tz.setLocalLocation(tz.getLocation('Asia/Kolkata')); // ✅ IMPORTANT
  // Flutter engine ready
  // Notification settings create
  // Plugin initialize
  // App run
  const AndroidInitializationSettings androidSettings = AndroidInitializationSettings('@mipmap/ic_launcher');
  const InitializationSettings initializationSettings = InitializationSettings(android: androidSettings);
  await flutterLocalNotificationsPlugin.initialize(initializationSettings);

  runApp(MyNotification(),);

}

class MyNotification extends StatelessWidget{
  const MyNotification({Key? key}) : super(key: key);
  Widget build(BuildContext context){
    return MaterialApp(
      routes: {
        "/push": (context) => PushNavigationScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: NotificationApp(),
    );
  }
}


class NotificationApp extends StatefulWidget{
  NotificationApp({Key? key}) : super(key: key);
  @override
  State<NotificationApp> createState() => NotificationAppState();

}
class NotificationAppState extends State<NotificationApp>{
  void initState(){
    super.initState();
    print("Notification App Initialized");
    setupFCM();
    // permission request
    flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>()
        ?.requestNotificationsPermission();

  }
  Future<void> setupFCM() async {

    /// 🔐 Permission
    await FirebaseMessaging.instance.requestPermission(); // android 13+ ke liye permission mangta hai

    /// 📲 Token
    String? token = await FirebaseMessaging.instance.getToken();
    print("FCM Token: $token");

    /// 📩 Foreground message
    FirebaseMessaging.onMessage.listen((RemoteMessage message) { // foreground notification handle karna
      print("Foreground Message: ${message.notification?.title}");

      showLocalNotification(
        // Foreground mein Firebase auto notification show nahi karta
      // Isliye tum flutter_local_notifications use kar rahe ho
        message.notification?.title ?? "",
        message.notification?.body ?? "",
      );
    });
    // Jab app open ho aur notification aaye:
    // Print ho raha hai
    // Aur tum manually notification show kar rahe ho
    /// App open from notification
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) { // notification me click handalar karna, jab uer notification me click karega to ye chalega
      print("Notification Clicked!");
     Navigator.pushNamed(context, '/push');



    });
  }
  /// 🔔 Local Notification show karne ke liye
  void showLocalNotification(String title, String body) async {
    const AndroidNotificationDetails androidDetails =
    AndroidNotificationDetails(
      'channel_id',
      'channel_name',
      importance: Importance.max,
      priority: Priority.high,
    );

    const NotificationDetails details =
    NotificationDetails(android: androidDetails);

    await flutterLocalNotificationsPlugin.show(
      0,
      title,
      body,
      details,
    );
  }
  // (){
  //
  // }
  Future<void> showNotification() async {
    const AndroidNotificationDetails androidDetails =
    AndroidNotificationDetails(
      'channel_id',
      'channel_name',
      importance: Importance.max,
      priority: Priority.high,
      channelDescription: 'This is test notification',
    );

    const NotificationDetails details =
    NotificationDetails(android: androidDetails);

    await flutterLocalNotificationsPlugin.show(
      0,
      'Hello',
      'Ye tumhari first notification hai',
      details,
    );
  }
  // timezone
  Future<void> scheduleNotification() async {
    await flutterLocalNotificationsPlugin.zonedSchedule(
        0,
        'Reminder',
        '10 sec baad notification',
        tz.TZDateTime.now(tz.local).add(Duration(seconds: 10)),
        const NotificationDetails(
          android: AndroidNotificationDetails(
            'channel_id',
            'channel_name',
            importance: Importance.max,
            priority: Priority.high,
          ),
        ),
        androidScheduleMode:  AndroidScheduleMode.exactAllowWhileIdle,
        matchDateTimeComponents: null
      // androidAllowWhileIdle: true,
      // uiLocalNotificationDateInterpretation:
      // UILocalNotificationDateInterpretation.absoluteTime,
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 500,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    textStyle: TextStyle(fontSize: 20, ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    )
                ),
                onPressed: showNotification, child: Text("Show Notification")),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){

            scheduleNotification();

          }, child: Text("Schedule Time "))
        ],
      ),
    );
  }
}



