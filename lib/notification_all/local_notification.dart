import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
    // permission request
    flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>()
        ?.requestNotificationsPermission();
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
            )
        ],
      ),
    );
  }
}



