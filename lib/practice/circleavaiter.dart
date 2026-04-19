import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20';
import 'package:practice_dart_ui/practice/statefullwidget.dart';

void main(){
  runApp(MyAppp());
}
class MyAppp extends StatelessWidget {
  const MyAppp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: MyAppDm(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        appBarTheme: AppBarTheme(
          color: Colors.yellow,
        ),
        textTheme: TextTheme(
          labelLarge: TextStyle(color: Colors.yellow, fontSize: 21),),
        )
      );

  }
}
class MyAppDm extends StatefulWidget{
  const MyAppDm({super.key});
  @override
  State<MyAppDm> createState() {
    return MyAppDmState();
  }
}
class MyAppDmState extends State<MyAppDm>{
  List<Color> colorName = [Colors.yellow, Colors.red, Colors.blue, Colors.green, Colors.purple, Colors.pink, Colors.cyan, Colors.amber];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        title: Text("Flutter App",style: TextStyle(color: Colors.white, ),),

      ),
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text("comming soon",style: TextStyle(color: Colors.black,fontSize: 10),),
          SizedBox(height: 20,),
          Center(
            child: Container(
              width: 100,height: 100,
              decoration: BoxDecoration(
                border: Border.all(width: 5,color: Colors.blue),
                borderRadius: BorderRadius.circular(50)
              ),
              child: CircleAvatar(
                radius: 50,backgroundColor: Colors.red, backgroundImage: AssetImage("assets/images/profile.png"),
                // child: Icon(Icons.account_circle,size: 40,color: Colors.white,),

              ),
            ),



          ),
          SizedBox(height: 20,),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10),bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
              // child: Image.asset("assets/images/awesome.png",height: 200,width: 600,fit: BoxFit.cover,),
              // child: Image(image: AssetImage("assets/images/awesome.png"),height: 200,width: 600,fit: BoxFit.cover,),
              // child: SizedBox(
              //     width: 100,height: 100,
              //     child: Icon(Icons.person_off,color: Colors.blue,size: 100,)),
              child: Image(image: NetworkImage("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),height: 200,width: 600,fit: BoxFit.cover,),


              // rong way Image(image: Image.asset("name")),
              // child: Container(
              //   width: 300,height: 100,
              //   color: Colors.blue,
              //   // decoration: BoxDecoration(
              //   //   borderRadius: BorderRadius.circular(10),
              //   //   border: Border.all(width: 5,color: Colors.blue),
              //   // ),
              // ),
            ),
          ),






          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              // physics: NeverScrollableScrollPhysics(),
              // shrinkWrap: true,
              // physics: AlwaysScrollableScrollPhysics(),
              // shrinkWrap: true,
               clipBehavior: Clip.hardEdge,
              children: [

                Container(
                  width: 200,height: 100,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.pink,
                      borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2, color: Colors.yellow)
                  ),),


                Container(margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 2, color: Colors.yellow)
                  ),width: 200,height: 100,),

                Container(margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 2, color: Colors.yellow)
                  ),width: 200,height: 100,),

                Container(margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 2, color: Colors.yellow)
                  ),width: 200,height: 100,),

                Container(
                  width: 200,height: 100,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 2, color: Colors.yellow)
                  ),),


                Container(margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 2, color: Colors.yellow)
                  ),width: 200,height: 100,),

                Container(margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 2, color: Colors.yellow)
                  ),width: 200,height: 100,),

                Container(margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 2, color: Colors.yellow)
                  ),width: 200,height: 100,),

              ],
            ),
          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 200,
            child: ListView(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 120,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.yellow, border: Border.all(width: 2, color: Colors.teal),borderRadius: BorderRadius.circular(12),

                    ),
                  ),
                )
              ],
            ),
          ),

     
        Text("Data-------------",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
        
       SizedBox(height: 50,),
       GridView(
           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 6,
               mainAxisSpacing: 10,
               crossAxisSpacing: 10,
               // childAspectRatio: 1,
               mainAxisExtent: 160),
          shrinkWrap: true,
         children: [
           Container(
             color: Colors.black,
             width: 100,
             height: 100,
           ),
           Container(
             color: Colors.yellow,
             width: 100,
             height: 100,
           ),
           Container(
             color: Colors.yellow,
             width: 100,
             height: 200,
           ),
         ],

       ),
        
        
        SizedBox(height: 50,),
        
        
        
        
        
        
        
        // GridView in flutter
        GridView(
           padding: EdgeInsets.symmetric(horizontal: 20),
           shrinkWrap: true,
           physics: NeverScrollableScrollPhysics(),
           gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent( // width control ho ti hai
           // crossAxisCount: 2,
            maxCrossAxisExtent: 200,
            mainAxisExtent: 100,
           // childAspectRatio: 6,
           mainAxisSpacing: 10, crossAxisSpacing: 10),
            children: [
            Container(
              width: 100,height: 100,
              color: Colors.red,),
            Container(
              width: 100,height: 100,
              color: Colors.yellow,),

              Container(
                width: 100,height: 100,
                color: Colors.red,),
              Container(
                width: 100,height: 100,
                color: Colors.yellow,),
           ],
          ),









          SizedBox(height: 50,),
          GridView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( // height control ho ti hai
                crossAxisCount: 2,
                mainAxisExtent: 200,
                childAspectRatio: 1,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10
            ),
            children: [
              Container(
                width: 100,height: 100,
                color: Colors.red,),
              Container(
                width: 100,height: 100,
                color: Colors.yellow,),

              Container(
                width: 100,height: 100,
                color: Colors.red,),
              Container(
                width: 100,height: 100,
                color: Colors.yellow,),
            ],
          ),

        SizedBox(height: 50,),

          
        GridView.builder(
           shrinkWrap: true,
           gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
               mainAxisExtent: 200,
               maxCrossAxisExtent: 100,mainAxisSpacing: 10,crossAxisSpacing: 10), itemCount: colorName.length,
         itemBuilder: (context,index){
           return Container(
             height: 100,
             color: colorName[index],
           );
         },
         ),

        SizedBox(height: 50,),

        GridView.builder(
          shrinkWrap: true,

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 100,
            childAspectRatio: 1,
            crossAxisCount: 3,mainAxisSpacing: 10,crossAxisSpacing: 10,
          ), itemCount: colorName.length,
            itemBuilder: (context, index){
            return Container(
              height: 100,
                color: colorName[index],
            );
            }
          ),





        SizedBox(height: 40,),

        ListView.builder(itemBuilder: (context,index){
          return Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 100, width: 100,
              color: colorName[index],
              margin: EdgeInsets.all(10),
            ),
          );
        },
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        itemCount: colorName.length,
            shrinkWrap: true,
            itemExtent: 100,
        ),

      SizedBox(height: 50,),

      Container(
        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: ListView.separated(

          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            shrinkWrap: true,
            itemBuilder: (context, index){
           return Container(
             height: 100, width: 100,
             color: colorName[index],
             // margin: EdgeInsets.all(10),
           );


        }, separatorBuilder: (context, index){
          return Divider(height: 6, thickness: 4,);
        }, itemCount: colorName.length),
      ),

      Container(
        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
         decoration: BoxDecoration(
           color: Colors.pink,
           border: Border.all(width: 2, color: Colors.black),
           borderRadius: BorderRadius.circular(10)
         ),
         height: 100,
        child: Center(
          child: ListTile(
            leading: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.white, width: 4)
                ),
                child: Icon(Icons.account_circle_outlined,size: 40,color: Colors.white,)),
            title: Text("Hello..",style: TextStyle(color: Colors.white
            ),),
            subtitle: Text("My Name is Akhilesh",style: TextStyle(color: Colors.white,),),
            trailing: Icon(Icons.add,size: 40,color: Colors.white),
          ),
        ),
      ),

      ListView.separated(itemBuilder: (context, index){
        return ListTile(
          leading: Icon(Icons.camera_alt,size: 50,),
          title: Text("Hello Dear..."),
          subtitle: Text("Welcome Akhilesh..."),
          trailing: Icon(Icons.add,size: 50,color: Colors.teal,),
        );
        
      }, separatorBuilder: (context, index){
        return Divider(
          thickness: 4,height: 4,
        );
      }, itemCount: colorName.length,
      shrinkWrap: true,
      ),
          



      Container(
        // margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        height: 200,
        child: ListView.builder(itemBuilder: (context,index){
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
              // maxRadius: 50,
              radius: 50,backgroundImage: AssetImage("assets/images/profile.png"),
              backgroundColor: Colors.teal,
              child: Icon(Icons.camera_alt),

            ),
          );

        }, itemCount: 10, shrinkWrap: true,
           scrollDirection: Axis.horizontal,
        ),
      ),

      SizedBox(height: 50,),

      Container(
            height: 200,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index){
                return CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/images/profile.png"),
                );
              },
              separatorBuilder: (context, index){
                return SizedBox(width: 10); // gap between items
              },
            ),
          ),

      Align(
           alignment: Alignment.centerLeft,
           child: Container(
             // color: Colors.yellow,
             //  width: double.infinity, 300
              height: 300,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              // decoration: BoxDecoration(
              //   color: Colors.yellow,
              //   border: Border.all(width: 2, color: Colors.black),
              //   borderRadius: BorderRadius.circular(10)
              // ),
             child: ListView.separated(
                // reverse: true,
                scrollDirection: Axis.horizontal,
               padding: EdgeInsets.symmetric(horizontal: 10),
               shrinkWrap: true,

                // physics: NeverScrollableScrollPhysics(),
               itemCount: 100,
               itemBuilder: (context,index){
                 return Container(
                   color: Colors.yellow,
                   width: 100,height: 100,
                 );
               },
               separatorBuilder: (context,index){
                 // return Divider(thickness: 4,height: 4,);
              return SizedBox(width: 10,);
               },


             ),
           ),
         ),

      //practice
      Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          // height: 300,
        child: GridView.builder(
          shrinkWrap: true,
            itemCount: 10,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,mainAxisSpacing: 10,crossAxisSpacing: 10,mainAxisExtent: 150),
            itemBuilder: (context, index){
               return Container(
                 width: 100,height: 100,color: Colors.yellow,
               );
        }),
      ),

          GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 100, mainAxisExtent: 100, mainAxisSpacing: 10,crossAxisSpacing: 10)
          ,shrinkWrap: true,
           physics: NeverScrollableScrollPhysics(),
            itemCount: colorName.length,
            itemBuilder: (context, index){
              return Container(
                width: 100,height: 100,color: colorName[index],
              );
            },
          ),

