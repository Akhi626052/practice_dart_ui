import 'package:flutter/material.dart ';

class DashBordPage extends StatefulWidget {
  const DashBordPage({super.key});

  @override
  State<DashBordPage> createState() => _DashBordPageState();
}

class _DashBordPageState extends State<DashBordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(


          child: Container(color: Colors.blue,width: 200,height: 200,)),
    );
  }
}
