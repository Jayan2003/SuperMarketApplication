import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sessionthursday/apps/calculatorApp.dart';
import 'package:sessionthursday/apps/chatDetails.dart';
import 'package:sessionthursday/apps/counterApp.dart';
import 'package:sessionthursday/apps/imagesApp.dart';
import 'package:sessionthursday/apps/loginpage.dart';
import 'package:sessionthursday/apps/messApp.dart';
import 'package:sessionthursday/apps/supermarket.dart';
import 'package:sessionthursday/apps/whatsapp.dart';
import 'package:sessionthursday/blocCubit/userState/userLogic.dart';
import 'package:sessionthursday/databaseApp.dart';
import 'package:sessionthursday/NewsApp.dart';
import 'package:sessionthursday/shoppingApp.dart';



void main() {
  //runApp(FirstApp());
  //runApp(imagesApp());
  // runApp(messApp());
  //runApp(SupermarketApp());
 //runApp(MyApp());
  /*runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan, // Define your primary swatch here
      ),
      home: Loginpage(),
    ),
  );*/
 /*runApp(
  MaterialApp(
   debugShowCheckedModeBanner: false,
   theme: ThemeData(
    primarySwatch: Colors.cyan, // Define your primary swatch here
   ),
   home: Databaseapp(),
  ),
 );*/
 /*runApp(
  BlocProvider(
   create:  (context) => Userlogic()..createDatabaseAndTable(),
    child: MaterialApp(
     debugShowCheckedModeBanner: false,
     theme: ThemeData(
      primarySwatch: Colors.cyan, // Define your primary swatch here
     ),
     home: ShoppingApp(),
    ),
  ),
 );*/
 runApp(
  MaterialApp(
   debugShowCheckedModeBanner: false,
      home:SupermarketApp(),
   ),
 );



}

