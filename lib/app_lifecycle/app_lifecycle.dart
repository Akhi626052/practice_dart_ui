import 'package:flutter/material.dart';


void main(){
  runApp(MyHomeApp());
}
class MyHomeApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with WidgetsBindingObserver {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        print("App Opened");
        // fetchData();
        break;

      case AppLifecycleState.inactive:
        print("App Inactive");
        break;

      case AppLifecycleState.paused:
        print("App Background");
        // videoController.pause()
        break;

      case AppLifecycleState.detached:
        print("App Closed");
        break;

      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lifecycle Demo")),
      body: Center(child: Text("Flutter Lifecycle")),
    );
  }
}