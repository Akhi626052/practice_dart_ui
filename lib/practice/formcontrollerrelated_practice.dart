import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PracticeController(),
  ));
}
class PracticeController extends StatefulWidget {
  const PracticeController({super.key});

  @override
  State<PracticeController> createState() => _PracticeControllerState();
}

class _PracticeControllerState extends State<PracticeController> {
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    _controller.text = "Akhilesh";
    _controller.addListener((){
      print("---------------------------");
      print(_controller.text);
      print("scroll ${_controller.selection}");
      print("scroll ${_controller.selection.baseOffset}");
      print("scroll ${_controller.selection.extentOffset}");
    });
  }

  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            // scrollDirection: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      hintText: "Enter text here..",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                        ),
                    ),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.black, width: 4),
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  child: IconButton(onPressed: (){
                    _controller.clear();
                  }, icon: Icon(Icons.clear,color: Colors.white,)),
                ),
              )
            ],
          ),
   SizedBox(height: 20,),
          Center(
            child: ElevatedButton(

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                    side: BorderSide(
                      color: Colors.black,
                      width: 2
                    )
                  )

                ),
                onPressed: (){
              String text = _controller.text;
              _controller.clear();
              print(text);

            }, child: Text("Submit")),
          )

        ],
      ),
    );
  }
}
