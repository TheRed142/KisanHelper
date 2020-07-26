import 'package:flutter/material.dart';

class Symptoms extends StatefulWidget {
  @override
  _SymptomsState createState() => _SymptomsState();
}

class _SymptomsState extends State<Symptoms> {
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
            Text("The disease first appears on the lower leaves after the plant has set fruit. Leaf spots begin as yellow areas that later become circular with gray centers and dark borders. Spots may reach 1/8 inch in diameter and be surrounded by a yellow halo. Tiny black specks, which are fruiting structures that release spores, develop in the center of these spots. Severely infected leaves fall off. Defoliation progresses from the base of the plant upwards and resembles early blight from a distance. However, the larger dark lesions with concentric rings of early blight are clearly different from small, speckled lesions of Septoria leaf spot. Loss of foliage may cause fruits to become sunscalded. Most infection early in the season probably arises from infested plant debris remaining in the soil from a previous tomato crop. Spores of the fungus are spread by splashing rain. The disease is favored by moderate temperatures and extended periods of high relative humidity.")

          ],
      ),
    ));
  }
}
