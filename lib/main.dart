import 'package:flutter/material.dart';
import 'package:slide_popup_dialog/slide_popup_dialog.dart' as spd;
import 'education.dart';
import 'publication.dart';
import 'skill.dart';
import 'showimg.dart';
import 'gallery.dart';
import 'hobby.dart';

void main() {
  runApp(MaterialApp(
    title: 'My profile',
    home: myapp(),
  ));
}

class myapp extends StatefulWidget {
  @override
  mystate createState() => mystate();
}

class mystate extends State<myapp> {
  String img = 'images/sh.jpg';
  String a = '01757381345';
  void change() {
    if (a == '01757381345') {
      setState(() {
        a = '01826053617';
      });
    } else {
      setState(() {
        a = '01757381345';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfffce7fc),
        title: Text(
          'My Profile',
          style: TextStyle(
            color: Color(0xff90B195),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            color: Color(0xfff98ef6),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 200,
            decoration: BoxDecoration(
                color: Color(0xfffebdfc),
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(75)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                  ),
                ]),
          ),
          Positioned(
            top: 150,
            left: 10,
            right: 10,
            child: Container(
              height: 230,
              width: 300,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Md.Ahsanul Kabir',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text('Mobile:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        InkWell(
                          onTap: () {
                            change();
                          },
                          child: Text('$a'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text('Mail:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        Text('aksar.kabir@gmail.com'),
                      ],
                    ),
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   children: <Widget>[
                  //     Text(
                  //       'Career Objective:',
                  //       style: TextStyle(
                  //         fontSize: 15,
                  //         color: Colors.red
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // Row(
                  //   children: <Widget>[
                  //     Text('To work as a flutter developer in a competitive professional environment and utilize'),
                  //   ],
                  // ),
                  ListTile(
                    title: Text('Career Objective:'),
                    subtitle: Text(
                      'To work as a flutter developer in a competitive professional environment and utilize my creativity,skill and innovative thinking along with facing challenging opportunities with sincerity',
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xfffce7fc),
                    blurRadius: 10,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 90,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => showimg(
                              img: img,
                            )));
              },
              child: Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('$img'),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 2,
            child: Container(
              height: 110,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffe0a4de),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => skill()));
                        },
                        borderRadius: BorderRadius.circular(10),
                        splashColor: Color(0xff780575),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            // color: Color(0xffe0a4de),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Center(
                            child: Text(
                              'Skill',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffe0a4de),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => publication()));
                        },
                        borderRadius: BorderRadius.circular(10),
                        splashColor: Color(0xff780575),
                        child: Container(
                          decoration: BoxDecoration(
                            // color: Color(0xffe0a4de),
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Center(
                            child: Text(
                              'Publications',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffe0a4de),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        splashColor: Color(0xff780575),
                        // highlightColor: Color(0xfff98ef6),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => education()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            // color: Color(0xffe0a4de),
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Center(
                            child: Text(
                              'Education Qualification',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              width: MediaQuery.of(context).size.width,
              // decoration: BoxDecoration(
              //   border: Border.all(color: Colors.grey),
              // ),
            ),
          ),
          Positioned(
            left: 150,
            bottom: 124,
            // child: FloatingActionButton(
            //   backgroundColor: Color(0xffce07b3),
            //   child: Icon(Icons.add),
            //   onPressed: () {
            //     show2();
            //   },
            // ),
            child: FloatingActionButton.extended(
              onPressed: () {
                show2();
              },
              label: Text('Details'),
              backgroundColor: Color(0xffce07b3),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xffa609bc),
              ),
              child: Center(
                child: Text(
                  'Gallery & Hobby',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Card(
              elevation: 10,
              child: ListTile(
                title: Text('Gallery'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => gallery()));
                },
              ),
            ),
            Card(
              elevation: 10,
              child: ListTile(
                title: Text('Hobby'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => hobby()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void show2() {
    spd.showSlideDialog(
        context: context,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: ListTile(
                title: Text('Father:'),
                subtitle: Text('Md.Abdul Hafiz'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: ListTile(
                title: Text('Mother:'),
                subtitle: Text('Hosne Ara'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: ListTile(
                title: Text('Address:'),
                subtitle: Text('408/2,Gulbag panir pump ,Mouchak,Dhaka'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: ListTile(
                title: Text('Religion:'),
                subtitle: Text('Islam'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: ListTile(
                title: Text('Age'),
                subtitle: Text('24'),
              ),
            ),
          ],
        ));
  }
}
