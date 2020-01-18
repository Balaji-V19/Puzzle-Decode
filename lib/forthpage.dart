import 'package:flutter/material.dart';
import 'package:flutter_new/result.dart';


class Forthpage extends StatefulWidget {
  var tot,phone;
  Forthpage(this.tot,this.phone);
  @override
  _ForthpageState createState() => _ForthpageState();
}

class _ForthpageState extends State<Forthpage> {

  TextEditingController name,clg,dept,team,dt;
  var ttl;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ttl=widget.tot;
    name=TextEditingController(text: '');
    team=TextEditingController(text: '');
    dept=TextEditingController(text: '');
    clg=TextEditingController(text: '');
    dt=TextEditingController(text: '');
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
                Text('Find the image ', style: TextStyle(
                  fontSize: 20.0
                ),),
                
                SizedBox(height: 20.0,),
                
                Container(
                  width: width,
                  height: height*0.2,
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjF2aak-j4c564rATOOkzVh6A7RJLJuFkyFNujlDaGcF4zcfpbRQ&s',fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 10.0,),
                Padding(
                  padding: const EdgeInsets.only(left:10.0,right: 10.0),
                  child: TextField(
                    controller: name,
                    decoration: InputDecoration(
                      hintText:'Google it and find the image URL',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                    ),
                  ),
                ),


                SizedBox(height: 30.0,),

                Container(
                  width: width,
                  height: height*0.2,
                  child: Image.network(
                    'https://resize.khabarindiatv.com/resize/newbucket/715_-/2019/09/google-doodle-1568704484.jpg',
                  ),
                ),
                SizedBox(height: 10.0,),
                Padding(
                  padding: const EdgeInsets.only(left:10.0,right: 10.0),
                  child: TextField(
                    controller: clg,
                    decoration: InputDecoration(
                      hintText:'Google it and find the image URL',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                    ),
                  ),
                ),

                SizedBox(height: 30.0,),

                Container(
                  width: width,
                  height: height*0.2,
                  child: Image.network(
                    'https://akm-img-a-in.tosshub.com/sites/btmt/images/stories/google-doodle-_660_092915094849.jpg',fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 10.0,),
                Padding(
                  padding: const EdgeInsets.only(left:10.0,right: 10.0),
                  child: TextField(
                    controller: dept,
                    decoration: InputDecoration(
                      hintText:'Google it and find the image URL',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                    ),
                  ),
                ),



                SizedBox(height: 30.0,),

                Container(
                  width: width,
                  height: height*0.2,
                  child: Image.network(
                    'https://aniportalimages.s3.amazonaws.com/media/details/googledoodledec24.jpg',fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 10.0,),
                Padding(
                  padding: const EdgeInsets.only(left:10.0,right: 10.0),
                  child: TextField(
                    controller: dt,
                    decoration: InputDecoration(
                      hintText:'Google it and find the image URL',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                    ),
                  ),
                ),


                SizedBox(height: 30.0,),

                Container(
                  width: width,
                  height: height*0.2,
                  child: Image.network(
                    'https://static.toiimg.com/thumb/msid-72963385,width-640,resizemode-4/72963385.jpg',fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 10.0,),
                Padding(
                  padding: const EdgeInsets.only(left:10.0,right: 10.0),
                  child: TextField(
                    controller: team,
                    decoration: InputDecoration(
                      hintText:'Google it and find the image URL',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                    ),
                  ),
                ),

                SizedBox(height: 40.0,),

                RaisedButton(
                  child: Text('Submit',style: TextStyle(fontSize: 15.0),),
                  onPressed: (){

                    if(name.text=='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjF2aak-j4c564rATOOkzVh6A7RJLJuFkyFNujlDaGcF4zcfpbRQ&s'){
                      ttl+=10;
                    }
                    if(clg.text=='https://resize.khabarindiatv.com/resize/newbucket/715_-/2019/09/google-doodle-1568704484.jpg'){
                      ttl+=10;
                    }
                    if(dept.text=='https://akm-img-a-in.tosshub.com/sites/btmt/images/stories/google-doodle-_660_092915094849.jpg'){
                      ttl+=10;
                    }
                    if(dt.text=='https://aniportalimages.s3.amazonaws.com/media/details/googledoodledec24.jpg'){
                      ttl+=10;
                    }
                    if(team.text=='https://static.toiimg.com/thumb/msid-72963385,width-640,resizemode-4/72963385.jpg'){
                      ttl+=10;
                    }
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Resultpage(ttl,widget.phone)));
                  },
                ),

                SizedBox(height: 40.0,),
              ],
            ),
          ),
        )
    );
  }
}
