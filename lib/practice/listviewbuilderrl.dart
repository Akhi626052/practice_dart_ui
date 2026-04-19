import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(){
  runApp(HomeScreenPractice());
}
class HomeScreenPractice extends StatelessWidget {
  const HomeScreenPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      home: MainScreen(title: "Flutter App",subtitle: "Best in Flutter App",),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          labelLarge: TextStyle(
            color: Colors.blue, fontSize: 22,fontWeight: FontWeight.bold
          ),

        )
      ),

    );
  }
}
class MainScreen extends StatelessWidget {
  final String title;
  final String subtitle;
  const MainScreen({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.black,
        statusBarIconBrightness: Brightness.light
      ),
      child: Scaffold(
        // appBar: AppBar(
        //   // leading: IconButton(onPressed: (){
        //   //
        //   //   Scaffold.of(context).openDrawer();
        //   //
        //   // }, icon: Icon(Icons.menu_book)),
        //
        //  leading: Builder(builder: (context){
        //    return IconButton(onPressed: (){
        //      Scaffold.of(context).openDrawer();
        //    }, icon: Icon(Icons.menu));
        //
        //  }),
        //   systemOverlayStyle: const SystemUiOverlayStyle(
        //     statusBarColor: Colors.black,
        //     statusBarIconBrightness: Brightness.light
        //   ),
        //   backgroundColor: Colors.yellow,
        //   centerTitle: true,
        //   title: Text(title,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        // )    ,
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.orange
                  ),
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage("https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"),
                    ),
                  ),
                   SizedBox(height: 10,),
                   Text("Drawer Header"),
      
                ],
              )),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("wallet"),
                leading: Icon(Icons.wallet),
              ),
              ListTile(
                title: Text("setting"),
                leading: Icon(Icons.settings),
              )
              
            ],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

           SizedBox(height: 40,),
           Builder(
             builder: (context){
               return GestureDetector(
                 onTap: (){
                    Scaffold.of(context).openDrawer();
                    // Scaffold.of(context).openEndDrawer();
                    // Scaffold.of(context).openDrawer();
                 },
                 child: Container(
                   margin: EdgeInsets.symmetric(horizontal: 10),
                   child: CircleAvatar(
                     radius: 30,
                     backgroundImage: NetworkImage("https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"),
                   ),
                 ),




               );
             },


           ),


           Text("hello world", style: TextStyle(color: Colors.black,fontSize: 22),),
           Text(subtitle,style: TextStyle(fontSize: 22),)
      
      
      
          ],
        ),
      ),
    );
  }
}

