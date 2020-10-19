import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';
import 'package:covid19/services/data.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
        body : SafeArea(
        child:Container(
//          color: Colors.green,
//        decoration: BoxDecoration(
//          image: DecorationImage(
//            image: AssetImage("assets/India.png"),
//            fit: BoxFit.cover,
//          ),
//        ),
        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                  Text(
                    "COVID 19 Tracker",
                    style: TextStyle(
                      fontSize: 30.0,
//                      letterSpacing: 1.5,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Volkhov',
                    ),
                  ),
                ],
              ),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                ),
              ),
            ),

            SizedBox(height: 25.0),
            Container(
                width: 250.0,
                height: 40.0,
              child : RaisedButton.icon(
        onPressed: (){
        Navigator.pushNamed(context, '/loading',arguments: {
        'page' : 'state_wise',
        });
        },
        icon: Icon(
        Icons.dashboard,
        color: Colors.white,
        ),
        label : Text(
        'GENERAL DATA',
        style : TextStyle(
        color: Colors.white,
        ),
        ),
            color: Colors.blue[900],
        ),

        ),
        SizedBox(height: 20.0),
            Container(
              width: 250.0,
              height: 40.0,
              child : RaisedButton.icon(
                    onPressed: (){
                      Navigator.pushNamed(context, '/loading',arguments: {
                        'page' : 'time_wise',
                      });
                    },
                    icon: Icon(
                      Icons.dashboard,
                      color: Colors.white,
                    ),

                    label : Text(
                      'TIMELINE',
                      style : TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.blue[900],
                  ),
            ),
            SizedBox(height: 20.0),

            Container(
                  width: 250.0,
                  height: 40.0,
                  child : RaisedButton.icon(
                    onPressed: (){
                      Navigator.pushNamed(context, '/loading',arguments: {
                      'page':'state_wise',
                      });
                    },
                    icon: Icon(
                      Icons.dashboard,
                      color: Colors.white,

                    ),

                    label : Text(
                      'Testing Wise',
                      style : TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.blue[900],
                  ),
            ),
          SizedBox(height: 20),
            Text(
            "Preventions",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
          ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SvgPicture.asset("assets/use_mask.svg"),
                    Text(
                        "Wear Masks",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SvgPicture.asset("assets/hand_wash.svg"),
                    Text(
                      "Wash Hands",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SvgPicture.asset("assets/Clean_Disinfect.svg"),
                    Text(
                      "Sanitize",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

          ],
            ),
            SizedBox(height: 20.0),
            Container(
              height: 140.0,
              width: double.infinity,
              child: Stack(
//                alignment: Alignment.bottomLeft,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .35,
                      top: 20,
                      right: 20,
                    ),
                    height: 120.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Color(0xFF60BE93),
                            Color(0xFF1BBD59),
                        ]
                      ),
                      borderRadius: BorderRadius.circular(20),

                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: " Download Aarogya Setu.\n Contact your doctor ",
                            style: Theme.of(context).textTheme.title.copyWith(color: Colors.white),

                          ),
                          TextSpan(text: " if any symptoms appear",style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: SvgPicture.asset("assets/nurse.svg"),
                  )
                ],
              ),
            ),

        ],
        ),
        ),
        )
    );
  }
  AppBar buildAppBar(){
    return AppBar(

      backgroundColor: Colors.black87,
      title: Text('COVID-19 Tracker'),
      centerTitle: true,
      elevation: 0.0,
      leading: IconButton(
        onPressed: (){

        },

        icon: Icon(
        Icons.menu,
        color: Colors.white,
        ),
      ),
    );
//
  }
}






//body : SafeArea(
//child:Container(
//color: Colors.green,
//
//child: Padding(
//padding: const EdgeInsets.fromLTRB(0,120.0,0,0),
//child: Column(
//children: <Widget>[
//FlatButton.icon(
//onPressed: (){
//Navigator.pushNamed(context, '/state_wise',arguments: {
//'stateWise':stateWise,
//});
//},
//icon: Icon(
//Icons.dashboard,
//color: Colors.white,
//),
//
//label : Text(
//'Enter App',
//style : TextStyle(
//color: Colors.white,
//),
//),
//),
//FlatButton.icon(
//onPressed: (){
//Navigator.pushNamed(context, '/state_wise',arguments: {
//'stateWise':stateWise,
//});
//},
//icon: Icon(
//Icons.dashboard,
//color: Colors.white,
//),
//
//label : Text(
//'Enter App',
//style : TextStyle(
//color: Colors.white,
//),
//),
//),
//SizedBox(height: 20.0),
//Row(
//mainAxisAlignment: MainAxisAlignment.center,
//children: <Widget>[
//Text(
//"Welcome to Covid19 App.",
//style:TextStyle(
//fontSize: 28.0,
//letterSpacing: 2.0,
//color: Colors.black54,
//),
//),
//],
//),
//SizedBox(height: 20.0),
//],
//),
//),
//),
//)