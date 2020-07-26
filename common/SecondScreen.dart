import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http_parser/http_parser.dart';
import 'package:image_picker/image_picker.dart';
import 'ThirdScreen.dart';
import 'package:path/path.dart';
import 'package:dio/dio.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  File _image;
  final GlobalKey<ScaffoldState> _scaffoldstate=new GlobalKey<ScaffoldState>();
  //String results,res1;


  Future getImagegal() async {
    final image = await ImagePicker.pickImage(source: ImageSource.gallery);
    _uploadFile(image);
    setState(() {
      _image = image;
    });
  }

  void _uploadFile(filePath) async {
    String filename = basename(filePath.path);
    print("File base name: $filename");
    try {
      FormData formData =
          new FormData.from({"file": new UploadFileInfo(filePath, filename)});
      Response response = await Dio()
          .post("http://192.168.0.106:5000/getNoteText", data: formData, options: Options(
        followRedirects: false,
        validateStatus: (status) { return status < 500; }
    ),);
      print("File upload response: $response");
      //results=response as String;

      //Show incoming messsage in snakbar
      _showSnakBarMsg(response.data['message']);
      //return results;
      
    } catch (e) {
      print("Exception Caught: $e");
    }
  }
  void _showSnakBarMsg(String msg){
    _scaffoldstate.currentState.showSnackBar(new SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key : _scaffoldstate,
      appBar: AppBar(
        title: Text("KisanHelper"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Container(
          child: Center(
              child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _image == null
              ? Text("Upload an Image")
              : Image.file(
                  _image,
                  width: 300,
                  height: 300,
                ),
                
            Padding(padding: EdgeInsets.all(10.0),),
          _image == null
              ? Text("Can not proceed since NO IMAGE IS SELECTED")
              : RaisedButton(
                  onPressed: () {
                   
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ThirdScreen()));
                  },
                  child: Text(">>Proceed<<")),
                   Padding(padding: EdgeInsets.all(10.0),),
          RaisedButton(
            onPressed: () {
              getImagegal();
            },
            child: Text("Select Image"),
          ),
          Padding(padding: EdgeInsets.all(10.0),),
          _image == null
              ? Text("")
              : Text("res1"),
        ],
      ))),
    );
  }
}
