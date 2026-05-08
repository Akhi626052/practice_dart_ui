import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:practice_dart_ui/firebase_options.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'GoogleSuccessfullScreen.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(AuthLoginPage());
}

class AuthLoginPage extends StatelessWidget{
  const AuthLoginPage({super.key});
 Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthLogin(),
    );
  }
}

class AuthLogin extends StatefulWidget{
  const AuthLogin({super.key});
  State<AuthLogin> createState() { return AuthLoginState();}
}
class AuthLoginState extends State<AuthLogin>{
  Future<UserCredential?> signInWithGoogle() async {
    try { // YOUR_WEB_CLIENT_ID
      await GoogleSignIn.instance.initialize(serverClientId: '507128691022-npot06jh87evb9c781i8el6uit916dg2.apps.googleusercontent.com',);
      final GoogleSignInAccount googleUser = await GoogleSignIn.instance.authenticate();
      final googleAuth = googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
      );
      final userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
      print("Login Success");
      print(userCredential.user?.email);
      Navigator.push(context, MaterialPageRoute(builder: (context) => GoogleSuccessfullScreen()));
      return userCredential;
    } on GoogleSignInException catch (e) {
      if (e.code == GoogleSignInExceptionCode.canceled) {
        print("User canceled login");
      } else {
        print("Google Sign-In Error: $e");
      }
      return null;
    } catch (e) {
      print("Firebase Error: $e");
      return null;
    }
  }

  // Future<UserCredential?> signInWithGoogle() async {
  //
  //   try {
  //     final GoogleSignIn googleSignIn = GoogleSignIn(
  //       serverClientId: 'YOUR_WEB_CLIENT_ID',
  //     );
  //     final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
  //
  //     if (googleUser == null) {
  //       print("User canceled login");
  //       return null;
  //     }
  //
  //     final GoogleSignInAuthentication googleAuth =
  //     await googleUser.authentication;
  //
  //     final credential = GoogleAuthProvider.credential(
  //       idToken: googleAuth.idToken,
  //     );
  //
  //     final userCredential =
  //     await FirebaseAuth.instance.signInWithCredential(credential);
  //
  //     print("Login Success");
  //
  //     return userCredential;
  //
  //   } catch (e) {
  //
  //     print("Error: $e");
  //     return null;
  //
  //   }
  // }



  // Future<UserCredential?> signInWithGoogle() async {
  //   try {
  //     final GoogleSignIn googleSignIn = GoogleSignIn.instance;
  //     final GoogleSignInAccount? googleUser = await googleSignIn.authenticate();
  //     if (googleUser == null) {
  //       return null;
  //     }
  //     final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
  //     final credential = GoogleAuthProvider.credential(
  //       // accessToken: googleAuth.accessToken,
  //       // accessToken: (googleAuth as dynamic).accessToken,
  //       idToken: googleAuth.idToken,
  //     );
  //
  //     return await FirebaseAuth.instance.signInWithCredential(credential);
  //   } catch (e) {
  //     print("Google Sign-In Error: $e");
  //     return null;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Image.asset("assets/icons/google_ic.png", height: 60,width: 60,),
              ElevatedButton(
                  onPressed: (){
                    signInWithGoogle();
                  },
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      width: 1, color: Colors.black
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10),
                    backgroundColor: Colors.teal,
                    foregroundColor: Colors.white,
                  ),
                  child: Text("Google Login", style: TextStyle(fontSize: 22,fontWeight: FontWeight.normal),
              )),
            ],
          ),
        ),




        ],
      ),
    );
  }
}


