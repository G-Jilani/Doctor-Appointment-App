import 'package:flutter/material.dart';

class Mycard extends StatelessWidget {

  final List dummyList = List.generate(10, (index) {
    
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView.builder(
      itemCount: dummyList.length,
      itemBuilder: (context, index) => const Card(
        elevation: 6,
        margin: EdgeInsets.all(10),
        child: ListTile(
          
          leading: CircleAvatar(
            child: Icon(Icons.health_and_safety_rounded,),
            backgroundColor: Colors.blue,
          ),
          title: Text('General Physicians'),
          subtitle: Text('Dr. MD. Khan'),
          tileColor: Colors.white70,
          
        ),
      ),
    )));
  }
}