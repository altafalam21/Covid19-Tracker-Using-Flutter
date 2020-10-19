import 'package:flutter/material.dart';

class DistrictWise extends StatefulWidget {
  @override
  _DistrictWiseState createState() => _DistrictWiseState();
}

class _DistrictWiseState extends State<DistrictWise> {
  Map data;
  Map districtWise;
  String state;
  Map districtData;
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    districtWise = data['districtWise'];
    state = data['state'];
    districtData = districtWise[state]['districtData'];
    //districtData.forEach((key, value) {print(key);});
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor : Colors.white12,
        title: Text(state.toUpperCase(),
          style: TextStyle(
              fontWeight: FontWeight.bold
          ),),
        centerTitle: true,
        elevation: 0,
      ),


    );
  }
}
