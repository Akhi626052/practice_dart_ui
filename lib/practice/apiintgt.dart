import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DataShow(),
  ));
}
class DataShow extends StatefulWidget {
  const DataShow({super.key});

  @override
  State<DataShow> createState() => _DataShowState();
}

class _DataShowState extends State<DataShow> {
  void initState(){
    super.initState();
    getData();
    getMapData();
    getListData();
    listPractice();
    mapToListConversion();
    list = user.entries.toList();
    getStringData();
  }
  void getData() async {

    try{

      var response = await http.get(
          Uri.parse("https://jsonplaceholder.typicode.com/todos/1"));

      if (response.statusCode == 200) {
        String dt = response.body;
        print("sssssssssssssssss: ${dt}");

        Map<String, dynamic> data = jsonDecode(response.body);
        print("aaaaaaaaaaaaaaaaaaaaaa: $data");
        print("aaaaaaaaaaaaaaaaaaaaaa: ${data["title"]}");

      }
      else{
        print("Server error${response.statusCode}");
      }


    }
    catch(e){
      print("Exception: ${e}");
      if(e.toString().contains("Failed To Fetch")){
        print("No Internet Connection");
        print("possible reasons");
        print("1. No Internet");
        print("2. CORS issue (Flutter Web)");
        print("3. API blocked");
      }
    }

  }



void getMapData(){
    // 1. Basic Map Example
  Map<String, dynamic> dataMap = {
    "id" : 1,
    "title" : "Flutter",
    "price" : 1000,
  };
  // 2. Value Access (Most Important)
  print("Value Access in Map: ${dataMap["title"]}");
  // Key ke through value milti hai
  // 3. Safe Access (Null Safety)
  print(dataMap["price"] ?? "Price not found"); // 1000
  // 4. All Keys nikalna
  print(dataMap.keys);
  // 5. All Values nikalna
  print(dataMap.values);
  //  6. Loop through Map
  //  (a) forEach
  dataMap.forEach((key, value){
    print("$key : $value");
  });
  // (b) for loop
  for(var key in dataMap.keys){
    print("$key : ${dataMap[key]}");
  }
  // 🔹 7. Check Key Exist ya nahi
  print(dataMap.containsKey("title")); // true
  print(dataMap.containsKey("description")); // false
  // 🔹 8. Check Value Exist ya nahi
  print(dataMap.containsValue(1000)); // true
  // 🔹 9. Add New Data
  dataMap["category"] = "Mobile Development";
  // 🔹 10. Update Value
  dataMap["price"] = 1200; // Update existing key
  //🔹 11. Remove Data
  dataMap.remove("id");
  //🔹 12. Map Length
  print(dataMap.length);
  // 🔹 13. Clear Map
  dataMap.clear();

  print(dataMap);
  // 🔹 14. Nested Map (Important 🔥)
 Map<String, dynamic> newDataMap = {
    "id" : 2,
    "title" : "Dart",
    "price" : {
      "original" : 1500,
      "discounted" : 1200
    }
 };
  print(newDataMap);
  print(newDataMap["price"]["discounted"]);

  // 🔥 Short Summary (Interview)
  // Map = key-value pair
  // Access → map["key"]
  // Loop → forEach()
  // Check → containsKey()
  // Modify → add/update/remove


 void getListData() {
  List<Map<String, dynamic>> dataList = [
    {
      "id": 1,
      "title": "Flutter",
      "price": 1000,
    },
    {
      "id": 2,
      "title": "Dart",
      "price": 1500,
    },
    {
      "id": 3,
      "title": "React Native",
      "price": 1200,
    }
  ];
  for (var item in dataList) {
    print("Title: ${item["title"]}, Price: ${item["price"]}");
  }
}
// 15. API Data Access (Real Example)
  void dmo() async{
   var rs = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/todos/"));
   Map<String, dynamic> dm = jsonDecode(rs.body);
   if(rs.statusCode == 200){
     print(dm);
   }

  }


}

void getListData(){
List<String> dataList = ["Flutter","Dart","React Native", "Java", "Python"];
dataList.add("Swift");
dataList.addAll(["iterable","JavaScript"]);
dataList.insert (0, "C");
dataList.insertAll(2, ["x","y"]);
//🔹 4. Update Data
dataList[0] = "C++";
dataList.remove("iterable");
dataList.removeAt(1);
dataList.removeLast();
// dataList.clear();
print("List Length ${dataList.length}");
dataList.removeWhere((item) => item.startsWith("P"));
dataList.isEmpty;
dataList.isNotEmpty;
print(dataList);
print(dataList[0]);
for(int i = 0; i < dataList.length; i++){
  print(dataList[i]);
}
dataList.forEach((item){
  print("fffffffffffffffffffffff: $item");

});
print(dataList.contains("Swift"));
dataList.indexOf("Swift");
print("-----------------------------------");
dataList.sort();
print(dataList.reversed);
// 🔹 15. Map (transform list)
var upperList = dataList.map((item) => item.toUpperCase()).toList();
print(upperList);
// 🔹 16. Where (filter)
var filteredList = dataList.where((item) => item.startsWith("R")).toList();
print(filteredList);
// 🔹 17. First / Last
print(filteredList.first);
print(filteredList.last);
// 🔹 18. List of Map (Very Important 🔥)
print("------------------------------------");
List<Map<String, dynamic>> dataList2 = [
  {
    "id": 1,
    "title": "Flutter",
    "price": 1000,
  },
  {
    "id": 2,
    "title": "Dart",
    "price": 1500,
  },
  {
    "id": 3,
    "title": "React Native",
    "price": 1200,
  }
];
print(dataList2[2]["title"] ?? "No Title");



}

void listPractice() {
    List<String> names = ["A", "B", "C"];

    names.add("D");
    names.addAll(["E", "F"]);

    names.insert(1, "X");
    names.insertAll(2, ["Y", "Z"]);

    names[0] = "Updated";

    names.remove("B");
    names.removeAt(1);
    names.removeLast();

    names.removeWhere((e) => e == "C");

    print(names.length);
    print(names.contains("A"));

    names.forEach((e) => print(e));

    names.sort();
    print(names.reversed);

    var upper = names.map((e) => e.toUpperCase()).toList();
    print(upper);

    names.clear();
  }

