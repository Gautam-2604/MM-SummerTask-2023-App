import 'package:flutter/material.dart';
import 'package:mondaymorningfrontend/home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mondaymorningfrontend/search.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black,),
          onPressed: (){
            setState(() {
              Navigator.pushReplacementNamed(context, '/home');
            });
          },
        ),
        title: Text('Admin Login',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          fontFamily: 'Source Serif Pro',
          color: Colors.black,
        ),
        ),
      ),
     body: Column(
       crossAxisAlignment: CrossAxisAlignment.center,

       children: [



           Align(
             alignment: Alignment.center,
             child: Icon(Icons.person,color: Colors.black,
             size: 200,),
           ),
         Align(
           child: SizedBox(
             width: 500,
             child: TextField(

               controller: _loginController,
               decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 hintText: 'User ID',
                 suffixIcon: IconButton(

                   icon: Icon(Icons.clear,color: Colors.black,),
                   onPressed: ()=>_loginController.clear(),
                 )

               ),

             ),
           ),

         ),
         Container(
           padding: EdgeInsets.all(10.0),
         ),
         Align(
           child: SizedBox(
             width: 500,
             child: TextField(

               controller: _passController,
               decoration: InputDecoration(
                   border: OutlineInputBorder(),
                   hintText: 'Password',
                   suffixIcon: IconButton(

                     icon: Icon(Icons.clear,color: Colors.black,),
                     onPressed: ()=>_passController.clear(),
                   )

               ),

             ),
           ),

         ),
         Container(
           padding: EdgeInsets.all(10.0),
         ),
         SizedBox(
           width: 500,
           child: FloatingActionButton.extended(
             backgroundColor: Colors.black,

             onPressed: (){

             },
             label: Text('Login',
             style: TextStyle(
               fontSize: 30,
               color: Colors.white,
               fontWeight: FontWeight.bold,
               fontFamily: 'Source Serif Pro',
             ),
             ),
           ),
         )


       ],
     ),
    );
  }
}
