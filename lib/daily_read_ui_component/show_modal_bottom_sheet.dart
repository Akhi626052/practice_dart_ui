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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            children : [
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

                    mnBottomSheet(context);

                     },

                  child: Text("Submit Button"),
                  style: _buttonStyle(),

                ),
              ),
            ]
        ),
      ),


      bottomNavigationBar: Container(
        height: 50,
        color: Colors.black,
        child: Center(child: Text("This is bottom navigation", style: TextStyle(color: Colors.white),)),
      ),





    );
  }
}







void mnBottomSheet(BuildContext context){

  showModalBottomSheet(context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: false,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15)),
      ) ,
      builder: (context){

        return _RepotBottomSheet();

      }
  );
}
class _RepotBottomSheet extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return  Container(
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
            _buildOption("Tell us why you're not interested"),
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
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildOptionT("Irrelevant",),
                    _buildOptionT("Boring"),
                    _buildOptionT("Too sexual"),
                    _buildOptionT("Disgusting"),
                    _buildOptionT("Violent"),
                    _buildOptionT("Offensive"),
                    _buildOptionT("Misleading"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
ButtonStyle _buttonStyle(){
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.symmetric(horizontal: 10),
    backgroundColor: Colors.black,
    foregroundColor: Colors.white,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5)
    ),
    elevation: 1,
    shadowColor: Colors.blue,
    side: BorderSide(
        color: Colors.black,
        width: 2),
  );
}
Widget _buildOption(String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
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



