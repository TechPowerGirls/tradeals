import 'package:http/http.dart' as http;

import 'dart:convert';

import 'package:tradeals/models/subcategory.dart';

class ApiService {
  Future<List<SubCategory>> getSubcat(productDeptId, productCatId) async {
    String _url = "http://188.95.36.102:86/Api/WebApi/"
        "GetSubCategoryByDepartmentAndCategory?"
        "ProductDepartmentId=$productDeptId&ProductCategoryId=$productCatId";
    List<SubCategory> listSubcats = [];
    //List subcatFromResponse=[]; //this list is no longer empty
    List data;

    http.Response response;
    response = await http.get(_url);
    if (response.statusCode == 200) {
      data = json.decode(response.body);
      print(data);
      //subcatFromResponse = data['facts'];

      for (int a = 0; a < data.length; a++) {
        SubCategory fact = SubCategory.fromJson(data[a]);
        listSubcats.add(fact);
      }
    }
    return listSubcats;
  }
}
