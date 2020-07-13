import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradeals/models/catlog.dart';
import 'package:tradeals/pages/homepage.dart';
import 'package:tradeals/pages/productlistingpage.dart';
import 'package:tradeals/widgets/Category/category.dart';
import 'package:tradeals/widgets/Department/DepartmentCollapsingList.dart';
import 'package:tradeals/widgets/Department/department_category.dart';
import 'package:tradeals/widgets/Homepage/homepagebanner.dart';
import 'package:tradeals/widgets/drawer.dart';
import 'package:tradeals/widgets/mainbottomnavigationbar.dart';
import 'package:http/http.dart' as http;

import '../styleguide.dart';

class CategoryPage extends StatefulWidget {

  final productDeptId;
  final productCategoryId;

  CategoryPage(this.productDeptId, this.productCategoryId);




  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  List list = List();
  List catalogues = List();

  var isLoading = false;

  @override
  void initState() {
    _fetchData();
  }

  _fetchData() async {
    setState(() {
      isLoading = true;
    });
    print('Calling API');
    String apiCatagoryCatalogue =
        'http://103.68.36.251/TraDealSquareAPI/Api/WebApi/GetAllProductCatalogues?ProductCategoryId=${widget
        .productCategoryId}';
    final response = await http.get(apiCatagoryCatalogue);
    if (response.statusCode == 200) {
      list = json.decode(response.body) as List;
      print('list[0] = ${list[0]}');
      print('list= $list');

      for (var cat in list) {
        // print ('var = ${album} ') ;
        catalogues.add(Catalogue.fromJson(cat));
      }
      print('catalogues length = ${catalogues.length}');

      setState(() {
        isLoading = false;
      });
    } else {
      throw Exception(
          'Failed to load categories for dept id: ${widget.productCategoryId}');
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Category Page"),
        backgroundColor: Color(0xFF0C3853),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.search,
            ),
            onPressed: () {},
          ),
        ],
        elevation: 0,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
              child: Column(
                children: <Widget>[
                  HomePageBanner(),
                  Category(widget.productDeptId, widget.productCategoryId),

                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "filters",
                          style: AppTheme.filter_text,
                        ),
                        IconButton(
                          icon: Icon(Icons.filter),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),

                ],
              ),

            ),

          ),


          //banner and category goes here.


          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                return Container(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Column(
                        children: <Widget>[
                          Container(
                              height: screenHeight * 0.3,
                              width: screenWidth,
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 1,
                                    child: InkWell(
                                      onTap: () =>
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (_) =>
                                                    ProductListingPage(),
                                              )),
                                      child: Container(
                                        child: ClipRRect(
                                            borderRadius:
                                            BorderRadius.circular(10),
                                            child: Image.asset(
                                                "assets/images/slider/featured1.png")),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      padding:
                                      EdgeInsets.symmetric(vertical: 5),
                                      child: Column(
                                        children: <Widget>[
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              child: ClipRRect(
                                                  borderRadius:
                                                  BorderRadius.circular(10),
                                                  child: Image.asset(
                                                      "assets/images/slider/m1.jpeg")),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              child: Stack(
                                                children: <Widget>[
                                                  ClipRRect(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          10),
                                                      child: Image.asset(
                                                          "assets/images/slider/m1.jpeg")),
                                                  Padding(
                                                    padding:
                                                    const EdgeInsets.all(
                                                        15.0),
                                                    child: Text(
                                                      "5+",
                                                      style:
                                                      AppTheme.more_number,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                          Row(
                            children: <Widget>[
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          catalogues[index]
                                              .catalogueDescription,
                                          style: AppTheme.catalogues_text,
                                        ),
                                        Text(
                                          "total no.20",
                                          style: AppTheme.amount_text,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                        children: <Widget>[
                                          Image.network(
                                            "https://cdn4.iconfinder.com/data/icons/social-media-2210/24/Whatsapp-512.png",
                                            height: 20,
                                          ),
                                          Text(
                                            "SHARE NOW",
                                            style: AppTheme.whatsapp_box,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              childCount: catalogues.length,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigator(),
    );
  }
}
