
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(SharePreferencePage());
}
class SharePreferencePage extends StatelessWidget {
  const SharePreferencePage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SharedPreferenceScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              color: Colors.blue
          ),
          textTheme: TextTheme(
            labelLarge: TextStyle(
                color: Colors.indigo,
                fontSize: 15
            ),
          )

      ),
    );
  }
}
class SharedPreferenceScreen extends StatefulWidget {
  const SharedPreferenceScreen({super.key});

  @override
  State<SharedPreferenceScreen> createState() => _HeroDetailScreenState();
}

class _HeroDetailScreenState extends State<SharedPreferenceScreen> with SingleTickerProviderStateMixin{
 var textController = TextEditingController();
 static const String KEYNAME = "name";
 var nameValue = "No Value Saved";
  @override
  void initState(){
    super.initState();
    getValue();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Shared Preference",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),)),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch, // 👈 IMPORTANT
        children: [

          // local persistence data ko store karna ke liy
          TextField(
            controller: textController,
          ),
          SizedBox(height: 50,),
          ElevatedButton(onPressed: () async { // hold me na jaye wait na kare // execut hone me indifinit time lage ga to ham to await ka use karenge

            // var name = textController.text.toString();
            // it can tak a indefinite time
            var prefs = await SharedPreferences.getInstance();
            prefs.setString(KEYNAME, textController.text.toString()); // "name"
            // 🔥 UI update karo
            setState(() {
              nameValue = textController.text.toString();
            });
          }, child: Text("Save Data"),),

         SizedBox(
           height: 50,
         ),
          Center(child: Text(nameValue, style: TextStyle(color: Colors.black,fontSize: 22),))
        ],
      )
    );
  }

  void getValue() async{
  // shared preference ka instance create karna

   var prefs = await SharedPreferences.getInstance();
   var getName = prefs.getString(KEYNAME); // "name"
  // nameValue = getName!;
  //  nameValue = getName ?? "No Value Saved";
  // nameValue = getName ?? "No Value Saved";
  setState(() {
    nameValue = getName !=null ? getName : "No Value Saved";
  });
  }
}
