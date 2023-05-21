import 'package:flutter/material.dart';
import 'package:mondaymorningfrontend/home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mondaymorningfrontend/search.dart';
import 'package:mondaymorningfrontend/login.dart';
void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/home':(context)=>Home(),
      '/search':(context)=>Search(),
      '/login':(context)=>Login(),
      },
  ));
}