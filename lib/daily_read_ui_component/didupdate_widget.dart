import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ParentScreen(),
    );
  }
}


class MyAppTxx extends StatefulWidget {
  final String title;

  const MyAppTxx({super.key, required this.title});

  @override
  State<MyAppTxx> createState() => _MyAppTxxState();
}

class _MyAppTxxState extends State<MyAppTxx> {
// Nahi, covariant data type nahi hai.
//
// covariant Dart ka keyword hai.
// Iska use parameter ke type ko more specific banane ke liye kiya jata hai.
  @override             // keyword  //  oldWidget object MyAppTxx type ka ho-ga
  void didUpdateWidget(covariant MyAppTxx oldWidget) {

    if(oldWidget.title != widget.title){
      print("Name Changed");
    }
    super.didUpdateWidget(oldWidget);
// Isliye aap uski properties access kar sakte ho:
    print("Old Title: ${oldWidget.title}");
    print("New Title: ${widget.title}");
  }

  @override
  Widget build(BuildContext context) {
    return Text(widget.title);
  }
}
// Interview me bol sakte ho:

// oldWidget.title != widget.title ka use ye check karne ke liye karte hain ki parent se aayi hui property ki value change hui hai ya nahi.
// Agar purani aur nayi value alag hai, to hum koi extra logic chala sakte hain (jaise API call, animation restart, data refresh, etc.).

class ParentScreen extends StatefulWidget {
  @override
  State<ParentScreen> createState() => _ParentScreenState();
}

class _ParentScreenState extends State<ParentScreen> {
  String title = "Hello";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [


          MyAppTxx(title: title),
          ElevatedButton(
            onPressed: () {
              setState(() {
                title = "Welcome";
              });
            },
            child: const Text("Change"),
          ),


        ],
      ),
    );
  }
}

// Advance Case


void mains(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ParentScreen(),
  ));
}

class ParentScreen extends StatefulWidget{
  const ParentScreen({super.key});
State<ParentScreen> createState() => StateParentScreen();
}

class StateParentScreen extends State<ParentScreen>{
  int userId = 1;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Did Update Widget Example"),
      ),
      body: Column(
        children: [

          UserProfile(userId: userId),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            setState(() {
              userId = 2;
            });
          }, child: Text("Load User 2"))

          
        ],
      ),
    );
  }
}


class UserProfile extends  StatefulWidget {
  final int userId;
  UserProfile({super.key, required this.userId});
  State<UserProfile> createState() => StateUserProfile();
}
class StateUserProfile extends State<UserProfile>{
  String userName = "";
  @override
  void initState(){
    super.initState();
    print("initState");
    fetchUserData();
  }
  void fetchUserData(){
    print("Fetching User: ${widget.userId}");
    if(widget.userId == 1){
      userName = "Akhilesh Gupta";
    }else if(widget.userId == 2){
      userName = "Rahul Sharma";
    }
    setState(() {});
  }
  @override
  void didUpdateWidget(covariant UserProfile oldWidget){
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
    if(oldWidget.userId != widget.userId){
      print("UserId Changed");
      fetchUserData();
    }
  }
  @override
  Widget build(BuildContext context){
    print("Build");
    return Text("User ID: ${widget.userId} \n Name: ${userName}",style: TextStyle(color: Colors.black,fontSize: 18, fontWeight: FontWeight.bold),);

  }
}