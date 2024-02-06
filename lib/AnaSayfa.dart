import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Ana_Sayfa(),
    );
  }
}

class Ana_Sayfa extends StatefulWidget {
  @override
  State<Ana_Sayfa> createState() => _Ana_SayfaState();
}

class _Ana_SayfaState extends State<Ana_Sayfa> {
  TextEditingController contentControl1 = TextEditingController();
  TextEditingController contentControl2 = TextEditingController();
  List<String> City=[//dropdown içindeki liste öğeleri
    "Gaziantep",
    "Adana",
    "Mersin",
    "Antalya",
    "İzmir"
  ];
  String? selectedcity,textselectedcity,textname,textsurname;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Ana Sayfa")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
                controller: contentControl1,
                decoration: InputDecoration(
                  labelText: "Name",
                  hintText: "Enter your name",
                ),
              ),
            TextField(
                controller: contentControl2,
                decoration: InputDecoration(
                  labelText: "Surname",
                  hintText: "Enter your surname",
                ),
              ),

            DropdownButton(
              hint: Text("Şehir"),
              items:City.map((aval){//dropdown içindeki öğeler
                return DropdownMenuItem(child: Text(aval),value:aval);
              }).toList(),
              onChanged: (val){//listeden öğe seçildiğinde çalışacak fonk.
                setState(() {
                  selectedcity=val!;
                });
              },
              value:selectedcity,//dropdowndaki şu anda seçili olan değer
            ),
            ElevatedButton(
                child: Text("Show User Information"),
                onPressed: () {
                  setState(() {
                    textselectedcity=selectedcity;
                    textname=contentControl1.text;
                    textsurname=contentControl2.text;
                  });
                }
            ),
            Container(
                child:Column(
                  children: [
                    Text("KULLANICI BİLGİLERİ"),
                    SizedBox(height: 10,),
                    Text("Kullanıcı ad,soyad:${textname} ${textsurname}\nkullanıcı şehri:${textselectedcity}",style: TextStyle(color:Colors.yellow),)
                  ],
                )
            )
          ],
        )
    );
  }
}