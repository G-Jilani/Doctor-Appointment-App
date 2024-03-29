import 'package:doctor_appointment/drawer/Profile/colorScheme.dart';
import 'package:doctor_appointment/drawer/find_doctor/find_doctors.dart';
import 'package:doctor_appointment/homepage/home_page.dart';
import 'package:flutter/material.dart';

class Myappointments extends StatelessWidget {
  const Myappointments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        //drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: const Text('My Appointments'),
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
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height*0.4,
              width: MediaQuery.of(context).size.width,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Image.asset('assets/images/Heart Surgeon.jpg'),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.6,
                width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(70),
                ),
                color: bgColor,
              ),
              child: Container(
                padding: EdgeInsets.all(40),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            height: 100,
                            width: 100,
                            child: Image.asset('assets/images/doc1.jpg'),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Dr. Susan Thomas", style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),),
                              Text("Heart Surgeon - CK Hospital", style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                              ),)
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8, right: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("About the Doctor", style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            ),),
                            SizedBox(height: 20,),
                            Text("Please write the description of the doctor here. This will be a detailed information about the doctor and the roles and achievements that the doctor has had over the past years", style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),),
                            SizedBox(height: 10,),
                            Text("Available Time Slots", style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            ),),
                            SizedBox(height: 5,),
                            timeSlotWidget("13", "MAY", "Consultation", "Sunday 9 am to 11.30 am"),
                            timeSlotWidget("14", "MAY", "Consultation", "Monday 10 am to 12.30 am"),
                            timeSlotWidget("1", "JUN", "Consultation", "Wednesday 8 am to 12.30 pm"),
                            timeSlotWidget("3", "JUN", "Consultation", "Friday 8 am to 1 am"),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
  Container timeSlotWidget(String date, String month, String slotType, String time)
  {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: docContentBgColor
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Container(
              width:60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: dateBgColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("$date", style: TextStyle(
                    color: dateColor,
                    fontSize: 30,
                    fontWeight: FontWeight.w600
                  ),),
                  Text("$month", style: TextStyle(
                    color: dateColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                  ),)
                ],
              ),
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("$slotType", style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),),
                Text("$time", style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600
                ),)
              ],
            )
          ],
        ),
      ),
    );
  }
}