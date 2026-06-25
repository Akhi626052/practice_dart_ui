// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart%20';
//
// void main(){
//   runApp(MyFutureBuilder());
// }
// class MyFutureBuilder extends StatelessWidget {
//   const MyFutureBuilder({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: FutureBuilderApp(),
//     );
//   }
// }
// class FutureBuilderApp extends StatefulWidget {
//   const FutureBuilderApp({super.key});
//
//   @override
//   State<FutureBuilderApp> createState() => _FutureBuilderAppState();
// }
//
// class _FutureBuilderAppState extends State<FutureBuilderApp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           FutureBuilder(future: myFuture(),
//               builder: (context, snapshot){
//             if(snapshot.hasData){
//               return Text(snapshot.data.toString());
//             }
//             if(snapshot.hasError){
//               return Text("Error: ${snapshot.error}");
//             }
//             return CircularProgressIndicator();
//
//
//           }),
//
//           Text("Welcome Screen")
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget {

  Future<String> getData() async {
    await Future.delayed(Duration(seconds: 3));
    return "Data Loaded Successfully";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FutureBuilder Example"),
      ),
      body: Center(
        child: FutureBuilder<String>(
          future: getData(),
          builder: (context, snapshot) {

            if (snapshot.connectionState ==
                ConnectionState.waiting) {
              return CircularProgressIndicator();
            }

            if (snapshot.hasError) {
              return Text("Error: ${snapshot.error}");
            }

            if (snapshot.hasData) {
              return Text(
                snapshot.data!,
                style: TextStyle(fontSize: 20),
              );
            }

            return Text("No Data");
          },
        ),
      ),
    );
  }
}