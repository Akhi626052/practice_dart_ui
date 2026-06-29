import 'package:flutter/material.dart';
void main(){
  runApp(
    MyApp()
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: {
        '/login' : (context) => LoginScreen(title: "Home Screen"),
        '/home_screen' : (context) => HomeScreen(),
        '/item_screen' : (context) => ItemScreen(),
      },
      title: "Flutter Application",
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(
      //   title: "Home Screen",
      // ),
    );
  }
}
// Login screen
class LoginScreen extends StatefulWidget {
  final String title;
  LoginScreen({super.key, required this.title});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text(widget.title),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Center(
            child: ElevatedButton(onPressed: (){
            
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => HomeScreen()),
                      (route) =>false
              );
            
            }, child: Text("Login")),
          )

        ],
      ),
    );
  }
}






// home screen
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [


          Center(child: ElevatedButton(onPressed: (){

           Navigator.pushNamed(context, '/item_screen');


          }, child: Text("Home Button")))


        ],
      ),
    );
  }
}

class ItemScreen extends StatefulWidget {
  const ItemScreen({super.key});

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Center(
            child: Container(

              width: 200,height: 200,
              decoration: BoxDecoration(
                color: Colors.yellow,

              ),
              child:  ElevatedButton(

                  onPressed: (){


                  Navigator.of(context).pop();

                  }, child: Text("Button Item"))


              ,),
          ),

        ],
      ),
    );
  }
}


