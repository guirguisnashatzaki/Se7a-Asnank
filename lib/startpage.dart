import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_asnan/home.dart';
import 'package:project_asnan/about.dart';




class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) =>Home()));
      },
        child:Icon(Icons.arrow_forward) ,
        backgroundColor: /*Color.fromRGBO(143, 148, 251, 0.8)*/Colors.grey,
      ),
      appBar: new AppBar(
        leading: InkWell(
          onTap: (){
            Navigator.of(context).push(
                new MaterialPageRoute(builder: (
                    BuildContext context) =>
                    About()));
          },
          child: Icon(
              Icons.help
          ),
        ),
        /*actions: [
          InkWell(
            onTap: (){
              Navigator.of(context).push(
                  new MaterialPageRoute(builder: (
                      BuildContext context) =>
                      rate()));
            },
            child: Icon(
                Icons.favorite
            ),
          ),
          SizedBox(width: 20,),
        ],*/
        centerTitle: true,
        backgroundColor: /*Color.fromRGBO(143, 148, 251, 1)*/Colors.black,
        title: Text("صحة أسنانك",style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: [
          Container(padding: EdgeInsets.all(20),child: Image.asset("assets/intro.jpg")),
          Container(
            height: 400,
            padding: EdgeInsets.fromLTRB(20, 15 , 20, 20),
            child: SingleChildScrollView(
              child: Container(
                color: Color(0xFFFFFFFF),
                padding: EdgeInsets.all(30),
                alignment: Alignment.topCenter,
                child: Text(
                  '''لكي نتمتع بابتسامة جميلة وبكل ثقة علينا ان نعتني جيدًا بصحة الأسنان والفم. سوف تجدون في هذا التطبيق كل ما تحتاجونه من معلومات للعناية بالأسنان والفم وطرق القيام بذلك، مصادر آلام الأسنان، وما هي أسباب تسوس الأسنان! لماذا قد تعاني من رائحة فم كريهة! إذا كنت تعاني من أي مشكلة تتعلق بصحة الفم والأسنان فـ سوف يساعدك هذا التطبيق في ايجاد التشخيص المناسب وأيضاً لمعرفة كيف تكون خطوات علاج الأسنان لدى طبيب الأسنان! ولكن كل ذلك لا يغني عن زيارة طبيب الأسنان !! فـينبغي أن تحرص على زيارة طبيب أسنانك بانتظام كل ستة أشهر للحفاظ على صحة أسنانك .. اكتشفوا معنا سر الابتسامة الصحية والجميلة.''',
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),

            ),
          ),
        ],

      ),

    );
  }
}