// clipRReact practice
 Align(
   alignment: Alignment.centerLeft,
   child: Container(
     width: 200,height: 200,
     color: Colors.yellow,
     margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
     child: SizedBox(
       width: 200,height: 200,
       child: Stack(
         // alignment: Alignment.center,
        children: [
          ClipRRect(
            clipBehavior: Clip.antiAlias,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),bottomRight: Radius.circular(10), bottomLeft: Radius.circular(10)),
            child: Image(image: AssetImage("assets/images/awesome.png"),width: 200,height: 200,fit: BoxFit.cover),
          ),
          Center(child: Text("Awesome Image...",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),))
           ],
         ),
       ),
     ),
    ),
           SizedBox(height: 50,),
           // circle avatar
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(width: 4, color: Colors.yellowAccent),
                  borderRadius: BorderRadius.circular(50),
                  // shape: BoxShape.circle
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 7,
                      offset: Offset(5, 5),
                      color: Colors.blue
                    )
                  ]
                ),
                child: CircleAvatar(
                backgroundColor: Colors.black,
                radius: 50,
                backgroundImage: AssetImage("assets/images/awesome.png",),),
              ),
            ),
            Icon(Icons.add,size: 20,color: Colors.blue,),

             Align(
               alignment: Alignment.centerLeft,
               child: Card(
                 elevation: 5,color: Colors.white,
                 // shadowColor: Colors.red.shade900,
                 // shadowColor: Colors.red.withOpacity(0.5),
               //   shape: RoundedRectangleBorder(
               //   borderRadius: BorderRadius.circular(10),
               //   side: BorderSide(
               //     color: Colors.blue,width: 2
               //   )
               // ),
               //   shape: CircleBorder(),

                 // shape: StadiumBorder(),

                 child: Container(
                   decoration: BoxDecoration(
                     color: Colors.black,
                     border: Border.all(width: 2,color: Colors.red),
                     borderRadius: BorderRadius.circular(10),
                   ),
                   child: Center(child: Text("Data...",style: TextStyle(color: Colors.white),)),
                   margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),

                   width: 200,height: 100,
                 ),
               ),
             ),
             SizedBox(
               height: 50,
             ),




           Align(
             alignment: Alignment.centerLeft,
             child: Container(
               margin: EdgeInsets.only(left: 10),
               width: 200,height: 100,
               decoration: BoxDecoration(
                 color: Colors.black,
                 boxShadow: [
                   BoxShadow(
                     color: Colors.grey.withOpacity(0.5),
                     blurRadius: 7,
                     spreadRadius: 5,
                     offset: Offset(10,5),
                   )
                 ]
               ),
             ),
           ),

           SizedBox(height: 20,),



        ],
      ),
    );
  }
}
