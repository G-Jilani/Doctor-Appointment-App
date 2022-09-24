import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Ghulam Jilani"),
            accountEmail: Text("gjilani1068@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://media-exp1.licdn.com/dms/image/C4D03AQF9V3xx-UkzZw/profile-displayphoto-shrink_200_200/0/1646730467145?e=1659571200&v=beta&t=d4tHa604AGtG2pcglyOKQkVCvSHuHr45kcVH7jS5suI"),
            ),
            
          ),
          ListTile(
            leading: Icon(Icons.calendar_today_sharp),
            title: Text("Find Doctors"),
            
          ),
          ListTile(
            leading: Icon(Icons.watch_later_rounded),
            title: Text("My Appointments"),
          ),
          ListTile(
            leading: Icon(Icons.help_outline_rounded),
            title: Text("Need help?"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profile"),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Logout"),
            
          ),
          
        ],
      ),
    );
  }
}