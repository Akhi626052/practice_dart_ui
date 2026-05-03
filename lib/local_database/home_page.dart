import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20';
import 'package:practice_dart_ui/local_database/database_helper.dart';

class HomePage extends StatefulWidget{
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> allNotes = [];
  DBHelper? dbRef;
  @override
  void initState() {
    // TODO: implement initState
    dbRef = DBHelper.getInstance();
    super.initState();
    getNotes();
  }
  void getNotes()async{

   allNotes = await dbRef!.getAllNotes();
   // allNotes.addAll(iterable)
   setState(() {

   });
  }
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes"),
      ),
      // all node view here
      body: allNotes.isEmpty ? ListView.builder(itemBuilder: (_,index){
        // note to be added from here
        return ListTile(
          title: Text(allNotes[index][DBHelper.COLUMN_NOTE_TITLE]),
        );
      },
      itemCount: allNotes.length,
      ) : Center(child: Text("No Notes yet!!")),
      floatingActionButton: FloatingActionButton(onPressed: (){
       dbRef.addNote(mTitle: "Personal Fav Note", mDesc: "Do What you love or Love what you do ");
      },child: Icon(Icons.add),),
    );

  }
}