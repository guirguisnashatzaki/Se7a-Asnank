import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_asnan/data.dart';

import 'datashow.dart';

class Titles extends StatefulWidget {
   int specialnumber;
  List<String> as2ela;
   String title;
  double width=100;double height=100;
   Data data=new Data();
  static MediaQueryData _mediaQueryData;
  Titles({this.specialnumber,this.title});
  @override
  _TitlesState createState() => _TitlesState();
}

class _TitlesState extends State<Titles> {

  @override
  Widget build(BuildContext context) {

    setState(() {
      Titles._mediaQueryData=MediaQuery.of(context);
      widget.width=Titles._mediaQueryData.size.width;
      widget.height=Titles._mediaQueryData.size.height;
    });

    return Scaffold(
      //backgroundColor: Color(0x0190CAF8),
      appBar: new AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(widget.title,
        textDirection: TextDirection.rtl,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
      ),

      body: new Stack(
        children: [
          Positioned(
            bottom: 1,
            top: 1,
            child: Opacity(
              opacity: 0.2,
              child: Container(
                color: Color(0xff5CB5C7),
                height: widget.height,
                width: widget.width,
                alignment: Alignment.center,
                child: Image.asset("assets/bgrabe3.jpg"),
              ),
            ),
          )
          /*Opacity(
            opacity: 0.2,
            child: Container(
              alignment: Alignment.center,
              child: Image.asset("assets/bgtalet.jpg"),
            ),
          )*/
          ,Container(
           // color: Colors.white,
            alignment: Alignment.center,
            child: ListView(
              children: [
                ...List.generate(widget.as2ela.length, (index) => Mybutton(title: widget.as2ela[index], colors:Colors.black,number: widget.specialnumber,index: index,))
              ]
            ),
          )
        ],
      ),
    );
  }

  @override

  void initState() {
    super.initState();
    switch (widget.specialnumber){

      case 0:
        {
          widget.as2ela = widget.data.as2ela1;
          break;
        }
      case 1:
        {
          widget.as2ela = widget.data.as2ela2;
          break;
        }
      case 2:
        {
          widget.as2ela = widget.data.as2ela3;
          break;
        }
      case 3:
        {
          widget.as2ela = widget.data.takwiimas2ela;
          break;
        }
      case 4:
        {
          widget.as2ela = widget.data.as2ela5;
          break;
        }
    }
  }
}



class Mybutton extends StatefulWidget {

  final String title;
  final Color colors;
  final int number;
  final int index;

  const Mybutton({Key key, this.title, this.colors,this.number,this.index}) : super(key: key);

  @override
  _MybuttonState createState() => _MybuttonState();
}

class _MybuttonState extends State<Mybutton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(
            new MaterialPageRoute(builder: (
                BuildContext context) =>
                Datashow(specialnumber: widget.number,number: widget.index,)));
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: widget.colors
        ),
        child: Text(widget.title,style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white
        ),textDirection: TextDirection.rtl),
        //color: widget.colors,
      ),
    );
  }
}




