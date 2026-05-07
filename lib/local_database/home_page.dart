import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_dart_ui/local_database/database_helper.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),));
}
class HomePage extends StatefulWidget{
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String errorMsg = "";
  List<Map<String, dynamic>> allNotes = [];
  DBHelper? dbRef;
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    dbRef = DBHelper.getInstance;
    super.initState();
    getNotes();
  }
  void getNotes() async {

   allNotes = await dbRef!.getAllNotes();
   // allNotes.addAll(iterable)
   setState(() {

   });
   // getNotes();
  }



  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes"),
      ),
      // all node view here
      body: allNotes.isNotEmpty ? ListView.builder(itemBuilder: (_,index){
        // note to be added from here
        return ListTile(
          // leading: Text('${allNotes[index][DBHelper.COLUMN_NOTE_SNO].toString()}'),
          leading: Text('${index+1}'),
          title: Text(allNotes[index][DBHelper.COLUMN_NOTE_TITLE]),
          subtitle: Text(allNotes[index][DBHelper.COLUMN_NOTE_DESC]),
          trailing: SizedBox(width: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                    onTap: (){
                    showModalBottomSheet(context: context, builder: (context){
                      titleController.text = allNotes[index][DBHelper.COLUMN_NOTE_TITLE];
                      descController.text = allNotes[index][DBHelper.COLUMN_NOTE_DESC];
                      return getBottomSheetWidget(isUpdate: false,sno: 0);
                    });


                    },
                    child: Icon(Icons.edit)),
                InkWell(
                    onTap: () async{

                      bool check = await dbRef!.deleteNote(sno: allNotes[index][DBHelper.COLUMN_NOTE_SNO]);
                      if(check){
                        getNotes();
                      }
                      },
                    child: Icon(Icons.delete, color: Colors.red,))
              ],
            ),
          ),
        );
      },
      itemCount: allNotes.length,
      ) : Center(child: Text("No Notes yet!!")),
      floatingActionButton: FloatingActionButton(onPressed: () async{

        // String errorMsg = "";


        // bool check = await dbRef!.addNote(mTitle: "Personal Fav Note", mDesc: "Do What you love or Love what you do ");
        // if(check){
        //   getNotes();
        // }

       showModalBottomSheet(context: context, builder: (context){ // annonimas function

         return getBottomSheetWidget(isUpdate: true);


       });


      },child: Icon(Icons.add),),
    );


  }


  Widget getBottomSheetWidget({bool isUpdate = false, int sno = 0}){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      child: Column(
        children: [
          Text(isUpdate ? "Update Note" : "Add Note",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          SizedBox(height: 21,),
          TextField(
            controller: titleController,
            decoration: InputDecoration(
                hintText: "Enter title here",
                label: Text('Title *'),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),

                ),

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),


                )
            ),),

          // description field
          SizedBox(height: 21,),
          TextField(
            maxLines: 4,
            controller: descController,
            decoration: InputDecoration(
                hintText: "Enter title here",
                label: Text('Desc *'),
                alignLabelWithHint: true,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),

                ),

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),


                )
            ),),
          SizedBox(height: 21,),
          Row(
            children: [

              Expanded(
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                            side: BorderSide(
                                width: 2,
                                color: Colors.black
                            )
                        )
                    ),
                    onPressed: () async{
                      var mTitle = titleController.text;
                      var mDesc =  descController.text;
                      if(mTitle.isNotEmpty && mDesc.isNotEmpty){
                        bool check = isUpdate ? await dbRef!.updateNote(mTitle: mTitle, mDesc: mDesc, sno: sno) :
                        await dbRef!.addNote(mTitle: mTitle, mDesc: mDesc);

                        if(check){
                          getNotes();
                          // Navigator.pop(context);
                        }

                        else{
                          errorMsg = "*Please fill all the required blanks";
                          setState(() {

                          });
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please file all the required blanks!!")));
                        }
                        titleController.clear();
                        descController.clear();
                        Navigator.pop(context);
                      }

                    }, child: Text(isUpdate ? "Update Note" : "Add Note")),
              ),
              SizedBox(width: 11,),

              Expanded(
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                            side: BorderSide(
                                width: 2,
                                color: Colors.black
                            )
                        )
                    ),
                    onPressed: (){
                      Navigator.pop(context);
                    }, child: Text('Cancel')),


              ),

              Text(errorMsg),

            ],
          )


        ],
      ),
    );
  }
}


class BottomSheetView extends StatefulWidget{

  @override
  State<StatefulWidget> createState(){
    return _BottomSheetViewState();
  }
}
class _BottomSheetViewState extends State<BottomSheetView>{
  @override
  Widget build(BuildContext context){
    return Container();
  }
}




