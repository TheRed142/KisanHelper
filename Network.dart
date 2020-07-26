import 'dart:convert';
import 'package:intern/servermodel.dart';
import 'package:http/http.dart';

class Network{

  Future<servermodel> getDetails() async{
    var finalUrl = "http://192.168.0.106:5000/getNoteText";

    final response = await get(Uri.encodeFull(finalUrl)); 

    if(response.statusCode==200){
      return servermodel.fromJson(json.decode(response.body));
    }else{
      throw Exception("Error in fetching data");
    }

  }
}