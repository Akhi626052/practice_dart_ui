import 'package:flutter/material.dart';

void main(){
  runApp(PyApp());
}
class PyApp extends StatelessWidget{
const PyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaymentScreen(),
      // home: MyHomePage(),
    );
  }
}
class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  List<String> ls = ["A","B","C","D"];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Column(
       children :[
         SizedBox(height: 20,),
        // spread operator
         ...ls.map((item){
           return Padding(
             padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
             child: TextField(
             decoration: InputDecoration(
             labelText: item,
                border: OutlineInputBorder()
             ),
             ),
           );
         }),

         SizedBox(height: 10,),
         Container(
           margin: EdgeInsets.symmetric(horizontal: 30),
           height: 45,
           width: double.infinity,
           child: ElevatedButton(
               onPressed: (){
                 showModalBottomSheet(context: context,
                     backgroundColor: Colors.transparent,
                     isScrollControlled: false,
                     clipBehavior: Clip.antiAlias,
                     shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15)),
                   // side: BorderSide(
                   //   width: 2,
                   //   color: Colors.red
                   // )
                 ) ,
                builder: (context){
                   return
                     Container(
                       margin: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(15),
                         border: Border.all(width: 1, color: Colors.white)
                       ),
                       child: SafeArea(
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [

                               SizedBox(height: 3,),
                               Center(
                                   child: Container(width: 70,height: 4,
                                 decoration: BoxDecoration(
                                     color: Colors.black12,
                                    borderRadius: BorderRadius.circular(20)
                                 ),
                               )),

                               Padding(
                                 padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                                 child: Text("Tell us why you're not interested",style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold,
                                     wordSpacing: 2,
                                   ),),
                               ),


                           // divider line full width(edge to edge)
                           //     Container(width: double.infinity,
                           //       // margin: EdgeInsets.symmetric(horizontal: -20),
                           //     decoration: BoxDecoration(
                           //     border: Border.all(color: Colors.black12, width: 1),
                           //     ),
                           //     ),

                                Divider(
                                  thickness: 4,
                                  color: Colors.black12,
                                  height: 4,
                                ),

                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                                    child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                                       children: [

                                         Text("Irrelevant",style: TextStyle(fontSize: 15),),
                                         Text("Boring",style: TextStyle(fontSize: 15),),
                                         Text("Too sexual",style: TextStyle(fontSize: 15),),
                                         Text("Disgusting",style: TextStyle(fontSize: 15),),
                                         Text("Violent",style: TextStyle(fontSize: 15),),
                                         Text("Offensive",style: TextStyle(fontSize: 15),),
                                         Text("Misleading",style: TextStyle(fontSize: 15),),

                                       ],
                                     ),
                                  ),
                                ),


                             ],
                           ),

                       ),
                     );
                 });

               },



             // onPressed: (){
             //   showModalBottomSheet(
             //     context: context,
             //     backgroundColor: Colors.transparent,
             //     isScrollControlled: true,
             //     builder: (context) {
             //       return SafeArea(
             //         child: Container(
             //           margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
             //           decoration: const BoxDecoration(
             //             color: Colors.white,
             //             borderRadius: BorderRadius.vertical(
             //               top: Radius.circular(20),
             //             ),
             //           ),
             //           child: Column(
             //             mainAxisSize: MainAxisSize.min,
             //             children: [
             //
             //               // 🔘 Drag Handle (Instagram style)
             //               const SizedBox(height: 8),
             //               Container(
             //                 height: 4,
             //                 width: 40,
             //                 decoration: BoxDecoration(
             //                   color: Colors.grey.shade300,
             //                   borderRadius: BorderRadius.circular(10),
             //                 ),
             //               ),
             //
             //               SizedBox(height: 16),
             //
             //               // 🔤 Title
             //              _buildOptionT("Tell us why you're not interested"),
             //
             //               const SizedBox(height: 12),
             //
             //               // ➖ Divider (full width)
             //               const Divider(height: 1, thickness: 1),
             //
             //               // 📋 Options List
             //               _buildOption("Irrelevant"),
             //               _buildOption("Boring"),
             //               _buildOption("Too sexual"),
             //               _buildOption("Disgusting"),
             //               _buildOption("Violent"),
             //               _buildOption("Offensive"),
             //               _buildOption("Misleading"),
             //
             //               const SizedBox(height: 10),
             //             ],
             //           ),
             //         ),
             //       );
             //     },
             //   );
             // },


               child: Text("Submit Button"),
              style:  ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 10),
                 backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                elevation: 5,
                shadowColor: Colors.blue,
                side: BorderSide(
                  color: Colors.black,
                  width: 2
                ),

             ),

           ),
         ),



]
     ),
       bottomNavigationBar: Container(
         height: 50,
         color: Colors.black,
         child: Center(child: Text("This is bottom navigation", style: TextStyle(color: Colors.white),)),
       ),



     bottomSheet: Container(
       margin: EdgeInsets.only(bottom: 20),
       width: 300, height: 200,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(10),
         color: Colors.blue,
       ),
     ),



   );
  }
}

Widget _buildOption(String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 14),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Text(text,
         style: TextStyle(fontSize: 15),
      ),
    ),
  );
}
Widget _buildOptionT(String text){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Text(text,
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    ),
  );
}


// inkwell
// ✅ When true
// isScrollControlled: true
//
// 👉 Bottom sheet:
//
// Full height (almost screen) tak ja sakta hai
// Keyboard open hone pe adjust hota hai
//
// 📱 Use case:
//
// Form (login/signup)
// Large list (ListView)
// Chat UI
// Draggable sheet (Instagram/Google Maps style)

