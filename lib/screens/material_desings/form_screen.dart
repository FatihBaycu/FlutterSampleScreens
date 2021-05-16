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
  var kullaniciAdiTxt=TextEditingController();
  var kullaniciSifreTxt=TextEditingController();

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
                     controller: kullaniciAdiTxt,
                     decoration: InputDecoration(hintText: "Kullanıcı Adı"),
                     validator: (girilenMetin){
                       if(girilenMetin.isEmpty){
                         return "Kullancı adı giriniz";
                       }
                       return null;
                     },
                   ),
                     TextFormField(
                     controller: kullaniciSifreTxt,
                     decoration: InputDecoration(hintText: "Kullanıcı Şifre"),
                     validator: (girilenMetin){
                       if(girilenMetin.isEmpty){
                         return "Kullancı şifresini giriniz";
                       }   if(girilenMetin.length<6){
                         return "Kullancı şifresi en az 6 karakter olmalı";
                       }
                       return null;
                     },
                   ),
                     ElevatedButton(
                       child: Text("Giriş"),
                       onPressed: (){
                         bool kontrolSonucu=formKey.currentState.validate();
                         if(kontrolSonucu){
                           String kullaniciAdi=kullaniciAdiTxt.text;
                           String kullaniciSifre=kullaniciSifreTxt.text;
                           print("Kullancı Adı: $kullaniciAdi\nKullanıcı Şifre: $kullaniciSifre");
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
