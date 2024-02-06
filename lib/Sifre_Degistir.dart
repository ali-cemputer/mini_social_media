import 'package:flutter/material.dart';
import 'package:mini_sosyal_medya/main.dart';
import 'package:mini_sosyal_medya/user_class.dart';
void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Sifre_Degistir(),
    );
  }
}

class Sifre_Degistir extends StatefulWidget {
  @override
  State<Sifre_Degistir> createState() => _Sifre_DegistirState();
}

class _Sifre_DegistirState extends State<Sifre_Degistir> {
  TextEditingController contentControl1=TextEditingController();
  TextEditingController contentControl2=TextEditingController();
  User p1=User();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Şifre Yenileme")),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child:TextField(
                      controller: contentControl1,
                      decoration: InputDecoration(
                        labelText: "Yeni Şifrenizi yazın",
                        hintText: "Yeni şifre:",
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5))
                        ),
                      ),),
                ),
                Expanded(
                  child:TextField(
                    controller: contentControl2,
                    decoration: InputDecoration(
                      labelText: "Yeni Şifrenizi tekrarlayın",
                      hintText: "Tekrar Yeni şifre:",
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5))
                      ),
                    ),),
                ),
                ElevatedButton.icon(
                    style:ElevatedButton.styleFrom(primary:Colors.lightBlue),
                    label:Text("Onayla"),
                    icon:Icon(Icons.check),
                    onPressed: (){
                      setState(() {
                        p1.password=contentControl2.text;
                      });
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>HomePage())
                      );
                    }),
              ],
            )
        )
    );
  }
}