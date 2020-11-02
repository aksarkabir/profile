import 'package:flutter/material.dart';
import 'showimg.dart';

class gallery extends StatefulWidget {
  @override
  gstate createState()=>gstate();
}

class gstate extends State<gallery>{
  List<String> img = [
    'images/pic1.jpg',
    'images/pic2.jpg',
    'images/pic3.jpg',
    'images/pic4.jpg',
    'images/pic5.jpeg',
    'images/sh_p.jpg',
    'images/sh_profile.JPG',
    'images/sh.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: img.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: (){
              // showimg(img: img[index],);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>showimg(img: img[index],)));
            },
            child: Container(
              width: 30,
              height: 30,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: Colors.grey, blurRadius: 20),
                ],
                image: DecorationImage(
                  image: AssetImage('${img[index]}'),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

}
