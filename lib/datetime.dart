import 'package:flutter/cupertino.dart';

import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DateTimeClass());
}

class DateTimeClass extends StatelessWidget {
  const DateTimeClass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.cyan,
        primarySwatch: Colors.cyan,
        appBarTheme: AppBarTheme(
          color: Colors.blue
        ),
        textTheme: TextTheme(
         headlineSmall: TextStyle(color: Colors.yellow,fontSize: 12),
          headlineMedium: TextStyle(color: Colors.yellow,fontSize: 21),
          headlineLarge: TextStyle(color: Colors.purple, fontSize: 12),
      ),
     ),
        home: DashBoardCurrentDateTimeCl()
    );
  }
}
class DashBoardCurrentDateTimeCl extends StatefulWidget {
  const DashBoardCurrentDateTimeCl({super.key});

  @override
  State<DashBoardCurrentDateTimeCl> createState() => _DashBoardCurrentDateTimeClState();
}

class _DashBoardCurrentDateTimeClState extends State<DashBoardCurrentDateTimeCl> {
  @override
  Widget build(BuildContext context){
    var time = DateTime.now();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(child: Text("Current Date: ${DateTime.now().weekday}",style: Theme.of(context).textTheme.headlineMedium),),
          SizedBox(height: 20,), // jms,Hms,yMMMMd,EEEE,MMMM
          Center(child: Text("Current Date: ${DateFormat("yMMMMEEEEd").format(DateTime.now())}",style: Theme.of(context).textTheme.headlineMedium),),
          Container(height: 50,),
          ElevatedButton(onPressed: () async{
            setState((){

            });
            DateTime? datePicker = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2021),
              lastDate: DateTime(2030)
            );
            if(datePicker!=null){
              print('Date Selected: ${datePicker.day}-${datePicker.month}-${datePicker.year}');
            }
      // 11
          }, child: Text("Submitted",style: TextStyle(color: Colors.black,fontSize: 20),)),


          SizedBox(height: 40,),


          ElevatedButton(onPressed: () async{
            TimeOfDay? timePicker = await showTimePicker(context: context,
                initialTime: TimeOfDay.now(),
              initialEntryMode: TimePickerEntryMode.dial,
            );
            if(timePicker != null){
              print("Time hours: ${timePicker.hour} and Minute: ${timePicker.minute}");
            }
          },child: Text("TimePicker",style: TextStyle(color: Colors.black,fontSize: 20),),),



        // ElevatedButton(onPressed: () async {
        //   TimeOfDay? timePicker = await showTimePicker(context: context, initialTime: TimeOfDay.now(),
        //   initialEntryMode: TimePickerEntryMode.input,
        // );
        // }, child: Text("data")),
        //

        ],
      ),
    );
  }
}
