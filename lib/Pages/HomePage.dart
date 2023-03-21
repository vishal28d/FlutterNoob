import 'package:flutter/material.dart';
import 'package:untitled/Pages/Drawer.dart';




class HomePage extends StatelessWidget {
  final int day = 30;
  final String name = "Codepur";

  @override
  Widget build(BuildContext context){
  return Scaffold(
   appBar: AppBar(
     backgroundColor: Colors.white,
     elevation: 0.0,
       iconTheme: IconThemeData(color: Colors.black),
     title: Text(
       "Catalog App",
       style: TextStyle(color: Colors.black, fontSize: 18
      ),
     ),
),
    drawer: MyDrawer(),
  );

  }
}

// class MyDrawer extends StatelessWidget {
//   const MyDrawer({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final imageURL = 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fmedia.licdn.com%2Fdms%2Fimage%2FC5603AQFuBs7uHYSt5Q%2Fprofile-displayphoto-shrink_800_800%2F0%2F1602561413520%3Fe%3D2147483647%26v%3Dbeta%26t%3Dx8ZlhTBrzmjkYeZ00xLrl4cbS1snPB7oh_A1ZnfIspA&tbnid=E1WNnrCxBegqkM&vet=12ahUKEwiV-ejuluf9AhXe83MBHcikADsQMygAegQIARAq..i&imgrefurl=https%3A%2F%2Fin.linkedin.com%2Fin%2Fvishal28d&docid=ZiDQRiz1eajiOM&w=560&h=560&q=vishal%20maurya%20iiit%20bhopal&ved=2ahUKEwiV-ejuluf9AhXe83MBHcikADsQMygAegQIARAq';
//     return Drawer(
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: [
//           DrawerHeader(
//             decoration: BoxDecoration(color: Colors.red),
//               padding: EdgeInsets.zero,
//               child: UserAccountsDrawerHeader(
//                 margin : EdgeInsets.zero,
//                 accountName: Text("Vishal Maurya"),
//                 accountEmail: Text("Vishamaurya9049@gmail.com"),
//                 currentAccountPicture: CircleAvatar(
//                   backgroundImage: NetworkImage(imageURL) ,
//                   backgroundColor: Colors.red,
//                 ),
//               )
//           ),
//           ListTile(
//             leading: Icon(
//             Icons.home ,
//             color: Colors.white,
//             ),
//             title: Text(
//               "Home",
//               textScaleFactor: 1.2,
//               style: TextStyle(
//                 color: Colors.white,
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
