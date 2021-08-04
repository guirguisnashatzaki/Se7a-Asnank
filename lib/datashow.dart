import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_asnan/data.dart';
import 'package:project_asnan/videoplayer.dart';


class Datashow extends StatefulWidget {

  static int numberstatic;
  Data data=new Data();
  int number=0;
  static String so2al;
  int specialnumber;
  List<String> as2ela;
  List<String> info;
  String path,pathsoora,path1,path2;

  isatbak(){
    if(specialnumber==3){
      if(number==5){
        path1='assets/swarziada/atbak1.jpg';
        path2='assets/swarziada/atbak2.jpg';
        return true;
      }
      return false;
    }
    return false;
  }

  isvideo(){
    if(this.specialnumber!=2){

    }else{
      if(this.number==0){
        path='videos/video1.mp4';
      }
      if(this.number==1){
        path='videos/video2.mp4';
      }
      if(this.number==2){
        path='videos/video4.mp4';
      }
      if(this.number==3){
        path='videos/video3.mp4';
      }
      if(this.number>3){
        return false;
      }
      return true;
    }
    if(this.specialnumber!=3){

    }else{
      if(this.number==8){
        path='videos/orthovideo.mp4';
        return true;
      }

    }
    return false;
  }

  issoora(){
    if(specialnumber==0){
      if(number==10){
        pathsoora='assets/swarziada/akias.jpg';
        return true;
      }
      if(number==4){
        pathsoora='assets/swarziada/5orag.jpg';
        return true;
      }
      if(number==5){
        pathsoora='assets/swarziada/kor7a.jpg';
        return true;
      }
      if(number==7){
        pathsoora='assets/swarziada/sadma.jpg';
        return true;
      }
      if(number==0){
        pathsoora='assets/swarziada/badbreath.jpg';
        return true;
      }
      if(number==1){
        pathsoora='assets/swarziada/elthab3asabelasnan.jpg';
        return true;
      }
      if(number==2){
        pathsoora='assets/swarziada/ta5iirlwnasnan.jpg';
        return true;
      }
      if(number==9){
        pathsoora='assets/swarziada/sratan.jpg';
        return true;
      }
      if(number==11){
        pathsoora='assets/swarziada/ta5l5l.jpg';
        return true;
      }
      if(number==8){
        pathsoora='assets/swarziada/taswaos2.jpg';
        return true;
      }
      if(number==3){
        pathsoora='assets/swarziada/elthab.jpg';
        return true;
      }
      return false;
    }
    if(specialnumber==1){
      if(number==2){
        pathsoora='assets/swarziada/forsha.jpg';
        return true;
      }
      if(number==4){
        pathsoora='assets/swarziada/ma3goon.jpg';
        return true;
      }
      if(number==1){
        pathsoora='assets/swarziada/giir.jpg';
        return true;
      }
      if(number==6){
        pathsoora='assets/swarziada/atfal2.jpg';
        return true;
      }
      if(number==7){
        pathsoora='assets/swarziada/rii7a.jpg';
        return true;
      }
      if(number==5) {
        pathsoora = 'assets/swarziada/tabyiid.jpeg';
        return true;
      }
      if(number==16) {
        pathsoora = 'assets/swarziada/gum.jpeg';
        return true;
      }
      if(number==15) {
        pathsoora = 'assets/swarziada/pregnant.jpg';
        return true;
      }
      return false;
    }
    if(specialnumber==4){
      if(number==5){
        pathsoora='assets/swarziada/sokar.jpg';
        return true;
      }
      if(number==1){
        pathsoora='assets/swarziada/5iet.jpg';
        return true;
      }
      if(number==0){
        pathsoora='assets/swarziada/mafsal.png';
        return true;
      }
      if(number==4){
        pathsoora='assets/swarziada/dersel3a2el.jpg';
        return true;
      }
      if(number==2){
        pathsoora='assets/swarziada/tandiifforsha.jpg';
        return true;
      }
      if(number==10){
        pathsoora='assets/swarziada/cola.jpg';
        return true;
      }
      if(number==8){
        pathsoora='assets/swarziada/cigar.png';
        return true;
      }
      if(number==3){
        pathsoora='assets/swarziada/ta3liimat5al3.jpg';
        return true;
      }
      if(number==6){
        pathsoora='assets/swarziada/black.jpg';
        return true;
      }
      if(number==7){
        pathsoora='assets/swarziada/atfal.jpg';
        return true;
      }
      return false;
    }
    if(specialnumber==2){
      if(number==4){
        pathsoora='assets/swarziada/zra3a.jpg';
        return true;
      }
      if(number==6){
        pathsoora='assets/swarziada/kswaasnan.jpg';
        return true;
      }
      if(number==7){
        pathsoora='assets/swarziada/gra7adwa3emasnan.jpg';
        return true;
      }
      return false;
    }
    if(specialnumber==3){
      if(number==0){
        pathsoora='assets/swarziada/ta3riiftakwiim.jpg';
        return true;
      }
      if(number==9){
        pathsoora='assets/swarziada/mothabet.jpg';
        return true;
      }
      if(number==2){
        pathsoora='assets/swarziada/7alattakwim.jpg';
        return true;
      }
      return false;
    }
    return false;
  }

