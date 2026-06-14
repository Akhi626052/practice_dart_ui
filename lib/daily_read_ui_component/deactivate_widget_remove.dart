import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showWidget = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Deactivate Example"),centerTitle: true,backgroundColor: Colors.black,
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20

      ),
        foregroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20,),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    showWidget = !showWidget;
                  });
                },
                child: const Text("Show / Hide"),

              ),
            ),

           SizedBox(height: 20,),

          if (showWidget)
            const MyChildWidget(),
        ],
      ),
    );
  }
}

class MyChildWidget extends StatefulWidget {
  const MyChildWidget({super.key});

  @override
  State<MyChildWidget> createState() => _MyChildWidgetState();
}

class _MyChildWidgetState extends State<MyChildWidget> {

  @override
  void deactivate() {
    print("deactivate called");
    super.deactivate();
  }

  @override
  void dispose() {
    print("dispose called");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Text(
      "I am Child Widget",
      style: TextStyle(fontSize: 20),
    );
  }
}