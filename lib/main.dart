import 'package:flutter/material.dart';
import 'package:covid19/pages/home.dart';
import 'package:covid19/pages/loading.dart';
import 'package:covid19/pages/state_wise.dart';
import 'package:covid19/pages/district_wise.dart';
import 'package:covid19/pages/time_wise.dart';

void main() => runApp(MaterialApp(
    initialRoute: '/home',
    routes : {
      '/loading' : (context) => Loading(),
      '/home' : (context) =>Home(),
      '/state_wise' : (context) => StateWise(),
      '/district_wise' : (context) => DistrictWise(),
      '/time_wise' : (context) => TimeWise()

  },
));