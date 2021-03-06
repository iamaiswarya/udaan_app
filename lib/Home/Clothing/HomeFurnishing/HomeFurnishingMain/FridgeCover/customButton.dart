import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:udaan/Home/Clothing/Furnishingseller/commonfurnishing.dart';
import 'package:udaan/Home/Clothing/common.dart';

class customButton extends StatelessWidget {
  customButton({@required this.onPressed});
  GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.white,
      splashColor: Colors.green[200],
      elevation: 10,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Colors.grey[300])),
      padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
      child: Row(
        children: [
          GestureDetector(
            child: Image(
              image: AssetImage('assets/HomeFurnishing/FridgeCover.jpg'),
              height: 80,
              width: 60,
            ),
          
          ),
          RichText(
            text: TextSpan(
                text: '              132 Listings',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                children: [
                  TextSpan(
                    text: '\n           from 13 suppliers',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  )
                ]),
          ),
        ],
      ),
      onPressed: ()  {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => CommonFurnishing(
                            heading: 'Fridge Cover',
                            items: '132 items found',
                            image1:
                                "assets/HomeFurnishing/HomeFurnishingSub/fc1.jpg",
                            image2:
                                "assets/HomeFurnishing/HomeFurnishingSub/fc2.jpg",
                            image3:
                                "assets/HomeFurnishing/HomeFurnishingSub/fc3.jpg",
                            image4:
                                "assets/HomeFurnishing/HomeFurnishingSub/fc5.jpg",
                            image5:
                                "assets/HomeFurnishing/HomeFurnishingSub/fc5.jpg",
                            image6:
                                "assets/HomeFurnishing/HomeFurnishingSub/fc6.jpg",
                            texta: "Super Fab PVC 3D Print F...",
                            textb: "V K Traders PVC Table m...",
                            textc: "V K Traders PVC Table/Fr...",
                            textd: "Loomantha PVC Floral Pr...",
                            texte: "Super Fab PVC #D Print F...",
                            textf: "Madhav Product Jute Flo ...",
                          )));
            },
    );
  }
}
