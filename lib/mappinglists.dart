import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20';
import 'package:practice_dart_ui/hero/hero_detail_page.dart';

void main(){
  runApp(MappingListPage());
}
class MappingListPage extends StatelessWidget {
  const MappingListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MappingListScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              color: Colors.blue
          ),
          textTheme: TextTheme(
            labelLarge: TextStyle(
                color: Colors.indigo,
                fontSize: 15
            ),
          )

      ),
    );
  }
}
class MappingListScreen extends StatefulWidget {
  const MappingListScreen({super.key});

  @override
  State<MappingListScreen> createState() => _HeroDetailScreenState();
}

class _HeroDetailScreenState extends State<MappingListScreen> {
  // var arrData = [
  //   "Aman",
  //   "Rohit",
  //   "Devi",
  //   "Sonam",
  //   "Mohan",
  //   "Deepak",
  //   "Jain sahab",
  //   "Mohan Lal",
  //   "Rocky"
  // ];

  var arrData = [

    {
      'name': 'Raman',
      'mob': '6260525409',
      'unread': '2'
    },

    {
      'name': 'Rohit',
      'mob': '7566525409',
      'unread': '2'
    },

    {
      'name': 'Devi',
      'mob': '9966525409',
      'unread': '1'
    },

    {
      'name': 'Sonam',
      'mob': '6455525409',
      'unread': '2'
    },

    {
      'name': 'Mohan',
      'mob': '9171525409',
      'unread': '3'
    },

    {
      'name': 'Deepak',
      'mob': '6571525409',
      'unread': '1'
    },

    {
      'name': 'Jain sahab',
      'mob': '8871525409',
      'unread': '2'
    },

    {
      'name': 'Mohan Lal',
      'mob': '8871525409',
      'unread': '2'
    }

  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Flutter App",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),)),
        backgroundColor: Colors.orange,
      ),
      body: Container(

        // Anonimas fuction
        // har index me difference value ho to kya karna pare ga
        // child: ListView(
        //     children: arrData.map((value){
        //       return Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Padding(
        //           padding: const EdgeInsets.all(8.0),
        //           child: Container(
        //             decoration: BoxDecoration(
        //                 color: Colors.blue.shade100,
        //               borderRadius: BorderRadius.circular(11),
        //               border: Border.all(color: Colors.orange,width: 1)
        //             ),
        //
        //             child: Center(child: Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: Text(value),
        //             )),
        //           ),
        //         ),
        //       );
        //
        //     }).toList()
        // ),


        child: ListView(
            children: arrData.map((value){
              return ListTile(
                leading: Icon(Icons.account_circle),
                title: Text(value['name'].toString()),
                subtitle: Text(value['mob'].toString()),
                trailing: CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.green,

                    child: Text(value['unread'].toString(),style: TextStyle(color: Colors.white),)),
              );
            }).toList()
        ),





      ),);
  }
}
