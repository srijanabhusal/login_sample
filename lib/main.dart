 import 'package:flutter/material.dart';

 void main() => runApp(MaterialApp(debugShowCheckedModeBanner:false,home: MyApp(),));

 class MyApp extends StatefulWidget {
   @override
   _MyAppState createState() => _MyAppState();
 }
 
 class _MyAppState extends State<MyApp> {   

   final myController = TextEditingController();    

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('Login demo page'),
        ),
        body: Container(
          padding: EdgeInsets.all(12.0),
          child: Column(
            children: <Widget>[                           
              TextField(
                decoration: InputDecoration(
                  labelText: 'enter your name',
                  hintText: 'Srijana Bhusal',
                  icon: Icon(Icons.person),                  
                ),
                 controller: myController,
                ),
                TextField(
                decoration: InputDecoration(
                  labelText: 'password',
                  hintText: 'password',
                  icon: Icon(Icons.vpn_key),          
                ),
                  obscureText: true, // Use secure text for passwords.
                  autofocus: false,               
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'enter your email',
                  hintText: 'srijanabhusal@gmail.com',
                  icon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
                ),
              new Container(
               width: 100,
                child: new RaisedButton(
                  child: new Text(
                    'Login',
                    style: new TextStyle(
                      color: Colors.white
                    ),
                  ),
                  color: Colors.blue,
                   onPressed: () {
                      return showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            // Retrieve the text the that user has entered by using the
                            // TextEditingController.
                            content: Text(myController.text+", this was login sample"),
              );
            },
          );
        },
                ),
              ),

          ],),
        ),
       
     );
   }
 }