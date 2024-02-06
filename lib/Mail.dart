import 'package:flutter/material.dart';
import 'package:mini_sosyal_medya/user_class.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Mail(),
    );
  }
}

class Mail extends StatefulWidget {
  @override
  State<Mail> createState() => _MailState();
}

class _MailState extends State<Mail> {
  List<Employees> employeeslist=[
    Employees(name:"Emma",surname: "Richardson",mail:"richardsonemma@mail.com"),
    Employees(name:"Olivia",surname: "Perry",mail:"perryolivia@mail.com"),
    Employees(name:"William",surname: "Long",mail: "longwilliam@mail.com"),
    Employees(name:"Sophia",surname: "Martinez",mail: "martinezsophia@mail.com"),
    Employees(name:"Xabi",surname: "Alonso",mail:"alonsoxabi@mail.com"),
    Employees(name:"Liam",surname: "Peterson",mail: "petersonliam@mail.com"),
    Employees(name:"Madison",surname: "Cartner",mail: "cartnmad@mail.com"),
    Employees(name:"Liam",surname: "Neels",mail: "neelsliam@mail.com"),

  ];
String? selectedemployee;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Maillerim")),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child:ListView.builder(
                        itemCount: employeeslist.length,//liste uzunluğu
                        itemBuilder: (BuildContext context,int index) {
                          return ListTile(
                            leading:Icon(Icons.mail),
                            trailing: Icon(Icons.person),//sağda yer alan widget
                            title:Text(employeeslist[index].mail!),//satırın başlığı
                            subtitle:Text(
                                "Ad:${employeeslist[index].name!} Surname:${employeeslist[index].surname.toString()}"
                            ),
                            onTap: (){
                              setState(() {
                                selectedemployee="Staff information ${employeeslist[index].mail!}";
                              });

                            },
                          );
                        }
                    ),
                ),
              ],
            )
        )
    );
  }
}