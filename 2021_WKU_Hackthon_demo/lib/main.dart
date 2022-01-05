import 'package:flutter/material.dart';
import 'dart:math';
import 'package:history/SecondScreen.dart';
import 'Global.dart';

void main() {
  runApp(MyApp());
}

class Global{
  var index = 1;
  var shu = Random().nextInt(6);
  String shetuan = 'images/.png';
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {

  double year = 2018;
  double month = 9;
  Global global;
  List list = ["2018  09","2018  11","2019  01", "2019  03","2019  05","2019  07",  "2019 09"];

  @override
  Widget build(BuildContext context) {
    // RotatedBox(quarterTurns: 1, child: Scaffold(
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage("images/gate.png"),
            fit: BoxFit.cover,
          )),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
                Text("WKU Restart Simulation",style: TextStyle(fontSize: 50),),
                SizedBox(height: 100,),
                RaisedButton(onPressed: () {

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondScreen()));
                },
                  color: Colors.orange,
                  child: Text("2012-2015",style: TextStyle(color: Colors.white,fontSize: 20),),),
                SizedBox(height: 50,),
                RaisedButton(onPressed: () {

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondScreen()));
                },
                  color: Colors.orange,
                  child: Text("2015-2018",style: TextStyle(color: Colors.white,fontSize: 20),),),
                SizedBox(height: 50,),
                RaisedButton(onPressed: () {

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondScreen()));
                },
                  color: Colors.orange,
                  child: Text("2018-2022",style: TextStyle(color: Colors.white,fontSize: 20),),),
              ],
            ),
          ),
        ),
      ), // This
    // )
    ); // 横屏显示
  }
}



