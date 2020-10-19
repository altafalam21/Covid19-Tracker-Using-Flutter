import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimeWise extends StatefulWidget {
  @override
  _TimeWiseState createState() => _TimeWiseState();
}

class _TimeWiseState extends State<TimeWise> {
  Map data;
  List timeWise;
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    timeWise = data['timeWise'];
    timeWise = timeWise.reversed.toList();
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor : Colors.white12,
        title: Text('Data Timeline'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: timeWise.length-1,
        itemBuilder: (context,index) {
          return Card(
            color: Colors.white10,
//            elevation: 2.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
//            decoration: BoxDecoration(
//              color: Colors.black,
//            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Text(
                      timeWise[index]['date'] +"2020",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height : 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[
                            Text("Total Confirmed : "+timeWise[index]['totalconfirmed'],style: TextStyle(color:Colors.white),),
                            Text("Total Recovered : "+timeWise[index]['totalrecovered'],style: TextStyle(color:Colors.white),),
                            Text("Total Deaths : "+timeWise[index]['totaldeceased'],style: TextStyle(color:Colors.white),),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Text("Today Confirmed : "+timeWise[index]['dailyconfirmed'],style: TextStyle(color:Colors.white),),
                            Text("Today Recovered : "+timeWise[index]['dailyrecovered'],style: TextStyle(color:Colors.white),),
                            Text("Today Deaths : "+timeWise[index]['dailydeceased'],style: TextStyle(color:Colors.white),),
                          ],

                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }


    ),
    );
  }
}
