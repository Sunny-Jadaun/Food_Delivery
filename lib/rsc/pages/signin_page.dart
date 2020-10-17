import 'package:flutter/material.dart';

class SigninPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
      return SigninPageState();
  } 
}

class SigninPageState extends State<SigninPage>{
  bool _toggleTap =true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Sign In",
          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),textScaleFactor: 2.0,),
          SizedBox(height: 150.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text("forgotten password?", style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold),textScaleFactor: 1.5,)
            ],
          ),
          SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              elevation: 10.0,
              child: Column(
                children: <Widget>[
                  _emailId(),
                  _password(),
                ],
              ),
            ),
          ),
          Container(
            height: 40.0,
            width: 330,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Text("Sign In",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18.0),),
          ),
          Divider(),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Haven't any account?",style:TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 18.0),),
              SizedBox(width: 10.0,),
              Text("Sign Up",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 18.0),),
            ],
          )
        ],
      )
    );
  }
  Widget _emailId(){
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Enter email or ID",
        hintStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0,color: Colors.grey),
      ),
    );
  }
  Widget _password(){
    return TextFormField(
      decoration: InputDecoration(
        hintText: "password",
        hintStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0,color: Colors.grey),
        suffixIcon: IconButton(
          icon: _toggleTap ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
           onPressed: (){
            setState(() {
            _toggleTap = ! _toggleTap;
            });
          }
          ),
      ),
      obscureText: _toggleTap,
    );
  }
}