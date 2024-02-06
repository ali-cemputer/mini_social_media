import 'package:flutter/material.dart';
import 'package:mini_sosyal_medya/user_class.dart';
import 'Bottom_Bar.dart';
import 'Sifre_Degistir.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
   User p1=User();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Giriş Ekranı")),
        body:SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: "Enter user name",
                      labelText: "User Name",
                      prefixIcon: Icon(Icons.person),
                      border: UnderlineInputBorder(),
                    ),
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "User name cannot be left blank";
                      }
                      return null;
                    },
                    onSaved: (val) {
                      //p1.name = val;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintText: "Enter your password",
                      labelText: "Password",
                      prefixIcon: Icon(Icons.lock),
                      border: UnderlineInputBorder(),
                    ),
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Password field cannot be left blank";
                      } else if (val.trim().length < 6) {
                        return "Password length is invalid";
                      }
                      return null;
                    },
                    onSaved: (val) {
                      p1.password = val;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: ElevatedButton.icon(
                    style:ElevatedButton.styleFrom(primary:Colors.lightGreen),
                    label:Text("Giriş"),
                    icon:Icon(Icons.arrow_circle_right),
                    onPressed: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>Bottom_Bar()));
                      }),
                  ),
                TextButton(
                    onPressed: (){
                      showAlertDialog(context);
                    },
                    child: Text("Şifremi unuttum.")
                )
              ],
            ),
          ),
        ),
    );
  }
  void showAlertDialog(BuildContext context) {
    Widget giveupbutton = TextButton(
      child: Text("hayır"),
      onPressed: () {
        Navigator.pop(context);
      }, //Navigator.pop(context) ile geri dönüş gerçekleşir.
    );
    Widget deletebutton = TextButton(
      child: Text("evet"),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context)=>Sifre_Degistir()));
      },
    );
    AlertDialog alert = AlertDialog(
      title: Text("Şifremi Unuttum"),
      content: Text("Şifrenizi değiştirmek istediğnize emin misiniz?"),
      actions: [giveupbutton, deletebutton],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
