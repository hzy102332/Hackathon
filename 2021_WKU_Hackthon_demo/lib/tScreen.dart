import 'package:flutter/material.dart';
import 'Global.dart';
import 'package:history/SecondScreen.dart';
import 'package:history/final.dart';

class tScreen extends StatelessWidget {

List list = ["2018  09","2018  11","2019  01", "2019  03","2019  05","2019  07",  "2019 09"];

@override
Widget build(BuildContext context) {

  return Scaffold(
    appBar: new AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.blue,
      title: new Text(list[1]),
    ),
    body: Center(

      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 50,),
          RaisedButton( onPressed: (){},
            child: Text("无事发生 ~",style: TextStyle(fontSize: 40),),),
          SizedBox(height: 50,),
          RaisedButton(
            onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => t2Screen()));
            },
            child: Text("Next >>",style: TextStyle(fontSize: 40),),)
        ],),
    ),
  );
}
}

class t2Screen extends StatelessWidget {

  List list = ["2018  09","2018  11","2019  02", "2019  04","2019  05","2019  07",  "2019 09"];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: new AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blue,
          title: new Text(list[2]),
        ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/2019.2.jpg"),
              fit: BoxFit.cover,
            )),
      child:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
            RaisedButton( onPressed: (){
              showDialog<Null>(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return new AlertDialog(
                    title: new Text('2019.2 王立聘任为wku president'),
                    content: new SingleChildScrollView(
                      child: new ListBody(
                        children: <Widget>[
                          new Text('王立为浙江大学求是特聘教授，博士生导师，'),
                          new Text('英国皇家化学会会士的')
                        ],
                      ),
                    ),
                    actions: <Widget>[
                      new FlatButton(
                        child: new Text('确定'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              ).then((val) {
                print(val);
              });          },
              child: Text("事件！",style: TextStyle(fontSize: 40),),),
            SizedBox(height: 50,),
            RaisedButton(

              onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => fianl()));
            },
              child: Text("Next >>",style: TextStyle(fontSize: 40),),)
          ],),
      ),
      ),
    );
  }
}