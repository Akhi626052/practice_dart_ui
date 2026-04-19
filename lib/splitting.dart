import 'package:flutter/material.dart';
void main(){
  runApp(DashboardScreenNewApp());
}
class DashboardScreenNewApp extends StatelessWidget {
  const DashboardScreenNewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardScSplitting(),
      title: "Home Screen",
      theme: ThemeData(
        primaryColor: Colors.black,
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          color: Colors.blue,
        ),
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold
          ),

        )
      ),
    );
  }
}

class DashboardScSplitting extends StatelessWidget {
  const DashboardScSplitting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         // SizedBox(height: 20),
         // Text("data",style: Theme.of(context).textTheme.headlineLarge,)
        CatItems(),
          Contact(),
          SubCatItems(),
          BottomMenu(),

        ],
      ),
    );
  }
}


class CatItems extends StatelessWidget {
  const CatItems({super.key});
  @override
  Widget build(BuildContext context){
    return Expanded(
        flex: 2,
        child: Container(height: 200,color: Colors.blue,
          child: ListView.builder(itemCount: 10,scrollDirection: Axis.horizontal,itemBuilder: (context, index){
            return Padding(
              padding: EdgeInsets.all(11),
              child: SizedBox(width: 100,
                child: CircleAvatar(
                  backgroundColor: Colors.green,

                ),
              ),
            );

          }),

        ));
  }
}

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 4,
        child: Container(
          child: ListView.builder(itemBuilder: (context, index){
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                // backgroundImage: NetworkImage("https://via.placeholder.com/150"),
                backgroundImage: AssetImage("assets/images/profile.png"),

              ),title: Text("SoftWare Developer"),subtitle: Text("name: Akhilesh"),trailing: Icon(Icons.add),
            );
          }),

          height: 400,color: Colors.orange,));
  }
}

class SubCatItems extends StatelessWidget {
  const SubCatItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(height: 100,color: Colors.grey,
          child: ListView.builder(

              itemCount: 10,scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(color: Colors.black,width: 2),
                        borderRadius: BorderRadius.circular(11)
                    ),
                  ),
                );
              }),


        ));
  }
}

class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Container(
          // child: GridView.count(crossAxisCount: 4,mainAxisSpacing: 10,crossAxisSpacing: 10,
          //     children: [
          //       Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Container(
          //           color: Colors.red,width: 120,
          //         ),
          //       )
          //     ],
          // ),
          child: GridView.builder(
              scrollDirection: Axis.vertical,itemCount: 4,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 10,crossAxisSpacing: 10,
              crossAxisCount: 4),
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: 50,height: 50,
                    color: Colors.teal,
                  ),
                );

              }),
          height: 100,color: Colors.green,
        )

    );
  }
}

















// import 'package:flutter/cupertino.dart';
//
// void main(){
//   runApp(DashboardScreenApp());
// }
// class DashboardScreenApp extends StatefulWidget {
//   const DashboardScreenApp({super.key});
//
//   @override
//   State<DashboardScreenApp> createState() => _DashboardScreenAppState();
// }
//
// class _DashboardScreenAppState extends State<DashboardScreenApp> with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(vsync: this);
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
