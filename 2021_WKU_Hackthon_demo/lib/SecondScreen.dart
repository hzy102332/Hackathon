import 'package:flutter/material.dart';
import 'package:history/tScreen.dart';
import 'package:history/main.dart';
import 'Global.dart';

class SecondScreen extends StatelessWidget{

  Global global;

  List list = ["2018  09","2018  11","2019  01", "2019  03","2019  05","2019  07",  "2019 09"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blue,
          title: new Text(list[0]),
        ),
        body:Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("社团正在招新  ！！！",style: TextStyle(fontSize: 30),),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 500,
                      width: 500,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/5.png"),
                            fit: BoxFit.cover,
                          )),),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        RaisedButton(
                          onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => tScreen()));
                          },
                          child: Text("加入",style: TextStyle(fontSize: 20),),
                        ),
                        SizedBox(height: 50,),
                        RaisedButton( onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => tScreen()));
                        },
                          child: Text("不加入",style: TextStyle(fontSize: 20),),)
                      ],),

                  ],
                ),
                SizedBox(height: 100,),

              ],
            ))
    );
  }
}