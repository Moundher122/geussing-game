// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:apiuse/class/data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../class/brightness.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}
final mycon=TextEditingController();

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Guessing Game'),
        actions: [
          ToggleSwitch(
  minWidth: 90.0,
  cornerRadius: 20.0,
  activeBgColors: [[Colors.green[800]!], [Colors.red[800]!]],
  activeFgColor: Colors.white,
  inactiveBgColor: Colors.grey,
  inactiveFgColor: Colors.white,
  initialLabelIndex: 0,
  totalSwitches: 2,
  icons: [
    Icons.sunny,
    Icons.dark_mode
  ],
  radiusStyle: true,
  onToggle: (index) {
    
    if (index==0){
      context.read<ThemeToglle>().tolight();
    }
    if(index==1){
      context.read<ThemeToglle>().toblack();
    }
  },
),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left:10.0,right: 10,top: 10),
        child: Column(
          children: [
            TextField(
              controller: mycon,
              decoration: InputDecoration(
                label: Text('Entre your name..'),
                prefixIcon: Icon(Icons.person_4_rounded),
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
            ),
            Text(context.watch<Texti>().gender??'',style: TextStyle(color: Colors.black,fontSize: 20),),
            GestureDetector(
              onTap: () {
                context.read<Texti>().getgender();
              },
              child: Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 81, 60, 117),
                  borderRadius: BorderRadius.circular(40)
                ),
                child: Center(child: Text('Next')),
              ),
            )
          ],
        ),
      ),
    );
  }
}
