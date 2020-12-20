import 'package:flutter/material.dart';
import 'package:udaan/Home/orderforms.dart';
import 'package:share/share.dart';

class Fabric extends StatefulWidget {
  @override
  _FabricState createState() => _FabricState();
}

String text =
    'https://udaan.com/search/products?start=0&f=%2Bvertical%3AClothingTShirt&f=%2Bvertical%3AClothingTrackPant&f=%2Bvertical%3AClothingTrousers&f=%2Bvertical%3AClothingJeans&f=%2Bvertical%3AClothingShirt&f=%2Bvertical%3ABoxers&f=%2Bvertical%3AClothingShort&f=%2Bvertical%3ALungi&f=%2Bvertical%3AVest&f=%2Bvertical%3APayjama&f=%2Bstatus%3AACTIVE&sort=new_and_popular&title=Menswear&campaignSource=MLPV2&campaignId=CLT-NU-Upload-KYC-3-0&showOnlyLocal=false&hidePromoted=true&_showSingleSeller=false';
String subject = 'MensWear';

class _FabricState extends State<Fabric> {
  Widget MyImage(String image, String name) {
    return Container(
      width: 250,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [Image.asset(image), Text(name)],
        ),
      ),
    );
  }

  Container sub(
    String image1,
    String name1,
  ) {
    return Container(
      child: Container(
        height: 80,
        width: 180,
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(image1),
              Text(
                name1,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            }),
        backgroundColor: Colors.red[800],
        elevation: 0,
        title: Text(
          "Fabric",
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.share,
                color: Colors.white,
              ),
              onPressed: () {
                _showModalSheet(context);
              }),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Orderforms()));
              })
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container(
            //   width: MediaQuery.of(context).size.width,
            //   height: MediaQuery.of(context).size.height / 4.5,
            //   child: Image(
            //     image: AssetImage('assets/homecloth/kids/babywinter.jpg'),
            //     fit: BoxFit.fill,
            //   ),
            // ),
            Container(
              color: Colors.grey[300],
              child: Column(
                children: [
                  Container(
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: Text('Recently Viewed'),
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        MyImage('assets/homecloth/fabric/imported.jpg',
                            'Imported Fabric  '),
                        MyImage('assets/homecloth/fabric/linen.jpg',
                            'Linen Fabric'),
                        MyImage('assets/homecloth/fabric/polyester.jpg',
                            'Polyster Fabric'),
                        MyImage('assets/homecloth/fabric/cotton.jpg',
                            'Cotton Fabric'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  ExpansionTile(
                    leading: Image(
                      image: AssetImage('assets/homecloth/fabric/ethnic.jpg'),
                    ),
                    title: Text(
                      'Ethnic Wear & Kurti Fabrics',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    subtitle: Text(
                      'Cotton Fabric, Polyester...',
                      style: TextStyle(color: Colors.black),
                    ),
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          sub(
                            'assets/homecloth/fabric/cotton.jpg',
                            'Cotton Fabric',
                          ),
                          sub(
                            'assets/homecloth/fabric/polyester.jpg',
                            'Polyester\nFabric',
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          sub(
                            'assets/homecloth/fabric/imported.jpg',
                            'Imported\nFabric',
                          ),
                          sub(
                            'assets/homecloth/fabric/linen.jpg',
                            'Linen Fabric',
                          )
                        ],
                      ),
                    ],
                  ),
                  Divider(color: Colors.grey[500]),
                  ExpansionTile(
                    leading: Image(
                      image: AssetImage('assets/homecloth/fabric/hosiery.jpg'),
                    ),
                    title: Text('Hosiery Fabrics',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black)),
                    subtitle: Text(
                      'Cotton Fabric, Polyester...',
                      style: TextStyle(color: Colors.black),
                    ),
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          sub(
                            'assets/homecloth/fabric/cotton.jpg',
                            'Cotton Fabric',
                          ),
                          sub(
                            'assets/homecloth/fabric/polyester.jpg',
                            'Polyester\nFabric',
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          sub(
                            'assets/homecloth/fabric/imported.jpg',
                            'Imported\nFabric',
                          ),
                          sub(
                            'assets/homecloth/fabric/linen.jpg',
                            'Linen Fabric',
                          )
                        ],
                      ),
                    ],
                  ),
                  Divider(color: Colors.grey[500]),
                  ExpansionTile(
                    leading: Image(
                      image: AssetImage('assets/homecloth/fabric/shirting.jpg'),
                    ),
                    title: Text('Shirting Fabrics',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black)),
                    subtitle: Text(
                      'Cotton Fabric, Polyester...',
                      style: TextStyle(color: Colors.black),
                    ),
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          sub(
                            'assets/homecloth/fabric/cotton.jpg',
                            'Cotton Fabric',
                          ),
                          sub(
                            'assets/homecloth/fabric/polyester.jpg',
                            'Polyester\nFabric',
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          sub(
                            'assets/homecloth/fabric/imported.jpg',
                            'Imported\nFabric',
                          ),
                          sub(
                            'assets/homecloth/fabric/linen.jpg',
                            'Linen Fabric',
                          )
                        ],
                      ),
                    ],
                  ),
                  Divider(color: Colors.grey[500]),
                  ExpansionTile(
                    leading: Image(
                      image: AssetImage('assets/homecloth/fabric/trouser.jpg'),
                    ),
                    title: Text('Trouser Fabrics',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black)),
                    subtitle: Text(
                      'Cotton Fabric, Polyester...',
                      style: TextStyle(color: Colors.black),
                    ),
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          sub(
                            'assets/homecloth/fabric/cotton.jpg',
                            'Cotton Fabric',
                          ),
                          sub(
                            'assets/homecloth/fabric/polyester.jpg',
                            'Polyester\nFabric',
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          sub(
                            'assets/homecloth/fabric/imported.jpg',
                            'Imported\nFabric',
                          ),
                          sub(
                            'assets/homecloth/fabric/linen.jpg',
                            'Linen Fabric',
                          )
                        ],
                      ),
                    ],
                  ),
                  Divider(color: Colors.grey[500]),
                  ListTile(
                    leading: Image(
                      image: AssetImage(
                          'assets/homecloth/fabric/shirttrouser.jpg'),
                    ),
                    title: Text('Shirt & Trousers Fabrics',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    trailing: Icon(Icons.chevron_right),
                  ),
                  Divider(color: Colors.grey[500]),
                  ListTile(
                    leading: Image(
                      image: AssetImage('assets/homecloth/fabric/linen.jpg'),
                    ),
                    title: Text('Linen Fabrics',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    trailing: Icon(Icons.chevron_right),
                  ),
                  Divider(color: Colors.grey[500]),
                  ListTile(
                    leading: Image(
                      image: AssetImage('assets/homecloth/fabric/denim.jpg'),
                    ),
                    title: Text('Denim Fabrics',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    trailing: Icon(Icons.chevron_right),
                  ),
                  Divider(color: Colors.grey[500]),
                  ExpansionTile(
                    leading: Image(
                      image:
                          AssetImage('assets/homecloth/fabric/stitching.jpg'),
                    ),
                    title: Text('Stitching Accessories',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black)),
                    subtitle: Text(
                      'Laces/Tapes,Buttons...',
                      style: TextStyle(color: Colors.black),
                    ),
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          sub(
                            'assets/homecloth/fabric/laces.jpg',
                            'Laces/Tapes',
                          ),
                          sub(
                            'assets/homecloth/fabric/button.jpg',
                            'Buttons',
                          )
                        ],
                      ),
                    ],
                  ),
                  Divider(color: Colors.grey[500]),
                  ListTile(
                    leading: Image(
                      image: AssetImage('assets/homecloth/fabric/tafetta.jpg'),
                    ),
                    title: Text('Taffeta Fabrics',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    trailing: Icon(Icons.chevron_right),
                  ),
                  Divider(color: Colors.grey[500]),
                  ListTile(
                    leading: Image(
                      image: AssetImage('assets/homecloth/fabric/sarina.jpg'),
                    ),
                    title: Text('Sarina Fabrics',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    trailing: Icon(Icons.chevron_right),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _showModalSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (builder) {
        return Container(
          child: GestureDetector(
            onTap: () {
              final RenderBox box = context.findRenderObject();
              Share.share(text,
                  subject: subject,
                  sharePositionOrigin:
                      box.localToGlobal(Offset.zero) & box.size);
            },
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text('Share Link with ......'),
            ),
          ),
        );
      });
}