import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Resultpage extends StatefulWidget {
  var tot,phone;
  Resultpage(this.tot,this.phone);
  @override
  _ResultpageState createState() => _ResultpageState();
}

class _ResultpageState extends State<Resultpage> {
  var ttl;
  final FirebaseAuth  mauth=FirebaseAuth.instance;
  final Firestore fst=Firestore.instance;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ttl=widget.tot;
    fst.collection('Users').document(widget.phone).setData({'Result':ttl});

  }




  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('Puzzle Decode'),
      ),
      body: Container(
        height: height,
        width: width,
        child: Center(
          child: Text('Your Score is ${ttl}',style: TextStyle(
            fontSize: 30.0
          ),),
        ),
      ),
    );
  }
}