  Datashow({this.specialnumber,this.number});

  @override
  _DatashowState createState() => _DatashowState();
}

class _DatashowState extends State<Datashow> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: new FloatingActionButton(onPressed: (){
        Navigator.pop(context);
      },
        child:Icon(Icons.arrow_back) ,
        backgroundColor: /*Color.fromRGBO(143, 148, 251, 0.8)*/Colors.grey,
      ),
      appBar: new AppBar(
        actions: [
          widget.isvideo()? InkWell(onTap:(){ Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => Classvideo(path: widget.path,)));} , child: Icon(Icons.video_label_sharp)):SizedBox(),
          SizedBox(width: 20,),
        ],
        centerTitle: true,
        title: Text(widget.as2ela[Datashow.numberstatic]),
        backgroundColor: /*Color.fromRGBO(143, 148, 251, 1)*/ Colors.black,
      ),
      drawer: new Drawer(
          child: Container(
            color: Colors.white,
            alignment: Alignment.center,
            //padding: EdgeInsets.all(10),
            child: ListView(
              children: [
                ...List.generate(widget.as2ela.length, (index) => DrawerTile(so2al: widget.as2ela[index],place: index,press: (){
                  setState(() {
                    Datashow.numberstatic=index;
                    widget.number=index;
                    Datashow.so2al=widget.info[Datashow.numberstatic];
                  });
                  Navigator.pop(context);
                },)),
              ],
            ),
          )
      ),

      body: new Stack(
        children: [
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
          )
          /*Opacity(
            opacity: 0.2,
            child: Container(
              alignment: Alignment.center,
              child: Image.asset("assets/bgtalet.jpg"),
            ),
          )*/,
          Container(
            alignment: Alignment.center,
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  alignment: Alignment.topCenter,
                  child: Text(widget.as2ela[Datashow.numberstatic],
                    textDirection: TextDirection.rtl
                    ,style: TextStyle(color: Colors.red,fontSize: 25, fontWeight: FontWeight.bold,),
                  ),
                ),
                widget.issoora()?
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(20),
                  child: Image.asset(widget.pathsoora),
                ):SizedBox(),
                Container(
                  margin: EdgeInsets.all(20),
                  alignment: Alignment.topCenter,
                  child: Text(
                    widget.info[Datashow.numberstatic],
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                widget.isatbak()?
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(20),
                  child: Image.asset(widget.path1),
                ):SizedBox(),
                widget.isatbak()?
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(20),
                  child: Image.asset(widget.path2),
                ):SizedBox(),

              ],
            ),
          )
        ],
      )



    );
  }

  @override
  void initState() {
    super.initState();
    Datashow.so2al=widget.data.info1[0];
    Datashow.numberstatic=widget.number;
    switch (widget.specialnumber){
      case 0:
        {
          widget.as2ela = widget.data.as2ela1;
          widget.info = widget.data.info1;
          break;
        }
      case 1:
        {
          widget.as2ela = widget.data.as2ela2;
          widget.info = widget.data.info2;
          break;
        }
      case 2:
        {
          widget.as2ela = widget.data.as2ela3;
          widget.info = widget.data.info3;
          break;
        }
      case 3:
        {
          widget.as2ela = widget.data.takwiimas2ela;
          widget.info = widget.data.takwiiminfo;
          break;
        }
      case 4:
        {
          widget.as2ela = widget.data.as2ela5;
          widget.info = widget.data.info5;
          break;
        }
    }
  }
}


// ignore: must_be_immutable
class DrawerTile extends StatefulWidget {

  int place;
  String so2al;

  final GestureTapCallback press;
  DrawerTile({
    this.so2al,this.place,this.press
  });

  @override
  _DrawerTileState createState() => _DrawerTileState();
}

class _DrawerTileState extends State<DrawerTile> {
  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
      padding: EdgeInsets.fromLTRB(20, 10, 30, 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Datashow.numberstatic==widget.place ? Colors.black54:Colors.black,
        /*gradient:datashow.numberstatic==widget.place ? LinearGradient(
            colors: [
              Color.fromRGBO(143, 148, 251, 1),
              Color.fromRGBO(143, 148, 251, 0.4),
            ]
        ):LinearGradient(
            colors: [
              Color.fromRGBO(120, 120, 201, 1),
              Color.fromRGBO(103, 188, 201, 0.4),
            ]
        )*/
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 9,
          ),
        ],

      ),
      child: Container(

        child: InkWell(
          onTap: widget.press,
          child: Container(
                child: Text(widget.so2al,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),),

              ),

        ),


      ),

    );
  }
}
