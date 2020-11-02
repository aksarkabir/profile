import 'package:flutter/material.dart';
import 'package:profile/main.dart';

class education extends StatefulWidget{
  @override
  my_state createState()=>my_state();
}

class my_state extends State<education>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xfff98ef6),
      appBar: AppBar(
        title: Text(
          'Education Qualification',
          style: TextStyle(
              color: Color(0xff90B195),
              fontSize: 20,
              fontWeight: FontWeight.bold),
          ),
        centerTitle: true,
        backgroundColor: Color(0xfffce7fc),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            elevation: 10,
            child: Container(
              child: Column(
                children: <Widget>[
                  Center(
                    child: Text(
                      'SSC',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text('River View School Rajshahi'),
                    subtitle: Row(
                      children: <Widget>[
                        Text(
                          'GPA:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            '4.81'
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            'Year:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            '2012'
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            elevation: 10,
            child: Container(
              child: Column(
                children: <Widget>[
                  Center(
                    child: Text(
                      'HSC',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text('Varendra College Rajshahi'),
                    subtitle: Row(
                      children: <Widget>[
                        Text(
                          'GPA:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            '4.21'
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            'Year:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            '2014'
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            elevation: 10,
            child: Container(
              child: Column(
                children: <Widget>[
                  Center(
                    child: Text(
                      'Bsc in CSE',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text('Stamford University Bangladesh'),
                    subtitle: Row(
                      children: <Widget>[
                        Text(
                          'CGPA:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            '3.50'
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            'Year:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            '2019'
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          FloatingActionButton.extended(
            onPressed: (){
              Navigator.pop(context);
            },
            label: Text('Back'),
            icon: Icon(Icons.arrow_back),
            backgroundColor: Color(0xffce07b3),
          ),
        ],
      ),
    );
  }

}