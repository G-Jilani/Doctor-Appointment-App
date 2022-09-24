import 'package:doctor_appointment/drawer/find_doctor/find_doctors.dart';
import 'package:doctor_appointment/homepage/card.dart';
import 'package:doctor_appointment/homepage/find_doctors.dart';
import 'package:doctor_appointment/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';

class Myhome_page extends StatelessWidget {
  const Myhome_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Book Appointments"),
      ),
      drawer: MyNavigationDrawerWidget(),
      body: MyFavouritesPage1(),    );
  }
}
