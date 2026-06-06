import 'package:flutter/material.dart';
class myButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final IconData? icon;
  final Color? iconColor;
  final Color? textColor;
  const myButton({Key? key, required this.text, required this.onTap, this.icon, this.iconColor = Colors.white, this.textColor= Colors.white}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 16),
          backgroundColor: Colors.black,
          // foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(width: 1, color: Colors.blue)
          )
        ),
        onPressed: onTap,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[
              Icon(icon, color: iconColor,),
              SizedBox(width: 10,),
            ],


            Text(text, style: TextStyle(color: textColor),),
          ],
        ),
      ),
    );
  }
}