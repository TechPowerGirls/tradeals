class SubCategory {
  int _productSubCategoryId;
  String _productSubCategory;

  SubCategory({int productSubCategoryId, String productSubCategory}) {
    this._productSubCategoryId = productSubCategoryId;
    this._productSubCategory = productSubCategory;
  }

  int get productSubCategoryId => _productSubCategoryId;

  set productSubCategoryId(int productSubCategoryId) =>
      _productSubCategoryId = productSubCategoryId;

  String get productSubCategory => _productSubCategory;

  set productSubCategory(String productSubCategory) =>
      _productSubCategory = productSubCategory;

  SubCategory.fromJson(Map<String, dynamic> json) {
    _productSubCategoryId = json['ProductSubCategoryId'];
    _productSubCategory = json['ProductSubCategory'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ProductSubCategoryId'] = this._productSubCategoryId;
    data['ProductSubCategory'] = this._productSubCategory;
    return data;
  }
}
