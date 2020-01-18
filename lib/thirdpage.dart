import 'package:flutter/material.dart';
import 'package:flutter_new/forthpage.dart';
import 'package:toast/toast.dart';

class Thirdpage extends StatefulWidget {
  var tot,phone;
  Thirdpage(this.tot,this.phone);
  @override
  _ThirdpageState createState() => _ThirdpageState();
}

class _ThirdpageState extends State<Thirdpage> {

  var ttl;
  bool vali=false,val11=false,val12=false,val13=false,val14=false,
      val21=false,val22=false,val23=false,val24=false,val31=false,val32=false,val33=false,val34=false
  ,val41=false,val42=false,val43=false,val44=false,val51=false,val52=false,
      val53=false,val54=false;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ttl=widget.tot;
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

                Text('Python programming',style: TextStyle(
                  fontSize: 20.0,
                ),),


                SizedBox(height: 20.0,),
                Text('1. How can we swap two numbers a = 10, b = 20 in python without using third variable ?',style: TextStyle(
                  fontSize: 20.0,
                ),),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(' a = b, b = a'),
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
                    Text('a,b = b,a'),
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
                    Text('both a & b'),
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
                    Text('b = a, a = b'),
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
                Text('2. In the following options which are python libraries which are used for data analysis and scientific computations ?',style: TextStyle(
                  fontSize: 20.0,
                ),),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Numpy'),
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
                    Text('Scipy'),
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
                    Text('Pandas'),
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
                    Text('None of above'),
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
                Text('3. What is output for − max(''please help '') ?',style: TextStyle(
                  fontSize: 20.0,
                ),),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('s'),
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
                    Text('a blank space character'),
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
                    Text('e'),
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
                    Text('p'),
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
                Text('4.  How to create a frame in Python? ?',style: TextStyle(
                  fontSize: 20.0,
                ),),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Frame = new.window()'),
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
                    Text('Frame = frame.new()'),
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
                    Text('Frame = Frame()'),
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
                    Text('Frame = window.new()'),
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
                Text('5. In Python we can create a popup menu. Select the code to display a popup menu? ?',style: TextStyle(
                  fontSize: 20.0,
                ),),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Menu.post(250,250)'),
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
                    Text('Menu.post()'),
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
                    Text('Menu.display()'),
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
                    Text('Menu.display_popup(250,250)'),
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
                      if(val24){
                        ttl+=10;
                      }
                      if(val31){
                        ttl+=10;
                      }
                      if(val43){
                        ttl+=10;
                      }
                      if(val51){
                        ttl+=10;
                      }
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Forthpage(ttl,widget.phone)));
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
