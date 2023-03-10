import 'package:flutter/material.dart';
import 'package:untitled/Pages/HomePage.dart';
import 'package:untitled/Pages/Login_Page.dart';
import '';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 30 ;
    String name = "Codepur";
    return MaterialApp  (
      home: HomePage(),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
            primarySwatch: Colors.blue,


      ),
      routes: {
     //   "/" : (context) => LoginPage(),   // we cant use both this and line 17
        "/home": (context) => HomePage(),
        "/home": (context) => HomePage(),
      },
    );
  }
}
