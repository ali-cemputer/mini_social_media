import 'package:flutter/material.dart';
import 'package:mini_sosyal_medya/Sifre_Degistir.dart';

import 'AnaSayfa.dart';
import 'Kesfet.dart';
import 'Mail.dart';
import 'Yemek.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Bottom_Bar(),
    );
  }
}

class Bottom_Bar extends StatefulWidget {
  @override
  State<Bottom_Bar> createState() => _Bottom_BarState();
}

class _Bottom_BarState extends State<Bottom_Bar> {
  int active_page=0;//aktif sayfa sayısı yönetmek için
  List<Widget>? pagecontent;//açılır sayfa listesi

  @override
  void initState(){
    super.initState();
    pagecontent=[
      Ana_Sayfa(),
      Kesfet(),
      Mail(),
      Yemek(),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pagecontent![active_page],//Widget listesindeki sayfayı indexiyle çağırıyoruz.
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 20,//Seçili öğenin metin boyutu
        selectedIconTheme: IconThemeData(size:20),//seçili öğenin metin teması
        iconSize: 20,//Bar içindeki iconların büyüklüğü
        currentIndex: active_page,//şu anda seçili olan öğenin indexi
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,//barın arka plan rengi
        selectedItemColor: Colors.white,//seçili itemin rengi
        items: [//bar içindeki öğeler
          BottomNavigationBarItem(icon: Icon(Icons.pages),label:"Anasayfa"),
          BottomNavigationBarItem(icon: Icon(Icons.accessibility_new_outlined),label:"Keşfet"),
          BottomNavigationBarItem(icon: Icon(Icons.mail),label:"Mail"),
          BottomNavigationBarItem(icon: Icon(Icons.food_bank_rounded),label:"Food"),
        ],
        onTap: (int checkediconindex){
          setState(() {
            active_page=checkediconindex;//bottom içindeki iconlara tıklandığında açılacak sayfa indexi
          });
        },
      ),
    );
  }
}