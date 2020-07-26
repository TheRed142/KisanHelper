import 'package:flutter/material.dart';
import 'package:intern/common/Remedies.dart';

import 'Symptoms.dart';

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("KisanHelper"),
          backgroundColor: Colors.greenAccent,
        ),
        body: Container(child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Plant: Tomato", style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),),
            Padding(padding: EdgeInsets.all(10.0),),
            Text("Disease: Septoria Leaf Spot",style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),),
            Padding(padding: EdgeInsets.all(10.0),),
            RaisedButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Symptoms()));
            },
            child: Text("Symptoms"),
            ),
            Padding(padding: EdgeInsets.all(10.0),),
            RaisedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Remedies()));
            },
            child: Text("Remedies"),
            )
          ],
        ))));
  }
}
