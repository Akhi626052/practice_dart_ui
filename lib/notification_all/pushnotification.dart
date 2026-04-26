// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'firebase_options.dart';
//
// final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
// FlutterLocalNotificationsPlugin();
//
// /// 🔴 Background handler
// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   print("Background Message: ${message.messageId}");
// }
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//
//   FirebaseMessaging.onBackgroundMessage(
//       _firebaseMessagingBackgroundHandler);
//
//   runApp(MyApp());
// }
//
// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//
//   @override
//   void initState() {
//     super.initState();
//     setupFCM();
//   }
//
//   Future<void> setupFCM() async {
//
//     /// 🔐 Permission
//     await FirebaseMessaging.instance.requestPermission();
//
//     /// 📲 Token
//     String? token = await FirebaseMessaging.instance.getToken();
//     print("FCM Token: $token");
//
//     /// 📩 Foreground message
//     FirebaseMessaging.onMessage.listen((RemoteMessage message) {
//       print("Foreground Message: ${message.notification?.title}");
//
//       showLocalNotification(
//         message.notification?.title ?? "",
//         message.notification?.body ?? "",
//       );
//     });
//
//     /// 👉 App open from notification
//     FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
//       print("Notification Clicked!");
//     });
//   }
//
//   /// 🔔 Local Notification show karne ke liye
//   void showLocalNotification(String title, String body) async {
//     const AndroidNotificationDetails androidDetails =
//     AndroidNotificationDetails(
//       'channel_id',
//       'channel_name',
//       importance: Importance.max,
//       priority: Priority.high,
//     );
//
//     const NotificationDetails details =
//     NotificationDetails(android: androidDetails);
//
//     await flutterLocalNotificationsPlugin.show(
//       0,
//       title,
//       body,
//       details,
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("FCM Demo")),
//         body: Center(child: Text("Push Notification Ready 🚀")),
//       ),
//     );
//   }
// }