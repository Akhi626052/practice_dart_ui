import 'package:flutter/material.dart ';
void main(){
  int a = 10;
  print("value of a: $a");
  MyInput myClass = MyInput(
    hintText: "Flutter",
    keyboardType: TextInputType.text,
  );
  print(myClass.toString());



    Map<String, dynamic> jsonData = {
      "id": 1,
      "name": "Akhilesh",
      "email": "akhilesh@gmail.com"
    };
    print("Name print: ${jsonData["name"]}");
    print("Name print: ${jsonData["id"].toString()}");
    // print(jsonData.toJson());
    UserModel user = UserModel.fromJson(jsonData);
    print("User data: ${user.name}");

// jsonData.toJson();
// UserModel userModel = UserModel.fromJson(jsonData);
// print(userModel);

}
class MyInput {
  String? hintText;// "Flutter"
  TextInputType? keyboardType;// TextInputType.text
  MyInput({
    this.hintText,
    this.keyboardType
});
// @override
// String toString(){
//   return "hintText: $hintText, keyboardType: $keyboardType";
// }

  UserModel userModel = UserModel(id: 1, name: "Akhilesh", email: "akhilesh@gmail.com");

}

class UserModel{
  int id;
  String name;
  String email;
  int? mobileNumber;
  UserModel({
    required this.id,
    required this.name,
    required this.email,
    this.mobileNumber = 1234567890,
  });
  @override
  String toString(){
    return "id: $id, name: $name, email: $email";
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      mobileNumber: json['mobileNumber'], //  ?? 1234567890
    );
  }
}




// class UserModel{
//   int id;
//   String name;
//   String email;
//   int mobileNumber;
//   UserModel({
//     required this.id,
//     required this.name,
//     required this.email,
//     int? mobileNumber,
// }) : mobileNumber = mobileNumber ?? 1234567890;
//   @override
//   String toString(){
//     return "id: $id, name: $name, email: $email";
//   }
// }