import 'Package:flutter/material.dart';
import 'package:practice_dart_ui/provider_pra/provider_wscubtech/list_map_provider.dart';
import 'package:provider/provider.dart';
class AddDataPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
            title: Text("Add Note"),
      ),
      body: IconButton(


        onPressed: (){
      context.read<ListMapProvider>().addData({
        "name": "contact name",
        "mobNo": "1234567890",

      });

      }, icon: Icon(Icons.add),),

      
    );
  }
}