import 'dart:convert';
import 'package:intern/servermodel.dart';
import 'package:http/http.dart';

class Network{

  Future<servermodel> getDetails() async{
    var finalUrl = "Your API";

    final response = await get(Uri.encodeFull(finalUrl)); 

    if(response.statusCode==200){
      return servermodel.fromJson(json.decode(response.body));
    }else{
      throw Exception("Error in fetching data");
    }

  }
}
