// ignore_for_file: await_only_futures

import 'dart:convert';
import 'package:apiuse/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
Future <String>  fetch(stri) async{
 try{
   var data =  await http.get(Uri.parse('https://api.genderize.io?name=$stri'));
  return jsonDecode(data.body)["gender"];
 }catch(e){
   return 'write your name';
 }
}
class Texti  extends ChangeNotifier{
    String ?gender;
    void getgender ()async{
      
        gender= await fetch(mycon.text);
        notifyListeners();
    }
    
}