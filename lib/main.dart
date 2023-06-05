import 'package:blackcoffer/screens/Business.dart';
import 'package:blackcoffer/screens/HomeScreen.dart';
import 'package:blackcoffer/screens/Personal.dart';
import 'package:blackcoffer/screens/RevealScreen.dart';
import 'package:blackcoffer/screens/merchant.dart';
import 'package:flutter/material.dart';


void main() async {
 
  runApp(
    MaterialApp(  
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(  
        length: 3,  
        child:HomeScreen(),
        
        ))
    );  
}
