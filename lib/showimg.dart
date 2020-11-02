import 'package:flutter/material.dart';

class showimg extends StatelessWidget {
  String img;
  showimg({this.img});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: InkWell(
        onTap: (){
          Navigator.pop(context);
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  image: AssetImage('$img'), fit: BoxFit.contain)),
        ),
      ),
    );
  }
}
