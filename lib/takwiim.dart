import 'package:flutter/material.dart';
import 'package:project_asnan/data.dart';

class Takwiimpage extends StatefulWidget {
  final String text="";
  final Data data=new Data();
  @override
  _TakwiimpageState createState() => _TakwiimpageState();
}

class _TakwiimpageState extends State<Takwiimpage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("تقويم الاسنان",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.black
      ),
      backgroundColor: Color(0xFFFFFFFF),

      body: Stack(
        children: [
          /*Positioned(
            top: 50,
            child: Opacity(
              opacity: 0.25,
              child: Container(
                height: 100,
                width: 100,
                alignment: Alignment.center,
                child: Image.asset("assets/toothsticker.jpg"),
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 1,
            child: Opacity(
              opacity: 0.25,
              child: Container(
                height: 100,
                width: 100,
                alignment: Alignment.center,
                child: Image.asset("assets/toothsticker.jpg"),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            child: Opacity(
              opacity: 0.25,
              child: Container(
                height: 100,
                width: 100,
                alignment: Alignment.center,
                child: Image.asset("assets/toothsticker.jpg"),
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            right: 1,
            child: Opacity(
              opacity: 0.25,
              child: Container(
                height: 100,
                width: 100,
                alignment: Alignment.center,
                child: Image.asset("assets/toothsticker.jpg"),
              ),
            ),
          ),*/
          /*Opacity(
            opacity: 0.75,
            child: Container(
              alignment: Alignment.center,
              child: Image.asset("assets/bgtany.jpg"),
            ),
          ),*/
          Positioned(
            bottom: 1,
            top: 1,
            child: Opacity(
              opacity: 0.2,
              child: Container(

                alignment: Alignment.center,
                child: Image.asset("assets/bgtalet.jpg"),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.center,
              child: Text(
                widget.text,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
