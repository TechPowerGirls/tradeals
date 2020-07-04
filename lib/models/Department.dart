import 'package:flutter/foundation.dart';

class Department {
  @required
  int productDepartmentId;
  @required
  String productDepartment;
  String productDepartmentImage;

  //List<Category> categories ;

  Department(
      {this.productDepartmentId,
      this.productDepartment,
      this.productDepartmentImage});

  Department.fromJson(Map<String, dynamic> json) {
    productDepartmentId = json['ProductDepartmentId'];
    productDepartment = json['ProductDepartment'];
    productDepartmentImage = json['ProductDepartmentImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ProductDepartmentId'] = this.productDepartmentId;
    data['ProductDepartment'] = this.productDepartment;
    data['ProductDepartmentImage'] = this.productDepartmentImage;
    return data;
  }
}
