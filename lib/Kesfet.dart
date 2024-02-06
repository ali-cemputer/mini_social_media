import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Kesfet(),
    );
  }
}

class Kesfet extends StatefulWidget {
  @override
  State<Kesfet> createState() => _KesfetState();
}

class _KesfetState extends State<Kesfet> {
  TextEditingController contentControl1 = TextEditingController();
String? textcontent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Staff List")),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                TextField(
                      controller: contentControl1,
                      decoration: InputDecoration(
                        labelText: "Enter tweet",
                        hintText: "Tweet",
                      ),
                    ),

                IconButton(onPressed: (){
                  setState(() {
                    textcontent=contentControl1.text.toString();
                  });
                }, icon: Icon(Icons.check)),
                Flexible(
                  child: Container(
                    color: Colors.blue.shade800,
                    child: Column(
                      children: [
                        Text("TWEET ÇIKTISI:"),
                        Container(
                            color: Colors.lightBlue,
                            child:Center(
                              child: Text("${textcontent}"),
                            )
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
        )
    );
  }
}