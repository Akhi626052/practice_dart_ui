import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: {
        "/home": (context) => LoginScreen(),
        "/login": (context) => HomeScreen(),
        "/products": (context) => ProductPage(),
      },

  )
  );
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Screen"),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          titleTextStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
          centerTitle: true,
        ),
      body: WillPopScope(
      onWillPop: () async{
        bool res  = await showDialog(context: context, builder: (context) => AlertDialog(
          title: Text("Confirm"),
          content: Text("Would you like to go back"),
          actions: [
            TextButton(onPressed: (){ // 15
              Navigator.of(context).pop(false);
            }, child: Text("no")),
            TextButton(onPressed: (){
              Navigator.of(context).pop(true);

            }, child: Text("yes"))
          ],

        ));

        return Future.value(res);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: ElevatedButton(onPressed: (){

   Navigator.of(context).push(MaterialPageRoute(builder: (context)=> LoginScreen()));

                // Navigator.of(context).pushNamed("/home");

              }, child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(child: Text("Login Button")),
                SizedBox(width: 10,),
                Icon(Icons.login, color: Colors.blue, size: 30, weight: 400,grade: 0,),]),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                alignment: Alignment.center,
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                textStyle: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                side: BorderSide(
                  color: Colors.black,
                  width: 1
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                elevation: 2,
                shadowColor: Colors.blue,
              ),
              ),
            ),
          )

        ],
      ),
       
        ),
    );
  }
}







class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Login Screen"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
        ),
        centerTitle: true,
      ),
  body: WillPopScope(
     child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: Text("Login Page"),
          ),
          ElevatedButton(onPressed: (){
          //  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ProductPage()));
        //  Navigator.of(context).popAndPushNamed("/products");

          Navigator.of(context).push(MaterialPageRoute(
              settings: RouteSettings(name: "login"),
              builder: (context)=> ProductPage()));



          },child: Text("Go to Product Page"),)
        ],
      ), onWillPop: () async {
        bool res = await showDialog(context: context, builder: (context)=> AlertDialog(
          title: Text("Confirm"),
          content: Text("Do you want to leave the login screen?"),
          actions: [
            TextButton(onPressed: (){
              Navigator.of(context).pop(false);
            }, child: Text("No"),
              autofocus: true,
              clipBehavior: Clip.antiAlias,

            ),
           TextButton(onPressed: (){
             Navigator.of(context).pop(true);
           }, child: Text("yes"),
           autofocus: true,
           clipBehavior: Clip.antiAlias,
             onHover: (value){
               print(value);
             },
           )
          ],
        ));
        return Future.value(res);
      })
    );
  }
}


class ProductPage extends StatelessWidget{
  ProductPage({super.key});
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Product Screen"),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Center(child: Text("Product Screen")),
          // Navigator.of(context).popUntil(ModalRoute.withName('login')),

          ElevatedButton(onPressed: (){

          // int count = 1;
          // Navigator.of(context).popUntil((route){return count++ == 2;});

          Navigator.of(context).popUntil(ModalRoute.withName('login'));



    }, child: Text("Go Button")),


        ],
      ),
    );
  }
}

class ANewPage extends StatelessWidget {
  ANewPage({super.key});
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [

        Center(child: Text("A New Page",style: TextStyle(color: Colors.black, fontSize: 22),)),
        ElevatedButton(onPressed: (){
           // Navigator.of(context).popUntil(ModalRoute.withName('login'));
          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context){
            return LoginScreen();
          }), (route) => false);


        }, child: Text("LogOut",style: TextStyle(fontSize: 22),))


        ],
      ),
    );
  }
}