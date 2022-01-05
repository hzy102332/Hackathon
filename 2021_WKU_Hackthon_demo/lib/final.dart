import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:history/main.dart';

class fianl extends StatelessWidget {

  void _textFieldChanged(String str) {
    print(str);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/map.png"),
              fit: BoxFit.cover,
            )),
          child: Column(

            children: [
              SizedBox(height: 20,),
              TextField(
                cursorColor: Colors.white,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  icon: Icon(Icons.text_fields),
                  labelText: '如果对学校未来规划有建议，请输入：',
                  fillColor: Colors.orange,
                  filled: true
                ),
                onChanged: _textFieldChanged,
                autofocus: false,
              ),
              SizedBox(height: 20,),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RaisedButton(onPressed:(){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => back()));},
                      child: Text('提交 ！',style: TextStyle(fontSize: 20),),
                        ),
                    RaisedButton(onPressed:(){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => back()));},
                      child: Text('没有建议',style: TextStyle(fontSize: 20),),
                    ),
                  ],
                ),
              )
            ],),
      ),
    );
  }
}


class back extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('You have completed this journey !',style: TextStyle(fontSize: 30),),
              SizedBox(height: 20,),
              Text('You can click the button to restart new journey !',style: TextStyle(fontSize: 30),),
              SizedBox(height: 20,),
              RaisedButton(onPressed:(){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));},
                child: Text('Restart',style: TextStyle(fontSize: 20),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
