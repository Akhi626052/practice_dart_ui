import 'package:flutter/material.dart';
import 'package:practice_dart_ui/provider_pra/provider_wscubtech/add_data_page.dart';
import 'package:practice_dart_ui/provider_pra/provider_wscubtech/list_map_provider.dart';
import 'package:provider/provider.dart';
class ListPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Page"),),
      body: Column(
        children: [
          Consumer<ListMapProvider>(
             builder: (ctx,Provider,__){
               var addData = Provider.getData();
               // return ctx.watch<ListMapProvider>().addData({})
               return Provider.getData().isNotEmpty ? Container(
                 height: 500, width: 300,
                 child: ListView.builder(
                     itemCount: addData.length,
                              itemBuilder: (context,index){
                 return ListTile(
                   title: Text("${Provider.getData()[index]["name"]}"),
                   subtitle: Text("${Provider.getData()[index]["mobNo"]}"),
                   trailing: SizedBox(
                     width: 100,
                     child: Row(
                       children: [
                         IconButton(onPressed: (){
                          context.read<ListMapProvider>().updateData(
                              {
                                "name" : "updated contact name",
                                "mobNo" : "7766554433",
                              }, index);
                         }, icon: Icon(Icons.edit)),
                         
                         IconButton(onPressed: (){
                           context.read<ListMapProvider>().deleteData(index);

                         }, icon: Icon(Icons.delete))
                       ],
                     ),
                   ),
                 );

                 }),
               ) : Text("No data found");

             },




          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        // context.read<ListMapProvider>().addData({
        //   "name" : "contact name",
        //   "mobNo" : "1234567890",
        // }
        
        Navigator.push(context, MaterialPageRoute(builder: (context) => AddDataPage())
        );

      },child: Icon(Icons.add),),
    );
  }
  }