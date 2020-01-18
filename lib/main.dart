import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new/firstpage.dart';
import 'package:toast/toast.dart';

void main() => runApp(MaterialApp(home: MyApp(),));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {



  TextEditingController name,clg,dept,team,email,pswd,phone;

  final FirebaseAuth  mauth=FirebaseAuth.instance;
  final Firestore fst=Firestore.instance;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    name=TextEditingController(text: '');
    team=TextEditingController(text: '');
    dept=TextEditingController(text: '');
    clg=TextEditingController(text: '');
    email=TextEditingController(text: '');
    pswd=TextEditingController(text: '');
    phone=TextEditingController(text: '');
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
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0,),
              Text('Register here',style:TextStyle(
                fontSize: 30.0
              ) ,),
              SizedBox(height:height*0.1,),
              TextField(
                controller: name,
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                  hintStyle: TextStyle(
                    fontSize: 15.0
                  ),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                  suffixIcon: Icon(Icons.person_pin),
                ),
                
              ),
              SizedBox(height:20.0,),
              TextField(
                controller: email,
                decoration: InputDecoration(
                  hintText: 'Enter your Email',
                  hintStyle: TextStyle(
                      fontSize: 15.0
                  ),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                  suffixIcon: Icon(Icons.email),
                ),

              ),
              SizedBox(height:20.0,),
              TextField(
                controller: pswd,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  hintStyle: TextStyle(
                      fontSize: 15.0
                  ),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                  suffixIcon: Icon(Icons.visibility_off),
                ),

              ),
              SizedBox(height:20.0,),
              TextField(
                controller: phone,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter your Phone number',
                  hintStyle: TextStyle(
                      fontSize: 15.0
                  ),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                  suffixIcon: Icon(Icons.phone),
                ),

              ),
              SizedBox(height:20.0,),
              TextField(
                controller: clg,
                decoration: InputDecoration(
                  hintText: 'Enter your College Name',
                  hintStyle: TextStyle(
                      fontSize: 15.0
                  ),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                  suffixIcon: Icon(Icons.location_on),
                ),

              ),
              SizedBox(height:20.0,),
              TextField(
                controller: dept,
                decoration: InputDecoration(
                  hintText: 'Enter your Department',
                  hintStyle: TextStyle(
                      fontSize: 15.0
                  ),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                  suffixIcon: Icon(Icons.border_color),
                ),

              ),
              SizedBox(height:20.0,),
              TextField(
                controller: team,
                decoration: InputDecoration(
                  hintText: 'Enter your Team Name',
                  hintStyle: TextStyle(
                      fontSize: 15.0
                  ),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                  suffixIcon: Icon(Icons.group_add),
                ),

              ),
              SizedBox(height: 30.0,),
              RaisedButton(
                color: Colors.lightBlue,
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text('Submit',style: TextStyle(fontSize: 20.0,
                fontWeight: FontWeight.normal),),
                onPressed: (){
                  if(team.text.isEmpty || name.text.isEmpty || dept.text.isEmpty || clg.text.isEmpty || email.text.isEmpty || pswd.text.isEmpty || phone.text.isEmpty){
                    Toast.show('Enter all the details',context, duration: Toast.LENGTH_LONG,gravity: Toast.TOP);
                  }
                  else{
                    mauth.createUserWithEmailAndPassword(email: email.text, password:pswd.text).then((val
                    ){fst.collection('Users').document(val.user.uid).setData({"Name":name.text,
                      'College name':clg.text,"Department":dept.text, "Phone":phone.text});
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>FirstPage(phone.text)));}
                    ).catchError((e)=>Toast.show('Something wrong',context, duration: Toast.LENGTH_LONG,gravity: Toast.TOP));

                  }
                },
              ),
              SizedBox(height: 30.0,),
            ],
          ),
        ),
      ),

    );

  }
}