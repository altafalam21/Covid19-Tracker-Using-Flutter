import 'package:http/http.dart';
import 'dart:convert';

class Data {
  Map data;
  List tested;
  List stateWise;
  List timeWise;
  Map districtData;
  Map districtWise;
  Future<void> getData() async {
    Response response = await get('https://api.covid19india.org/data.json');
    data = jsonDecode(response.body);
    Response dResponse = await get("https://api.covid19india.org/state_district_wise.json");
    districtData = jsonDecode(dResponse.body);
    stateWise = data['statewise'];
    timeWise = data['cases_time_series'];
//        print(element['state']);
//       print(element['deaths']);

 //  data.forEach((key, value) => print(key));
//      Map state = data['West Bengal'];
//    data['West Bengal'].forEach((k,v) => print(v));
//      state['districtData'].forEach((k,v) => print(k));
//      Map district = state['districtData'];
    //    district.forEach((key, value) {
    //    print(key);
    //  print(district[key]);
  }
}