import 'package:flutter/material.dart';
import 'package:project_asnan/startpage.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<bool> _mockcheckforsession() async{
    await Future.delayed(Duration(milliseconds: 3000),() {});
    return true;
  }

  void _navigatetologin(){
    Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (BuildContext context) => Start()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFFFFFFF),
        alignment: Alignment.center,
        child:Image.asset("assets/splash.jpg"),
      ),

    );
  }

  @override
  void initState() {
    super.initState();
    _mockcheckforsession().then((value) => _navigatetologin());
  }
}




