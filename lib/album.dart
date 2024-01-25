import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class Album {
  int userId;
  int id;
  String title;

  Album(this.id, this.title, this.userId);
}


// You either give the variable an initial id or you initialise it
// For ID, we will force an initialise by using the constructor 
// Constructors have the same name as the class 
// In the constructor, we are using non-named parameters, When you create any instance of the ID it must follow the order of variables 
// If you don't want this approach, use named paramters so when users are supplyings they explictly declare the name7

  // Future<void> _getData() async {

  //   String urlString = "https://jsonplaceholder.typicode.com/albums/1/";
  //   Uri uri = Uri.parse(urlString);
  //   var response = await http.get(uri);
  //   if (response.statusCode == 200) {
  //     var id = item

  //   }
  // }