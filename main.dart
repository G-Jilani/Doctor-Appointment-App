// @dart=2.9
// ignore_for_file: unused_import
import 'package:doctor_appointment/drawer/Profile/pages/edit_image.dart';
import 'package:doctor_appointment/drawer/Profile/pages/profile_page.dart';
import 'package:doctor_appointment/drawer/setting.dart';
import 'package:doctor_appointment/drawer/appointments.dart';
import 'package:doctor_appointment/homepage/card.dart';
import 'package:doctor_appointment/drawer/find_doctor/find_doctors.dart';
import 'package:doctor_appointment/drawer/help.dart';
import 'package:doctor_appointment/homepage/user_page.dart';
import 'package:doctor_appointment/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:doctor_appointment/signin.dart';
import 'package:doctor_appointment/signup.dart';
import 'package:doctor_appointment/homepage/home_page.dart';
import 'package:flutter/widgets.dart';
import 'package:doctor_appointment/drawer/Profile/colorScheme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:doctor_appointment/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  var consts;
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Mysignin(), // home page will be Mysignin
    routes: {
      'signin': (context) => Mysignin(), //function decration
      'signup': (context) => const Mysignup(),
      'home': (context) => const Myhome_page(),
      'card': (context) => Mycard(),
      'favour': (context) => const MyFavouritesPage(),
      'people': (context) => const MyProfilePage(),
      'user': (context) => const MyUserPage(
            name: '',
            urlImage: '',
          ),
      'navi': (context) => MyNavigationDrawerWidget(),
      'appoint': (context) => Myappointments(),

      'help': (context) => const Myhelp(),
      'setting': (context) => Mysetting(),
      'editimage': (context) => const MyEditImagePage(),
    },
  ));
}
