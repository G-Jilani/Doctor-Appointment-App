import 'package:doctor_appointment/drawer/setting.dart';
import 'package:doctor_appointment/drawer/appointments.dart';
import 'package:doctor_appointment/drawer/help.dart';
import 'package:doctor_appointment/signin.dart';
import 'package:flutter/material.dart';
import 'package:doctor_appointment/drawer/find_doctor/find_doctors.dart';
import 'package:doctor_appointment/drawer/Profile/pages/profile_page.dart';
import 'package:doctor_appointment/homepage/user_page.dart';

class MyNavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    final name = 'Ghulam Jilani';
    final email = 'gjilani1068@gmail.com';
    final urlImage =
        'https://lh3.googleusercontent.com/JMtg6XQvCdkfOGZbnE2PliGa3qocb6iQzS4u-qOmwg82hAL_GQODE-a2XnXW-jhEzagIBtPoTJdA-6gNSFTQUB-clkQWFq2I_TuMjKjv';

    return Drawer(
      child: Material(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              color: Colors.blue,
              child: Column(
                children: [
                  buildHeader(
                    urlImage: urlImage,
                    name: name,
                    email: email,
                    onClicked: () =>
                        Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MyUserPage(
                        name: 'Ghulam Jilani',
                        urlImage: urlImage,
                      ),
                    )),
                  ),
                ],
              ),
            ),
            Container(
              padding: padding,
              child: Column(
                children: [
                  buildMenuItem(
                    text: 'Profile',
                    icon: Icons.person,
                    onClicked: () => selectedItem(context, 1),
                  ),
                  buildMenuItem(
                    text: 'Find Doctors',
                    icon: Icons.calendar_today_sharp,
                    onClicked: () => selectedItem(context, 2),
                  ),
                  buildMenuItem(
                    text: 'My Appointments',
                    icon: Icons.watch_later_rounded,
                    onClicked: () => selectedItem(context, 3),
                  ),
                  buildMenuItem(
                    text: 'Need help?',
                    icon: Icons.help_outline_rounded,
                    onClicked: () => selectedItem(context, 4),
                  ),
                  buildMenuItem(
                    text: 'Setting',
                    icon: Icons.settings,
                    onClicked: () => selectedItem(context, 5),
                  ),
                  Divider(color: Colors.grey),
                  buildMenuItem(
                    text: 'Logout',
                    icon: Icons.logout,
                    onClicked: () => selectedItem(context, 6),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    required String urlImage,
    required String name,
    required String email,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.black;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MyProfilePage(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MyFavouritesPage(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Myappointments(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Myhelp(),
        ));
        break;

      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Mysetting(),
        ));
        break;
      case 6:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Mysignin(),
        ));
        break;
    }
  }
}
