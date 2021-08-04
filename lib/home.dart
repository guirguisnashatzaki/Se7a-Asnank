import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_asnan/titles.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {

  MediaQueryData mediaQueryData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("صحة أسنانك"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),

      body: LayoutBuilder(
        builder: (context, constraints){
          return Container(
            height: constraints.maxHeight,
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.center,
              child: As2elatiles(),
            ),
          );
        }
      ),

    );
  }
}



// ignore: must_be_immutable
class As2elatiles extends StatefulWidget {
  List<String> as2ela=[
    "مم تشكو ؟","خدعوك فقالوا","خطوات علاج الاسنان","تقويم الاسنان","معلومات تهمك"
  ];

  List<String> pics=[
    "assets/icons/mmtashko.jpg",
    "assets/icons/5ada3ookfkaloo.jpg",
    "assets/icons/kayfyatm3laagelasnan.jpg",
    "assets/icons/takwiimelasnan.jpg",
    "assets/icons/ma3loomatthmk.jpg",
  ];

  List<Color> colors=[
    Color.fromRGBO(143, 148, 251, 0.2),
    Color.fromRGBO(143, 148, 251, 0.4),
    Color.fromRGBO(143, 148, 251, 0.6),
    Color.fromRGBO(143, 148, 251, 0.8),
    Color.fromRGBO(143, 148, 251, 1)
  ];

  @override
  _As2elatilesState createState() => _As2elatilesState();
}

class _As2elatilesState extends State<As2elatiles> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: widget.as2ela.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        itemBuilder: (BuildContext context,int index){
          return Mytile(
            picture: widget.pics[index],
            number: index,
            colors: /*widget.colors[index]*/Colors.black,
            so2al: widget.as2ela[index],
          );
        }
    );
  }
}



// ignore: must_be_immutable
class Mytile extends StatelessWidget {

  final String so2al;
  final Color colors;
  final int number;
  final picture;
  List<String> as2ela=[
    "مم تشكو ؟","خدعوك فقالوا","خطوات علاج الاسنان","تقويم الاسنان","معلومات تهمك"
  ];

  Mytile({@required this.so2al,@required this.colors,@required this.number,@required this.picture});

  @override
  Widget build(BuildContext context) {
    return Card(
        child:Hero(
          tag: new Text(so2al),
          child: Material(
            child: GridTile(
              footer: Container(

                margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                padding: EdgeInsets.fromLTRB(20, 10, 30, 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: colors,
                  boxShadow: [
                    BoxShadow(
                      //color: Color.fromRGBO(143, 148, 251, 1),
                      color: Colors.black,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 9,
                    ),
                  ],

                ),
                child: Container(

                  child: InkWell(
                    onTap: (){
                        Navigator.of(context).push(
                            new MaterialPageRoute(builder: (
                                BuildContext context) =>
                                Titles(specialnumber: number,title: as2ela[number],)));
                      },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(so2al,style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),),

                        ),
                      ],
                    ),
                  ),


                ),

              ),
              child: Image.asset(picture),
            ),
          ),
        ) ,
    );
  }
}


