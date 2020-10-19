import 'package:flutter/material.dart';
import 'package:covid19/services/data.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  List stateWise;
  Map data;
  String page;
  String state;
  Map districtData;
  void setupData() async{
    Data instance = Data();
    await instance.getData();
    Navigator.pushReplacementNamed(context,'/'+page,arguments: {
    'statewise' : instance.stateWise,
      'timeWise' : instance.timeWise,
      'state' : state,
      'districtWise': instance.districtData,
    });
  }


  void initState(){
    super.initState();
    setupData();
  }

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    page = data['page'];
    if(page=='district_wise'){
      state = data['state'];
    }
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      body: Center(
          child: SpinKitFadingFour(
            color: Colors.white,
            size:80.0,
          ),
      ),
    );
  }
}
