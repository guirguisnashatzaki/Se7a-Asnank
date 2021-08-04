import 'package:flutter/material.dart';

class About extends StatefulWidget {

  /*List<String> paths=[
    "assets/avatar.png",
    "assets/avatar.png",
    "assets/avatar.png"
  ];

  List<String> names=[
    "ميريام نبيل",
    "",
    "",
  ];*/

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: InkWell(onTap: (){Navigator.pop(context);}, child: Icon(Icons.arrow_back,color: Colors.black,)),
        title: Text("مقدم من",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
      ),
      /*body: ListWheelScrollView(
        magnification: 20.0,
        itemExtent: 120,
        diameterRatio: 1.5,
        offAxisFraction: -1.5,
        children: List.generate(
          3,
              (i) => container(path: widget.paths[i],name: widget.names[i]),
        ),
      ),*/

      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(15),
          padding: EdgeInsets.all(10),
          child: Text('''هذا التطبيق مقدم كـجزء من مشروع تخرج طلبة البكالوريوس لطب الفم والأسنان بجامعة فاروس بالأسكندرية
وهم :
د/ آية الله عادل أبوسن
د/ ماريام نبيل شلبي
د/ مارينا ماهر مينا
 
تحت إشراف الدكتور/ خالد سمير أبو العزم (قسم تقويم الأسنان)
وعميد الكلية: الأستاذ الدكتور/ أحمد يحيي عاشور

اعداد : م/جرجس نشأت زكي''',
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}
class MyContainer extends StatelessWidget {

  final String path,name;

  MyContainer({this.path,this.name});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            /*image: DecorationImage(
                image: AssetImage(path),
                fit: BoxFit.fill
            ),*/
          ),
        ),
        Center(
          child: Text(
            name,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50
            ),
          ),
        )
      ],
    );
  }
}
