import 'package:flutter/material.dart';
import 'package:untitled/Pages/HomePage.dart';
import 'package:untitled/Pages/Login_Page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/utils/routes.dart';
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
    //  home: HomePage(),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
            primarySwatch: Colors.blue,
             fontFamily: GoogleFonts.lato().fontFamily,
             primaryTextTheme: GoogleFonts.latoTextTheme(),

      ),
      routes: {
       "/" : (context) => LoginPage(),   // we cant use both this and line 17
        MyRoutes.homeRoutes : (context) => HomePage(),
        "/home": (context) => HomePage(),
      },
    );
  }
}
