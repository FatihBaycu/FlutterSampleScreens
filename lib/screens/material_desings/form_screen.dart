import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyFromScreen(),
    );
  }
}

class MyFromScreen extends StatefulWidget{
  @override
  _MyFormScreen createState() =>_MyFormScreen();
}

class _MyFormScreen extends State<MyFromScreen>{

  var formKey=GlobalKey<FormState>();
  var usernameTxt=TextEditingController();
  var passwordTxt=TextEditingController();

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("Form"),),
     body: Center(
       child: SingleChildScrollView(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Padding(
               padding: const EdgeInsets.all(20),
               child: Form(
                 key: formKey,
                 child: Column(
                   children:[
                     TextFormField(
                     controller: usernameTxt,
                     decoration: InputDecoration(hintText: "Username"),
                     validator: (girilenMetin){
                       if(girilenMetin.isEmpty){
                         return "enter username";
                       }
                       return null;
                     },
                   ),
                     TextFormField(
                     controller: passwordTxt,
                     decoration: InputDecoration(hintText: "Password"),
                     validator: (girilenMetin){
                       if(girilenMetin.isEmpty){
                         return "Enter password";
                       }   if(girilenMetin.length<6){
                         return "password length must be at least 6 characters";
                       }
                       return null;
                     },
                   ),
                     ElevatedButton(
                       child: Text("Giriş"),
                       onPressed: (){
                         bool controlResult=formKey.currentState.validate();
                         if(controlResult){
                           String username=usernameTxt.text;
                           String password=passwordTxt.text;
                           print("Kullancı Adı: $username\nKullanıcı Şifre: $password");
                         }
                       },
                     ),
                 ],
                 ),
               ),
             ),
           ],
         ),
       ),
     ),
   );
  }
}
