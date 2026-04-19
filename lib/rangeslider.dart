import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: RangesliderCl(),debugShowCheckedModeBanner: false,));
}

class RangesliderCl extends StatefulWidget {
  const RangesliderCl({super.key});

  @override
  State<RangesliderCl> createState() => _RangesliderClState();
}

class _RangesliderClState extends State<RangesliderCl> {
  RangeValues values = RangeValues(0, 100);
  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold(
      body: Center(
        child: RangeSlider(values: values,
            min: 0,max: 100,
            activeColor: Colors.green,
            inactiveColor: Colors.green.shade100,
            labels: labels, divisions: 10, onChanged: (newValue){

             values = newValue;
             setState(() {

             });
             print("${newValue.start}, ${newValue.end}");
        }),
      ),
      
    );
  }
}