  // 💡 Interview Short Answer
  // Add → add(), addAll()
  // Insert → insert(), insertAll()
  // Update → list[index] = value
  // Delete → remove(), removeAt(), removeWhere()
  // Clear → clear()
  // Loop → forEach(), for
  // Filter → where()
  // Transform → map()

  // Haan bhai 👍 Map ko List me convert kar sakte ho


  void mapToListConversion() {
    print("-------------kjkl----------------------");
  Map<String, dynamic> dataMap = {
    "id": 1,
    "name": "Akhilesh",
    "age": 30,
    "city": "Lucknow"
  };
  List MapToListKy = dataMap.keys.toList();
  List MapToListVl = dataMap.values.toList();
  List MapToListEntries = dataMap.entries.toList();
  // List<Map<String, dynamic>> dataList = [dataMap];
  print(MapToListKy);
  print(MapToListVl);
  print(MapToListEntries);
    //🔹 4. Custom List (Most Useful 🔥)

  List<Map<String, dynamic>> dataList = dataMap.entries.map((entry){
    return {
      "key": entry.key,
      "value": entry.value
    };

  }).toList();
  print(dataList);

  // 🔹 4. Custom List (Most Useful 🔥)
    List titles = [dataMap["name"]];
    print(titles);

// Nested map --> list
    Map<String, dynamic> user = {
      "name": "Akhilesh",
      "skills": {
        "flutter": true,
        "dart": true
      }
    };
    List skillKeys = user["skills"].keys.toList();
    print(skillKeys);

  }




  void getStringData(){
  String text = " Flutter is awesome";
  print(text.length); // length
  print(text);
  print(text.trim());
  print(text.trimLeft());
  print(text.trimRight());
  print(text.toUpperCase());
  print(text.toLowerCase());
  print(text.contains("Flutter")); // true, contains check
  print(text.isEmpty); // false
  print(text.isNotEmpty); // true
  print(text.startsWith(" ")); // true
  print(text.endsWith(" ")); // false
 print(text.replaceAll("Flutter", "Dart"));
 List parts = text.split(" "); // 🔹 7. Split (Most Important 🔥)
 print(parts);
 print(text.trimLeft());
 String world = "Flutter";
 print(world.substring(0,4));// SubString // Flut
print(world.indexOf("t")); // 3 // position
print(world.lastIndexOf("t"));
// 🔹 12. Replace Range
String str = "Flutter";
print(str.replaceRange(0, 4, "Dart")); // Darter
// 🔹 13. PadLeft / PadRight
print("5".padLeft(3,"0")); // 005
print("5".padRight(3,"1")); // 511
// 🔹 14. CompareTo
print("A".compareTo("B"));
// print("A".codeUnits);
print("A".codeUnits); // code units ascii value
// print("🔥".runes);    // 🔹 16. Runes (Unicode)
String num = "100";
int n = int.parse(num);
print(n);
double d = double.parse("10.5");
print(d);
// 🔹 18. Number → String
int nm = 200;
String s = nm.toString();
print(s);
// 🔹 19. Join (List → String)
List names = ["Akhilesh", "Flutter", "Dart"];
String joined = names.join(", ");
print(joined);
// 🔹 20. Interpolation (Most Used 🔥)
String name = "Akhilesh";
print("Welcome ${name}");
// 🔥 Real Example (Interview Level)

void realExample() {
      // String email = "  test@gmail.com ";
      //
      // email = email.trim();
      //
      // if (email.contains("@")) {
      //   List parts = email.split("@");
      //   print("Username: ${parts[0]}");
      //   print("Domain: ${parts[1]}");
      // }
  String em = " akhilesh@gmail.com ";
  em = em.trim();
  print(em);
  if(em.contains("@")){
    List parts = em.split("@");
    print(parts);
    print("userName: ${parts[0]}");
    print("Domain: ${parts[1]}");
    String abc = "A,B,C";
    List ab = abc.split(",");
    print(ab);
    print("print of value: ${ab[0]}");
    List list = ["A", "B", "C"];
    print(list.join(","));

  }
}
realExample();

//
//     💡 Short Notes (Interview)
//
//     👉 Modify
//
//     toUpperCase(), toLowerCase(), replaceAll()
//
//     👉 Check
//
//     contains(), startsWith(), endsWith()
//
//     👉 Convert
//
//     split() → String → List
//     join() → List → String
//
//     👉 Clean
//
//     trim()
//
//     👉 Access
//
//     substring(), indexOf()

  }
bool isValidEmail(String email){
    return email.contains("@") && email.contains(".") && email.trim().isNotEmpty;
}
bool isValidPassword(String password) {
  return password.length >= 6 && password
      .trim()
      .isNotEmpty;
}


  Map<String, dynamic> user = {
    "name": "Akhilesh",
    "skills": {
      "flutter": true,
      "dart": true
    }
  };

  late List<MapEntry<String, dynamic>> list;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(list[index].key),
            subtitle: Text(list[index].value.toString()),
          );
        },
      ),
    );
  }
}
