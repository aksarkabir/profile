import 'package:flutter/material.dart';

class skill extends StatefulWidget{
  @override
  skill_state createState()=> skill_state();
}

class skill_state extends State<skill>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfffce7fc),
        title: Text(
          'Skill',
          style: TextStyle(
            color: Color(0xff90B195),
            ),
          ),
        centerTitle: true,
      ),
      body: DefaultTabController(
        length: 6,
        child: Stack(
          children: <Widget>[
            Container(
              color: Color(0xfff98ef6),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height-200,
              decoration: BoxDecoration(
                color: Color(0xfffebdfc),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(75)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                  ),
                ]
              ),
              child: ListView(
                padding: EdgeInsets.all(10),
                children: <Widget>[
                  TabBar(
                    labelColor: Colors.redAccent,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.red,
                    isScrollable: true,
                    tabs: <Widget>[
                      Tab(
                        child: Text('Programming Language'),
                      ),
                      Tab(
                        child: Text('Front End Design'),
                      ),
                      Tab(
                        child: Text('Database'),
                      ),
                      Tab(
                        child: Text('Framework'),
                      ),
                      Tab(
                        child: Text('Tool'),
                      ),
                      Tab(
                        child: Text('Sound Knowledge on'),
                      ),
                    ],
                  ),
                  Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 10
                        ),
                      ]
                    ),
                    child: TabBarView(
                      children: <Widget>[
                        Container(
                          child: Center(
                            child: ListTile(
                              title: Text('Language and SDK:'),
                              subtitle: Text(
                                'Dart,Flutter,Java,Python,PHP,C,C++,JavaScript',
                                style: TextStyle(
                                  fontSize: 15
                                ),
                                ),
                            ),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: ListTile(
                              title: Text('Front end:'),
                              subtitle: Text('HTML5,CSS3,Bootstrap4,JQuery,Ajex,React,w3.css,'),
                            ),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: ListTile(
                              title: Text('Database:'),
                              subtitle: Text('SQL,MySql,SQLlite'),
                            ),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: ListTile(
                              title: Text('FrameWork:'),
                              subtitle: Text('DJango'),
                            ),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: ListTile(
                              title: Text('Tool:'),
                              subtitle: Text('Visio,Git,Excel,Linux Ubuntu OS'),
                            ),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: ListTile(
                              title: Text('Sound Knowledge on:'),
                              subtitle: Text('Agile,OOP,Data Structure,Design Pattern'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 130,
              bottom: 30,
              child: FloatingActionButton.extended(
                label: Text('Back'),
                icon: Icon(Icons.arrow_back),
                backgroundColor: Color(0xffce07b3),
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      )
    );
  }

}