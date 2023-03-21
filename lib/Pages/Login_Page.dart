import 'package:flutter/material.dart';
import 'package:untitled/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "" ;
  bool changeButton = false ;
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    setState(() {
      changeButton = true ;
    });

    await Future.delayed(Duration(seconds: 1 ));
    await Navigator.pushNamed(context, MyRoutes.homeRoutes);
    setState(() {
      changeButton = true ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Material (
      color: Colors.white ,
     child: Padding(
       padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 32.0),
       child: SingleChildScrollView(
         child: Form(
           key: _formKey ,
           child: Column(
             children: [
               Image.asset('assets/images/hey.png',
                   fit: BoxFit.cover,
               ),
               const SizedBox(height: 20.0,
               ),
               Text(
                 " Welcome $name",
                 style: const TextStyle(
                   fontSize: 28,
                   fontWeight: FontWeight.bold,
                 ),
               ),
               TextFormField(
                 decoration: InputDecoration(
                   hintText: "Enter username",
                   labelText: "Username",
                 ),
                // validator: ( value) => value!.isEmpty ? "Enter valid Username" : null,


                 onChanged: (value){
                   name = value ;
                   setState(() {

                   });
                 },
               ),

               TextFormField(
                 obscureText: true,
                 decoration: InputDecoration(
                   hintText: "Enter password",
                   labelText: "Password",
                 ),
                 validator: ( value){
                   if(value == null || value.isEmpty ){
                     return "Password cannot be empty" ;
                   }
                  return null ;
                 },

               ),

               const SizedBox(height: 40.0,
               ),
                Material (
                  color: Colors.deepPurple,
                 borderRadius: BorderRadius.circular(changeButton? 50 : 8),
                 child: InkWell(
                   onTap: () async => moveToHome(context),
                   child: AnimatedContainer(
                     duration: Duration(seconds: 1 ),
                     height:  50 ,
                     width: changeButton? 50 : 150 ,
                     alignment: Alignment.center ,
                     child: changeButton? Icon(Icons.done) : Text("Login",
                       style:   TextStyle(color: Colors.white,
                             fontWeight: FontWeight.bold,
                         fontSize: 18)
                     ),
                     decoration: BoxDecoration(
                         color: Colors.deepPurple,
                       borderRadius: BorderRadius.circular(changeButton?25 : 8)
                     ),
                   ),
                 ),
               )


               // ElevatedButton(
               //   onPressed: (){
               //    Navigator.pushNamed(context, MyRoutes.homeRoutes);
               //   },
               //     child: Text("Login"),
               // style: TextButton.styleFrom(
               //   minimumSize: Size(120, 50)
               // ),
               // )
             ],
           ),
         ),
       ),
     )
    );
  }
}
