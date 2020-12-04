import 'package:flutter/material.dart';

class Register extends StatelessWidget
{
  @override
Widget build(BuildContext context)
{
  return Scaffold(
    appBar: AppBar(
      title: Text('Register with Udaan Pay',style: TextStyle(color: Colors.white)),
      backgroundColor: Colors.red,
      actions: <Widget>[
               IconButton(
                 icon: Icon(Icons.shopping_cart,  color: Colors.white,), 
                  onPressed: null,
                 
                  ),
             ],
             
    ),
   drawer: Drawer(),



   body:Column(
     children:<Widget> [
  Container(
    padding: const EdgeInsets.all(5),
    color: Colors.grey[200],
  
    child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
 children:<Widget> [
  Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 50)),
   Center(child: Text('1.Verify Bank Account Details',style: TextStyle(fontSize: 15.0))),
      Center(child: Text('2.Scan QR code',style: TextStyle(fontSize: 15.0,color:Colors.grey)),),

 ],
   ),
),

                
          Column(
          children: <Widget> [
            Container(
               height: 250,
          child: Image(
          image: AssetImage('assets/bank.png'),
           alignment: Alignment.center,
         
          ),
          
        ),
          
         ],
          ),
   
   Column(
     children:<Widget>[
        Center(
          child: Text('No linked bank account'),
        ),
     ],
   ),

   Column(
     children:<Widget>[
        Center(
        child: FlatButton(
        color: Colors.blue,
        textColor: Colors.white,
        padding: EdgeInsets.all(8.0),
        splashColor: Colors.blueAccent,
        onPressed: () {},
        child: Text("Click to register Bank Account Details",style: TextStyle(fontSize: 14.0),),
        ),
          ),
     ],
   ),

                                 
   ],

            ),



    












  );
}
}