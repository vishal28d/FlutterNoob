import 'package:flutter/material.dart';
import 'package:untitled/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Material (
      color: Colors.white ,
     child: Padding(
       padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 32.0),
       child: SingleChildScrollView(
         child: Column(
           children: [
             Image.asset('assets/images/Login_image.png',
                 fit: BoxFit.cover,
             ),
             SizedBox(height: 20.0,
             ),
             Text(
               " Welcome to flutter",
               style: TextStyle(
                 fontSize: 28,
                 fontWeight: FontWeight.bold,
               ),
             ),
             TextFormField(
               decoration: InputDecoration(
                 hintText: "Enter username",
                 labelText: "Username",
               ),
             ),
             TextFormField(
               obscureText: true,
               decoration: InputDecoration(
                 hintText: "Enter password",
                 labelText: "Password",
               ),
             ),
             SizedBox(height: 40.0,
             ),
             ElevatedButton(
               onPressed: (){
                Navigator.pushNamed(context, MyRoutes.homeRoutes);
               },
                 child: Text("Login"),
             style: TextButton.styleFrom(
               minimumSize: Size(120, 50)
             ),
             )
           ],
         ),
       ),
     )
    );
  }
}
