import 'package:flutter/material.dart';

class Myhelp extends StatelessWidget {
  const Myhelp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        //drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('Need Help'),
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
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  '\nFor customer support\n',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: ElevatedButton(
                    child: const Text('\ngjilani1068@gmail.com\n',
                        style: TextStyle(fontSize: 18)),
                    onPressed: () {})),
            Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: ElevatedButton(
                    child: const Text('\n+91 9576280997\n',
                        style: TextStyle(fontSize: 18)),
                    onPressed: () {})),
          ],
        ));
  }
}
