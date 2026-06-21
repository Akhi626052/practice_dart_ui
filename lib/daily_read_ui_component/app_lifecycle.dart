import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20';
// App Lifecycle state in flutter
void main(){
  runApp(MyAppLifeCycle());
}

class MyAppLifeCycle extends StatelessWidget {
  const MyAppLifeCycle({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with WidgetsBindingObserver {

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

    print(state);

    if (state == AppLifecycleState.paused) {
      print("App Background me hai");
      saveDraft();
    }

    if (state == AppLifecycleState.resumed) {
      print("App Foreground me hai");
      getLatestData();
    }

    if (state == AppLifecycleState.paused) {
      saveDraft();
    }



  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}