import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Yemek(),
    );
  }
}

class Yemek extends StatefulWidget {
  @override
  State<Yemek> createState() => _YemekState();
}

class _YemekState extends State<Yemek> {
bool checkHamburger=false,checkPizza=false;
String? radioFood,radiofood,textPizza,textHamburger,selectedfood,selectedDrink;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Yemek")),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CheckboxListTile(
                  value: checkHamburger,
                  onChanged: (val){
                    setState(() {
                      checkHamburger=val!;
                      textHamburger="Hamburger";
                    });
                  },
                  title:Text("Hamburger",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.green,fontSize: 20),),
                  activeColor: Colors.cyan,
                  checkColor: Colors.white,
                ),
                SizedBox(height: 15,),
                CheckboxListTile(
                  value: checkPizza,
                  onChanged: (val){
                    setState(() {
                      checkPizza=val!;
                      textPizza="Pizza";
                    });
                  },
                  title:Text("Pizza",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.green,fontSize: 20),),
                  activeColor: Colors.cyan,
                  checkColor: Colors.white,
                ),
                SizedBox(height: 15,),
                RadioListTile(
                  value: "Kola",
                  groupValue: radioFood,
                  onChanged: (val){
                    setState(() {
                      radioFood=val!;

                    });
                  },
                  activeColor: Colors.green,
                  title:Text("Kola"),
                ),
                SizedBox(height: 10,),
                RadioListTile(
                  value: "Ayran",
                  groupValue: radioFood,
                  onChanged: (val){
                    setState(() {
                      radioFood=val!;

                    });
                  },
                  activeColor: Colors.green,
                  title:Text("Ayran"),
                ),
                SizedBox(height: 10,),
                ElevatedButton(
                    child: Text("Show"),
                    onPressed: () {
                      setState(() {
                        selectedfood=textPizza!+textHamburger!;
                        selectedDrink=radioFood!;
                      });
                    }
                ),
                Container(
                    child:Column(
                      children: [
                        Text("SİPARİŞ ÖZETİ"),
                        SizedBox(height: 10,),
                        Text("${selectedDrink} ${selectedfood}"),
                      ],
                    )
                )
              ],
            )
        )
    );
  }
}