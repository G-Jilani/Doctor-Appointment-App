import 'package:doctor_appointment/drawer/find_doctor/find_doctors.dart';
import 'package:flutter/material.dart';

class Mysetting extends StatelessWidget {
  const Mysetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        //drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('Settings'),
          backgroundColor: Colors.blue,
        ),
        body: const MyStatefulWidget(),
      );
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    var language;
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            SwitchListTile(
              activeColor: Colors.blue,
              contentPadding: const EdgeInsets.all(0),
              value: true,
              title:
                  Text("Received notification"),
              onChanged: (val) {},
            ),
            SwitchListTile(
              activeColor: Colors.blue,
              contentPadding: const EdgeInsets.all(0),
              value: true,
              title:
                  Text("Received newsletter"),
              onChanged: (val) {},
            ),
            SwitchListTile(
              activeColor: Colors.blue,
              contentPadding: const EdgeInsets.all(0),
              value: true,
              title: Text("Received Offer Notification"),
              onChanged: (val) {},
            ),
            SwitchListTile(
              activeColor: Colors.blue,
              contentPadding: const EdgeInsets.all(0),
              value: true,
              title: Text("Received App Updates"),
              onChanged: (val) {},
            ),
            ListTile(
                          leading: Icon(
                            Icons.lock_outline,
                            color: Colors.blue,
                          ),
                          title: Text("Change Password"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            //open change password
                          },
                        ),
            ListTile(
                          title: Text("Change Language"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          leading: Icon(
                      Icons.change_circle_sharp,
                      color: Colors.blue,
                      ),
                          onTap: () {
                            //open change language
                          },
                        ),
            ListTile(
                      title: Text("Change Location"),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      leading: Icon(
                      Icons.location_on,
                      color: Colors.blue,
                      ),
                      onTap: () {
                            //open change location
                          },
                        ),
            
          ],
        ));
  }
}

class FontAwesomeIcons {
  static IconData? language;
}
