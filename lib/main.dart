import 'package:flutter/material.dart';


void main() {
  runApp(const ListViewDemoScreen());
}

class ListViewDemoScreen extends StatefulWidget {
  const ListViewDemoScreen({Key? key}) : super(key: key);

  @override
  _ListViewDemoScreenState createState() => _ListViewDemoScreenState();
}

class _ListViewDemoScreenState extends State<ListViewDemoScreen> {
  List<String> list = <String>[
    "Connor, John",
    "Connor, Sarah",
    "Claus, Santa",
    "Bunny, Bags",
    "Jack, Black",
    "Jack, Daniels",
    "Verter, Robot",
    "Laser, Major",
    "Lennon, John",
    "Hood, Robin",
    "Scott, Riedley"
  ];

  @override
  Widget build(BuildContext context) {
    SnackBar _snackBar = SnackBar(
        content: Text ("List item tapped"),
        duration: Duration(milliseconds: 500),
    );
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          itemCount: list.length,//20,
          itemBuilder: (BuildContext context, int index){
            return ListTile (
              textColor: Colors.pink,
              leading: Icon(Icons.account_circle),
              title: Text("${ list [ index ] }"),
              subtitle: Text("phone +7(9xx)xxx-xx-xx", style: TextStyle(color: Colors.blueGrey),),
              trailing: Icon(Icons.vpn_key_rounded),
              onTap: (){
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text ("ListItem ${index} tapped"),
                      duration: Duration(milliseconds: 500),
                    ),
                );},
              //selected: true,
            );
          }
        ),
      ),
    );
  }
}
