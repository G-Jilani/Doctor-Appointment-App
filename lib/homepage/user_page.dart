import 'package:flutter/material.dart';

class MyUserPage extends StatelessWidget {
  const MyUserPage({Key? key, required String name, required String urlImage}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        //drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('Ghulam Jilani'),
          
      )
  );
}