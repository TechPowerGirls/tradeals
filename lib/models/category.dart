/* Product Category class */

class Category {
  int productCategoryId;
  int productDepartmentId;
  String productCategory;

  Category(
      {this.productCategoryId, this.productDepartmentId, this.productCategory});

  Category.fromJson(Map<String, dynamic> json) {
    productCategoryId = json['ProductCategoryId'];
    productDepartmentId = json['ProductDepartmentId'];
    productCategory = json['ProductCategory'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ProductCategoryId'] = this.productCategoryId;
    data['ProductDepartmentId'] = this.productDepartmentId;
    data['ProductCategory'] = this.productCategory;
    return data;
  }
}
