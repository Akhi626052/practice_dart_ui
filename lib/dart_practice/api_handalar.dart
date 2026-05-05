import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

Future<void> login() async {
  try {
    var response = await apiCall();
    if (response == null) {
      throw Exception("No data");
    }
    print("Login success: $response");
   } catch (e) {
    print("Login failed: $e");
  } finally {
    print("Process completed");
  }
}

// Future<String?> apiCall() async {
//   await Future.delayed(Duration(seconds: 2)); // simulate API delay
//
//   // success case
//   return "User data";
//
//   // error case try karne ke liye 👇
//   // throw Exception("Server error");
//
//   // null case 👇
//   // return null;
// }


Future<Map<String, dynamic>?> apiCall() async {
  final url = Uri.parse("https://jsonplaceholder.typicode.com/users/1");

  final response = await http.get(url);

  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception("Failed to load data");
  }
}

void main() async {
  await login();
}