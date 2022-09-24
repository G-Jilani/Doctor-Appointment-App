import 'package:doctor_appointment/homepage/home_page.dart';
import 'package:flutter/material.dart';


class MyFavouritesPage1 extends StatelessWidget {
  const MyFavouritesPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        //drawer: NavigationDrawerWidget(),
        
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
      backgroundColor: Colors.white,
      
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
    Row(
        children: [
          SizedBox(width: 15,),
          Container(
            width: 380,
            child: TextField(
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.blueAccent,
              ),
              decoration: InputDecoration(
                hintText: "Search Doctors",
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Colors.blueAccent, width: 50.0),
                ),
                suffixIcon: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.blue,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
    ),
    
    SizedBox(height: 40,),
    Row(
      children: [
        SizedBox(width: 50,),
        Column(
          children: [
            Container(
              height: 120,
              width: 130,
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),

              boxShadow: [
                BoxShadow(
                  color: Color(0xFFFFBE9D).withOpacity(0.5),
                  spreadRadius: 0.5,
                  blurRadius: 0.5,
                  offset: Offset(0, 22, ), // changes position of shadow
                ),
              ],
              image: DecorationImage(
                image: AssetImage("assets/images/audiologist.jpg",
                

                ),
                //fit: BoxFit.cover,

              ),

            ),
          ),
          Row(
            children: [
              Text("Audiologist"),
              SizedBox(width: 2,),
              Text("4.5"),
              Icon(Icons.star)
              
            ],
          ),

        ],
    ),

    SizedBox(width: 40,),
    Column(
      children: [
        Container(
            height: 120,
            width: 130,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFFFBE9D).withOpacity(0.5),
                  spreadRadius: 0.5,
                  blurRadius: 0.5,
                  offset: Offset(0, 22, ), // changes position of shadow
                ),
              ],
              image: DecorationImage(
                image: AssetImage("assets/images/cardiologist.jpg",


                ),
                //fit: BoxFit.cover,

              ),
            ),
        ),
        Row(
          children: [
            Text("Cardiologist"),
            SizedBox(width: 2,),
            Text("4.7"),
            Icon(Icons.star)
          ],
        ),
      ],
    ),
  ],
),
    SizedBox(height: 40,),
    Row(
      children: [
        SizedBox(width: 50,),
        Column(
          children: [
            Container(
              height: 120,
              width: 130,
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),

              boxShadow: [
                BoxShadow(
                  color: Color(0xFFFFBE9D).withOpacity(0.5),
                  spreadRadius: 0.5,
                  blurRadius: 0.5,
                  offset: Offset(0, 22, ), // changes position of shadow
                ),
              ],
              image: DecorationImage(
                image: AssetImage("assets/images/dentist.jpg",


                ),
                //fit: BoxFit.cover,

              ),

            ),
          ),
          Row(
            children: [
              Text("Dentist"),
              SizedBox(width: 2,),
              Text("4.5"),
              Icon(Icons.star)
            ],
          ),

        ],
    ),

    SizedBox(width: 40,),
    Column(
      children: [
        Container(
            height: 120,
            width: 130,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFFFBE9D).withOpacity(0.5),
                  spreadRadius: 0.5,
                  blurRadius: 0.5,
                  offset: Offset(0, 22, ), // changes position of shadow
                ),
              ],
              image: DecorationImage(
                image: AssetImage("assets/images/dermatologist.jpg",


                ),
                //fit: BoxFit.cover,

              ),
            ),
        ),
        Row(
          children: [
            Text("Dermatologist"),
            SizedBox(width: 2,),
            Text("4.5"),
            Icon(Icons.star)
          ],
        ),
      ],
    ),
  ],
),

    SizedBox(height: 40,),
    Row(
      children: [
        SizedBox(width: 50,),
        Column(
          children: [
            Container(
              height: 120,
              width: 130,
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),

              boxShadow: [
                BoxShadow(
                  color: Color(0xFFFFBE9D).withOpacity(0.5),
                  spreadRadius: 0.5,
                  blurRadius: 0.5,
                  offset: Offset(0, 22, ), // changes position of shadow
                ),
              ],
              image: DecorationImage(
                image: AssetImage("assets/images/endocrinologist.jpg",


                ),
                //fit: BoxFit.cover,

              ),

            ),
          ),
          Row(
            children: [
              Text("Endocrinologist"),
              SizedBox(width: 2,),
              Text("4.5"),
              Icon(Icons.star)
            ],
          ),

        ],
    ),

    SizedBox(width: 40,),
    Column(
      children: [
        Container(
            height: 120,
            width: 130,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFFFBE9D).withOpacity(0.5),
                  spreadRadius: 0.5,
                  blurRadius: 0.5,
                  offset: Offset(0, 22, ), // changes position of shadow
                ),
              ],
              image: DecorationImage(
                image: AssetImage("assets/images/ENT specialist.jpg",


                ),
                //fit: BoxFit.cover,

              ),
            ),
        ),
        Row(
          children: [
            Text("ENT Specialist"),
            SizedBox(width: 2,),
            Text("4.5"),
            Icon(Icons.star)
          ],
        ),
      ],
    ),
  ],
),

    SizedBox(height: 40,),
    Row(
      children: [
        SizedBox(width: 50,),
        Column(
          children: [
            Container(
              height: 120,
              width: 130,
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),

              boxShadow: [
                BoxShadow(
                  color: Color(0xFFFFBE9D).withOpacity(0.5),
                  spreadRadius: 0.5,
                  blurRadius: 0.5,
                  offset: Offset(0, 22, ), // changes position of shadow
                ),
              ],
              image: DecorationImage(
                image: AssetImage("assets/images/genreal physician.jpg",


                ),
                //fit: BoxFit.cover,

              ),

            ),
          ),
          Row(
            children: [
              Text("General Physician"),
              SizedBox(width: 2,),
              Text("4.5"),
              Icon(Icons.star)
            ],
          ),

        ],
    ),

    SizedBox(width: 40,),
    Column(
      children: [
        Container(
            height: 120,
            width: 130,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFFFBE9D).withOpacity(0.5),
                  spreadRadius: 0.5,
                  blurRadius: 0.5,
                  offset: Offset(0, 22, ), // changes position of shadow
                ),
              ],
              image: DecorationImage(
                image: AssetImage("assets/images/nephrologist.jpg",


                ),
                //fit: BoxFit.cover,

              ),
            ),
        ),
        Row(
          children: [
            Text("Nephrologist"),
            SizedBox(width: 2,),
            Text("4.5"),
            Icon(Icons.star)
          ],
        ),
      ],
    ),
  ],
),
    SizedBox(height: 40,),
    Row(
      children: [
        SizedBox(width: 50,),
        Column(
          children: [
            Container(
              height: 120,
              width: 130,
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),

              boxShadow: [
                BoxShadow(
                  color: Color(0xFFFFBE9D).withOpacity(0.5),
                  spreadRadius: 0.5,
                  blurRadius: 0.5,
                  offset: Offset(0, 22, ), // changes position of shadow
                ),
              ],
              image: DecorationImage(
                image: AssetImage("assets/images/neurologist.jpg",


                ),
                //fit: BoxFit.cover,

              ),

            ),
          ),
          Row(
            children: [
              Text("Neurologist"),
              SizedBox(width: 2,),
              Text("4.5"),
              Icon(Icons.star)
            ],
          ),

        ],
    ),

    SizedBox(width: 40,),
    Column(
      children: [
        Container(
            height: 120,
            width: 130,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFFFBE9D).withOpacity(0.5),
                  spreadRadius: 0.5,
                  blurRadius: 0.5,
                  offset: Offset(0, 22, ), // changes position of shadow
                ),
              ],
              image: DecorationImage(
                image: AssetImage("assets/images/pulmonologist.jpg",


                ),
                //fit: BoxFit.cover,

              ),
            ),
        ),
        Row(
          children: [
            Text("Pulmonologist"),
            SizedBox(width: 2,),
            Text("4.5"),
            Icon(Icons.star)
          ],
        ),
      ],
    ),
  ],
),

    SizedBox(height: 40,),
    Row(
      children: [
        SizedBox(width: 50,),
        Column(
          children: [
            Container(
              height: 120,
              width: 130,
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),

              boxShadow: [
                BoxShadow(
                  color: Color(0xFFFFBE9D).withOpacity(0.5),
                  spreadRadius: 0.5,
                  blurRadius: 0.5,
                  offset: Offset(0, 22, ), // changes position of shadow
                ),
              ],
              image: DecorationImage(
                image: AssetImage("assets/images/radiologist.jpg",


                ),
                //fit: BoxFit.cover,

              ),

            ),
          ),
          Row(
            children: [
              Text("Radiologist"),
              SizedBox(width: 2,),
              Text("4.5"),
              Icon(Icons.star)
            ],
          ),

        ],
    ),

    SizedBox(width: 40,),
    Column(
      children: [
        Container(
            height: 120,
            width: 130,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFFFBE9D).withOpacity(0.5),
                  spreadRadius: 0.5,
                  blurRadius: 0.5,
                  offset: Offset(0, 22, ), // changes position of shadow
                ),
              ],
              image: DecorationImage(
                image: AssetImage("assets/images/Therapist.jpg",


                ),
                //fit: BoxFit.cover,

              ),
            ),
        ),
        Row(
          children: [
            Text("Therapist"),
            SizedBox(width: 2,),
            Text("4.7"),
            Icon(Icons.star)
          ],
        ),
      ],
    ),
  ],
),
          ],
        ),
      ),
    );
  }
}

