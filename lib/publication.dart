import 'package:flutter/material.dart';

class publication extends StatefulWidget {
  @override
  pub_state createState() => pub_state();
}

class pub_state extends State<publication> {
  int a = 0;
  Color b = Colors.red;
  Color c = Colors.black;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Publication and other',
          style: TextStyle(
              color: Color(0xff90B195),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Color(0xfffce7fc),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            color: Color(0xfff98ef6),
          ),
          Positioned(
            bottom: 2,
            child: Container(
              height: 120,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffe0a4de),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if(a==1){
                            a = 0;
                            b = Colors.red;
                            c= Colors.black;
                            }
                          });
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
                              'Publication',
                              style: TextStyle(
                                color: b,
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
                          setState(() {
                            if(a==0){
                              a = 1;
                              b = Colors.black;
                              c = Colors.red;
                            }
                          });
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
                              'Others',
                              style: TextStyle(
                                color: c,
                              ),
                              ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: IndexedStack(
              index: a,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 220,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Machine Learning',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ListTile(
                              title: Text(
                                'Study of Artificial Neural Network and Comparision with Vector Machine',
                              ),
                              subtitle: Text(
                                'published in Final Thesis presentation, CSE-57 Batch, SUB',
                              ),
                            ),
                          ],
                        ),
                        // color: Colors.red,
                        width: MediaQuery.of(context).size.width - 10,
                        height: 300,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          boxShadow: [
                            BoxShadow(color: Colors.white, blurRadius: 10),
                          ],
                        ),
                      )
                    ],
                  ),
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
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 220,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Other Activity',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ListTile(
                              title: Text(
                                'Programming contest 2nd position',
                              ),
                              subtitle: Text(
                                'Organized by Stamford University Computer socity 2016',
                              ),
                            ),
                            ListTile(
                              title: Text('English debat 2nd Position'),
                              subtitle:
                                  Text('Organized by Stamford Debat forum'),
                            ),
                          ],
                        ),
                        // color: Colors.red,
                        width: MediaQuery.of(context).size.width - 10,
                        height: 300,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          boxShadow: [
                            BoxShadow(color: Colors.white, blurRadius: 10),
                          ],
                        ),
                      )
                    ],
                  ),
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
              ],
            ),
          ),
          Positioned(
            left: 150,
            bottom: 154,
            child: FloatingActionButton.extended(
              label: Text('Back'),
              backgroundColor: Color(0xffce07b3),
              icon: Icon(Icons.arrow_back),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
