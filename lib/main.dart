import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool? val=false;
  bool Sw=false;
  String? drop="";
  List<String> li=["ACET","AEC","ACOE"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Checkbox(value: val, onChanged: (Val){},),
          DropdownMenu(dropdownMenuEntries: li.map((e){
            return DropdownMenuEntry(value: e, label: e);
          }).toList(),
            onSelected: (va){
            setState(() {
              drop=va;
            });
            },
          ),
          SizedBox(height: 20,),
          SwitchListTile(value: Sw, onChanged: (va){
            setState(() {
              Sw=va;
            });
          },
          title: Text("check"),),

        ],
      ),
    );
  }
}

