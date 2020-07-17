import 'package:http/http.dart' as http;

import 'dart:convert';

import 'package:tradeals/models/reseller_profile.dart';

class ResellerApiService {
  // Future<List<ResellerProfile>> getResellerData(resellerId) async {
  Future<List<ResellerProfile>> getResellerData() async {
    print('first line of function getResellerData');
//Vrishali: Use following hardcoded reseller value just for testing. Comment following line in actual run.
    int resellerId = -9223372036854775798;

    String _url =
        "http://188.95.36.102:86/Api/WebApi/GetResellerProfile?ResellerId=${resellerId}";

    List data;
    List<ResellerProfile> listResellers = List<ResellerProfile>();

    http.Response response;
    response = await http.get(_url);
    print("response = $response");

    if (response.statusCode == 200) {
      data = json.decode(response.body);
      print('data = ${data}');
      //subcatFromResponse = data['facts'];

      for (int a = 0; a < data.length; a++) {
        print('a= ${a}');
        ResellerProfile r = ResellerProfile.fromJson(data[a]);
        print('r = ${r.firstName}');
        print('before add ');
        listResellers.add(r);
        print('after add ');
      }
    }
    print('listResellers = ${listResellers}');
    return listResellers;
  }
}
