class Catalogue {
  int productCatalogueId;
  int productCategoryId;
  String catalogueDescription;
  String dimensions;
  String itemStatus;

  Catalogue(
      {this.productCatalogueId,
      this.productCategoryId,
      this.catalogueDescription,
      this.dimensions,
      this.itemStatus});

  Catalogue.fromJson(Map<String, dynamic> json) {
    productCatalogueId = json['ProductCatalogueId'];
    productCategoryId = json['ProductCategoryId'];
    catalogueDescription = json['CatalogueDescription'];
    dimensions = json['Dimensions'];
    itemStatus = json['ItemStatus'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ProductCatalogueId'] = this.productCatalogueId;
    data['ProductCategoryId'] = this.productCategoryId;
    data['CatalogueDescription'] = this.catalogueDescription;
    data['Dimensions'] = this.dimensions;
    data['ItemStatus'] = this.itemStatus;
    return data;
  }
}
