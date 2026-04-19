import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20';

class RoundedButton extends StatelessWidget{
  String btnName;
  Icon? icon;
  Color? bgColor = Colors.blue; // default
  TextStyle? textStyle;
  VoidCallback? callBack;
  RoundedButton({required this.btnName, this.icon,this.bgColor, this.textStyle,this.callBack});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){
      callBack!();
    }, child: icon!=null ? Row(
      mainAxisAlignment: MainAxisAlignment.center,
       children: [
         icon!,
         // Container(width: 2,)
         Text(btnName,style: textStyle,),
       ],
    ) : Text(btnName,style: textStyle,),
    style: ElevatedButton.styleFrom(
      // primary: bgColor,
      backgroundColor: bgColor,
      shadowColor: bgColor,
      shape: RoundedRectangleBorder(
          borderRadius : BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))
      ),
    ),
    
    );
  }

}