import 'package:flutter/material.dart';

class hobby extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfffce7fc),
        title: Text(
          'My Hobby',
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
            top: 20,
            left: 10,
            child: Container(
              width: MediaQuery.of(context).size.width - 20,
              height: 350,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(color: Colors.white, blurRadius: 10),
              ]),
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      'Hobby',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                    elevation: 10,
                    child: ListTile(
                      title: Text('Learning new thing'),
                      subtitle: Text(
                          'One of my favourite hobby is to learn new thing and learn about new technology'),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Card(
                    elevation: 10,
                    child: ListTile(
                      title: Text('Reading book'),
                      subtitle: Text(
                          'Its another of my hobby i really love to read book specially science fiction novel '),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Card(
                    elevation: 10,
                    child: ListTile(
                      title: Text('Travelling'),
                      subtitle: Text(
                          'I like to travel a lot and like to see new places'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 130,
            child: FloatingActionButton.extended(
              label: Text('Back'),
              icon: Icon(Icons.arrow_back),
              backgroundColor: Color(0xffce07b3),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
