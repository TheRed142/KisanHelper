import 'package:flutter/material.dart';
class Remedies extends StatefulWidget {
  @override
  _RemediesState createState() => _RemediesState();
}

class _RemediesState extends State<Remedies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KisanHelper"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:<Widget>[
            Text("Removing infected leaves:",style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),),
            Text("Remove infected leaves immediately, and be sure to wash your hands thoroughly before working with uninfected plants."),
            Padding(padding: EdgeInsets.all(10.0),),
            Text("Consider organic fungicide options:",style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),),
            Text("Fungicides containing either copper or potassium bicarbonate will help prevent the spreading of the disease. Begin spraying as soon as the first symptoms appear and follow the label directions for continued management."),
            Padding(padding: EdgeInsets.all(10.0),),
            Text("Consider chemical fungicides:",style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),),
            Text("While chemical options are not ideal, they may be the only option for controlling advanced infections. One of the least toxic and most effective is chlorothalonil (sold under the names Fungonil and Daconil)."),

          ],
      ),
    ));
  }
}