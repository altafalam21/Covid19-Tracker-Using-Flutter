import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class StateWise extends StatefulWidget {
  @override
  _StateWiseState createState() => _StateWiseState();
}
DateTime now = DateTime.now();
String formattedDate = DateFormat('dd-MM-yyyy – kk:mm').format(now);

class _StateWiseState extends State<StateWise> {
  List stateWise;
  Map data;
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    stateWise = data['statewise'];


    stateWise.sort((b,a) => int.parse(a['active']).compareTo(int.parse(b['active'])));
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
        backgroundColor : Colors.white12,
        title: Text('COVID19 DATA',
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
          centerTitle: true,
        elevation: 0,
        ),
        body :ListView.builder(
                  itemCount: stateWise.length,
                  itemBuilder: (context,index){
                    if(stateWise[index]['state']=="State Unassigned"){
                      stateWise[index]['state'] = "Migratory People";
                    }
                    int i=index;
                    if(i==0){
                        return new Container(
                          color: Colors.black,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 2.0),
                                child: Text(
                                  "Last Updated : " +formattedDate,
                                  style: TextStyle(
                                  color: Colors.white,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                              SizedBox(height: 2.0),
                              Card(
                                elevation: 2.0,
                                color: Colors.white10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Text("CONFIRMED CASES",
                                          style: TextStyle(
                                            color: Colors.white54,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          ),),
                                          SizedBox(width : 80.0),
                                          Text("("+stateWise[index]['deltaconfirmed']+")",
                                          style: TextStyle(color:Colors.white54,fontSize: 20.0),),
                                          Icon(
                                            Icons.arrow_upward,
                                            color: Colors.white54,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SizedBox(width: 20.0,),
                                        Image(image:AssetImage("assets/count.png"),color: Colors.white54,height: 50.0,width: 50.0,),
                                        SizedBox(width: 160.0,),
                                        Text(stateWise[0]['confirmed'],style: TextStyle(color: Colors.white54,fontSize: 35.0),),
                                      ],
                                    ),
                                    SizedBox(height: 10.0,),
                                  ],
                                ),
                              ),
//                              SizedBox(height: 2.0),
                              Card(
                                elevation: 2.0,
                                color: Colors.blue[900],
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Text("ACTIVE",
                                            style: TextStyle(
                                                color: Colors.blue[200],
                                                fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                            ),),
                                          SizedBox(width : 190.0),
                                          Text("("+stateWise[index]['deltaconfirmed']+")",
                                            style: TextStyle(color:Colors.blue[200],fontSize: 20.0),),
                                          Icon(
                                            Icons.arrow_upward,
                                            color: Colors.blue[200],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SizedBox(width: 20.0,),
                                        Image(image:AssetImage("assets/fever.png"),color: Colors.blue[200],height: 50.0,width: 50.0,),
                                        SizedBox(width: 160.0,),
                                        Text(stateWise[0]['active'],style: TextStyle(color: Colors.blue[200],fontSize: 35.0),),
                                      ],
                                    ),
                                    SizedBox(height: 10.0,),
                                  ],
                                ),
                              ),
  //                            SizedBox(height: 2.0),
                              Card(
                                elevation: 2.0,
                                color: Colors.green[900],
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Text("RECOVERED",
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                            ),),
                                          SizedBox(width : 150.0),
                                          Text("("+stateWise[index]['deltarecovered']+")",
                                            style: TextStyle(color:Colors.green,fontSize: 20.0),),
                                          Icon(
                                            Icons.arrow_upward,
                                            color: Colors.green,
                                          ),

                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SizedBox(width: 20.0,),
                                        Image(image:AssetImage("assets/suspect.png"),color: Colors.green,height: 50.0,width: 50.0,),
                                        SizedBox(width: 160.0,),
                                        Text(stateWise[0]['recovered'],style: TextStyle(color: Colors.green,fontSize: 35.0),),
                                      ],
                                    ),
                                    SizedBox(height: 10.0,),
                                  ],
                                ),
                              ),
    //                          SizedBox(height: 2.0),
                              Card(
                                elevation: 2.0,
                                color: Colors.cyan[900],
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Text("DEATHS",
                                            style: TextStyle(
                                                color: Colors.redAccent,
                                                fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                            ),),
                                          SizedBox(width : 200.0),
                                          Text("("+stateWise[index]['deltadeaths']+")",
                                            style: TextStyle(color:Colors.redAccent,fontSize: 20.0),),
                                          Icon(
                                            Icons.arrow_upward,
                                            color: Colors.redAccent,
                                          ),

                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SizedBox(width: 20.0,),
                                        Image(image:AssetImage("assets/death.png"),color: Colors.redAccent,height: 50.0,width: 50.0,),
                                        SizedBox(width: 160.0,),
                                        Text(stateWise[0]['deaths'],style: TextStyle(color: Colors.redAccent,fontSize: 35.0),),
                                      ],
                                    ),
                                    SizedBox(height: 10.0,),
                                  ],
                                ),
                              ),
                            ],

                          ),
                        );

                    }
                    return Card(
//                       elevation: 0.0,
                      color: Colors.white24,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),

                  ),
//            decoration: BoxDecoration(
//              color: Colors.black,
//            ),
                  child: ListTile(
                      onTap:(){
                Navigator.pushNamed(context, '/loading',arguments: {
                'page':'district_wise',
                  'state' : stateWise[index]['state'],
                });
                    },
                    trailing: Icon(
                      Icons.arrow_forward,
                      color: Colors.grey,
                    ),
                    title:Text(
                    stateWise[index]['state'],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
              ),
                    leading: Image(image:AssetImage("assets/states/"+stateWise[index]['state']+".png"),height: 50.0,width: 50.0,),
                    subtitle: Text(
                      "Tap to know more",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),

              ),
          );
          }
          ),
              );
      }
      }



