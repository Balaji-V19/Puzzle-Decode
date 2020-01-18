import 'package:flutter/material.dart';
import 'package:flutter_new/fstqust.dart';
import 'package:toast/toast.dart';

class FirstPage extends StatefulWidget {
  var phone;
  FirstPage(this.phone);
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
   var ttl=0;
   bool vali=false,val11=false,val12=false,val13=false,val14=false,
   val21=false,val22=false,val23=false,val24=false,val31=false,val32=false,val33=false,val34=false
   ,val41=false,val42=false,val43=false,val44=false,val51=false,val52=false,
   val53=false,val54=false;


   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ttl=0;
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
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                SizedBox(height: 20.0,),

                Text('Java programming',style: TextStyle(
                  fontSize: 20.0,
                ),),


                SizedBox(height: 20.0,),
                Text('1. Which class cannot be subclassed (or extended) in java?',style: TextStyle(
                  fontSize: 20.0,
                ),),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('abstract class'),
                    Checkbox(
                      onChanged: (val){
                        setState(() {
                          val11=val;
                          val12=false;
                          val13=false;
                          val14=false;
                        });
                      },
                      value: val11,
                    ),
                  ],
                ),
                SizedBox(width: 15.0,),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('parent class'),
                    Checkbox(
                      onChanged: (val){
                        setState(() {
                          val12=val;
                          val11=false;
                          val13=false;
                          val14=false;

                        });
                      },
                      value: val12,
                    ),
                  ],
                ),
                SizedBox(height: 15.0,),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Final class'),
                    Checkbox(
                      onChanged: (val){
                        setState(() {
                          val13=val;
                          val11=false;
                          val12=false;
                          val14=false;
                        });
                      },
                      value: val13,
                    ),
                  ],
                ),
                SizedBox(width: 15.0,),
                Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('None of above'),
                    Checkbox(
                      onChanged: (val){
                        setState(() {
                          val14=val;
                          val11=false;
                          val12=false;
                          val13=false;
                        });
                      },
                      value: val14,
                    ),
                  ],
                ),
                SizedBox(height: 20.0,),
                Text('2. Can we declare abstract static method ?',style: TextStyle(
                  fontSize: 20.0,
                ),),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Yes'),
                    Checkbox(
                      onChanged: (val){
                        setState(() {
                          val21=val;
                          val22=false;
                          val23=false;
                          val24=false;
                        });
                      },
                      value: val21,
                    ),
                  ],
                ),
                SizedBox(width: 15.0,),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('No'),
                    Checkbox(
                      onChanged: (val){
                        setState(() {
                          val22=val;
                          val21=false;
                          val23=false;
                          val24=false;
                        });
                      },
                      value: val22,
                    ),
                  ],
                ),
                SizedBox(height: 15.0,),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Some Special Cases only'),
                    Checkbox(
                      onChanged: (val){
                        setState(() {
                          val23=val;
                          val22=false;
                          val21=false;
                          val24=false;
                        });
                      },
                      value: val23,
                    ),
                  ],
                ),
                SizedBox(width: 15.0,),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('only in one place'),
                    Checkbox(
                      onChanged: (val){
                        setState(() {
                          val24=val;
                          val22=false;
                          val23=false;
                          val21=false;
                        });
                      },
                      value: val24,
                    ),
                  ],
                ),

                SizedBox(height: 20.0,),
                Text('3. Why we use array as a parameter of main method?',style: TextStyle(
                  fontSize: 20.0,
                ),),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('it is syntax'),
                    Checkbox(
                      onChanged: (val){
                        setState(() {
                          val31=val;
                          val32=false;
                          val33=false;
                          val34=false;
                        });
                      },
                      value: val31,
                    ),
                  ],
                ),
                SizedBox(width: 15.0,),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Can store multiple values'),
                    Checkbox(
                      onChanged: (val){
                        setState(() {
                          val32=val;
                          val31=false;
                          val33=false;
                          val34=false;
                        });
                      },
                      value: val32,
                    ),
                  ],
                ),
                SizedBox(height: 15.0,),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Both of above'),
                    Checkbox(
                      onChanged: (val){
                        setState(() {
                          val33=val;
                          val32=false;
                          val31=false;
                          val34=false;
                        });
                      },
                      value: val33,
                    ),
                  ],
                ),
                SizedBox(width: 15.0,),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('None of above'),
                    Checkbox(
                      onChanged: (val){
                        setState(() {
                          val34=val;
                          val32=false;
                          val33=false;
                          val31=false;
                        });
                      },
                      value: val34,
                    ),
                  ],
                ),

                SizedBox(height: 20.0,),
                Text('4. Suspend thread can be revived by using?',style: TextStyle(
                  fontSize: 20.0,
                ),),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('start() method'),
                    Checkbox(
                      onChanged: (val){
                        setState(() {
                          val41=val;
                          val42=false;
                          val43=false;
                          val44=false;
                        });
                      },
                      value: val41,
                    ),
                  ],
                ),
                SizedBox(width: 15.0,),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Suspend() method'),
                    Checkbox(
                      onChanged: (val){
                        setState(() {
                          val42=val;
                          val41=false;
                          val43=false;
                          val44=false;
                        });
                      },
                      value: val42,
                    ),
                ],),
                SizedBox(height: 15.0,),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('resume() method'),
                    Checkbox(
                      onChanged: (val){
                        setState(() {
                          val43=val;
                          val42=false;
                          val41=false;
                          val44=false;
                        });
                      },
                      value: val43,
                    ),
                  ],
                ),
                SizedBox(width: 15.0,),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('yield() method'),
                    Checkbox(
                      onChanged: (val){
                        setState(() {
                          val44=val;
                          val42=false;
                          val43=false;
                          val41=false;
                        });
                      },
                      value: val44,
                    ),
                  ],
                ),
                SizedBox(height: 20.0,),
                Text('5. Runnable is ?',style: TextStyle(
                  fontSize: 20.0,
                ),),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Class'),
                    Checkbox(
                      onChanged: (val){
                        setState(() {
                          val51=val;
                          val52=false;
                          val53=false;
                          val54=false;
                        });
                      },
                      value: val51,
                    ),
                  ],
                ),
                SizedBox(width: 15.0,),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Method'),
                    Checkbox(
                      onChanged: (val){
                        setState(() {
                          val52=val;
                          val51=false;
                          val53=false;
                          val54=false;
                        });
                      },
                      value: val52,
                    ),
                  ],
                ),
                SizedBox(height: 15.0,),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Variable'),
                    Checkbox(
                      onChanged: (val){
                        setState(() {
                          val53=val;
                          val52=false;
                          val51=false;
                          val54=false;
                        });
                      },
                      value: val53,
                    ),
                  ],
                ),
                SizedBox(width: 15.0,),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Interface'),
                    Checkbox(
                      onChanged: (val){
                        setState(() {
                          val54=val;
                          val52=false;
                          val53=false;
                          val51=false;
                        });
                      },
                      value: val54,
                    ),
                  ],
                ),
                SizedBox(height: 30.0,),
                Center(
                  child: RaisedButton(
                    child: Text('Submit',style: TextStyle(fontSize: 15.0),),
                    onPressed: (){
                      if(val13){
                        ttl+=10;
                      }
                      if(val22){
                        ttl+=10;
                      }
                      if(val32){
                        ttl+=10;
                      }
                      if(val43){
                        ttl+=10;
                      }
                      if(val54){
                        ttl+=10;
                      }
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>fstqus(ttl,widget.phone)));
                      print(ttl);
                      //Toast.show('your Score is $ttl',context,duration:Toast.LENGTH_LONG,gravity: Toast.BOTTOM);
                      setState(() {
                        val11=false;val12=false;val13=false;val14=false;
                        val21=false;val22=false;val23=false;val24=false;val31=false;val32=false;
                        val33=false;val34=false;val41=false;val42=false;val43=false;val44=false;
                        val51=false;val52=false;val53=false;val54=false;
                      });
                    },
                  ),
                ),
                SizedBox(height: 30.0,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
