import 'package:flutter/material.dart';
import 'package:udaan/Home/KYC/upload.dart';
import 'package:udaan/Home/orderforms.dart';
import 'sample.dart';

class UdyamAadhar extends StatelessWidget {
  Container MyImage(String image, String name) {
    return Container(
      width: 150,
      child: Card(
        child: Wrap(
          children: [Image.asset(image), Center(child: Text(name))],
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
          backgroundColor: Colors.blue,
          elevation: 0,
          title: Text(
            'Shop KYC-Step 2 of 4',
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
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
          child: Column(children: [
            Container(
              height: MediaQuery.of(context).size.height / 13,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: Text(
                'Upload Udyam Aadhar',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Container(
              color: Colors.grey[200],
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "   Example of accepted Udyam Aadhar document",
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.grey[200],
              height: MediaQuery.of(context).size.height / 2.8,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 10.0),
                        height: 200,
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              GestureDetector(
                                child: MyImage('assets/kyc/fssai.jpg', ''),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              Sample(
                                                image: 'assets/kyc/fssai.jpg',
                                              )));
                                },
                              ),
                            ])),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
                child: Text(
                  'Important note:'
                  'Expired documents will not be  accepted,check expiry date before uploading the document',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
            Container(
              color: Colors.grey[200],
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Upload(
                                  'Upload Udyam Aadhar',
                                )));
                  },
                  child: Text(
                    "Upload",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5.0),
                    side: BorderSide(color: Colors.blueAccent),
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(15),
              child: Text(
                'Wrong Documents',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 220,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MyImage('assets/kyc/certificate3.jpg', 'invoice'),
                  MyImage('assets/kyc/certificate5.jpg', 'Selfies'),
                  MyImage('assets/kyc/certificate7.jpg', 'Personal Aadhar'),
                  MyImage('assets/kyc/certificate4.jpg', 'Shop Boards'),
                ],
              ),
            ),
          ]),
        ));
  }
}
