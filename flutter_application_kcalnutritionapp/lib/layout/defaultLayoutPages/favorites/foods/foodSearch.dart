import 'package:flutter/material.dart';
import 'package:flutter_application_kcalnutritionapp/layout/defaultLayoutPages/favorites/favorites.dart';
import 'package:flutter_application_kcalnutritionapp/layout/defaultLayoutPages/favorites/foods/cookies.dart';
// import 'package:flutter_application_kcalnutritionapp/layout/defaultLayout.dart';

class foodSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(body: favoritesTabBar()),
    ));
  }
}

class favoritesSearchContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, new MaterialPageRoute(
                    builder: (context) =>
                    new cookies())
                  );
                },
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/cookies.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                    Container(
                      child: Text(
                        'Cookies',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'rounded'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Image.asset(
                        'assets/rightArrow.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ],
                ),
                style: TextButton.styleFrom(
                  // primary: Colors.lime[100],
                  primary: Colors.yellow,
                  minimumSize: const Size(160, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  // backgroundColor: Colors.lime[50],
                  backgroundColor: Colors.yellow[50],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: TextButton(
                onPressed: () {
                  print('Pressed');
                },
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/burger.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                    Container(
                      child: Text(
                        'Burger',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'rounded'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Image.asset(
                        'assets/rightArrow.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ],
                ),
                style: TextButton.styleFrom(
                  // primary: Colors.lime[100],
                  primary: Colors.yellow,
                  minimumSize: const Size(160, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  // backgroundColor: Colors.lime[50],
                  backgroundColor: Colors.yellow[50],
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              child: TextButton(
                onPressed: () {
                  print('Pressed');
                },
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/cakes.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                    Container(
                      child: Text(
                        'Cakes',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'rounded'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Image.asset(
                        'assets/rightArrow.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ],
                ),
                style: TextButton.styleFrom(
                  // primary: Colors.lime[100],
                  primary: Colors.yellow,
                  minimumSize: const Size(160, 60),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  // backgroundColor: Colors.lime[50],
                  backgroundColor: Colors.yellow[50],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: TextButton(
                onPressed: () {
                  print('Pressed');
                },
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/pizza.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                    Container(
                      child: Text(
                        'Pizza',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'rounded'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Image.asset(
                        'assets/rightArrow.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ],
                ),
                style: TextButton.styleFrom(
                  // primary: Colors.lime[100],
                  primary: Colors.yellow,
                  minimumSize: const Size(160, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  // backgroundColor: Colors.lime[50],
                  backgroundColor: Colors.yellow[50],
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              child: TextButton(
                onPressed: () {
                  print('Pressed');
                },
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/hotdog.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                    Container(
                      child: Text(
                        'Hotdog',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'rounded'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Image.asset(
                        'assets/rightArrow.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ],
                ),
                style: TextButton.styleFrom(
                  // primary: Colors.lime[100],
                  primary: Colors.yellow,
                  minimumSize: const Size(160, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  // backgroundColor: Colors.lime[50],
                  backgroundColor: Colors.yellow[50],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: TextButton(
                onPressed: () {
                  print('Pressed');
                },
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/fries.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                    Container(
                      child: Text(
                        'Fries',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'rounded'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Image.asset(
                        'assets/rightArrow.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ],
                ),
                style: TextButton.styleFrom(
                  // primary: Colors.lime[100],
                  primary: Colors.yellow,
                  minimumSize: const Size(160, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  // backgroundColor: Colors.lime[50],
                  backgroundColor: Colors.yellow[50],
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, left: 13),
              child: TextButton(
                onPressed: () {
                  print('Pressed');
                },
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/donuts.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                    Container(
                      child: Text(
                        'Donuts',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'rounded'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Image.asset(
                        'assets/rightArrow.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ],
                ),
                style: TextButton.styleFrom(
                  // primary: Colors.lime[100],
                  primary: Colors.yellow,
                  minimumSize: const Size(160, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  // backgroundColor: Colors.lime[50],
                  backgroundColor: Colors.yellow[50],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class favoritesTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          new SliverAppBar(
            backgroundColor: Colors.white,
            title: Text(
              'Favorites',
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            centerTitle: true,
            bottom: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.green,

              isScrollable: true,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                ),
                color: Colors.green,
              ),

              // indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                new Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    // color: Colors.green,
                  ),
                  // color: Colors.black,
                  width: 120,
                  height: 50,
                  child: new Tab(
                    child: Text(
                      'Foods',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                // Tab(child: Text('Foods')),
                new Container(
                  width: 120,
                  height: 50,
                  child: new Tab(
                    child: Text(
                      'Recipes',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  // decoration: BoxDecoration(
                  // borderRadius: BorderRadius.only(
                  //     topRight: Radius.circular(10),
                  //     bottomRight: Radius.circular(10)),
                  // color: Colors.green[200],
                  // ),
                )
              ],
            ),
          ),
        ];
      },
      body: TabBarView(
        children: <Widget>[
          // Icon(Icons.flight, size: 350),
          favoritesSearchContent(),
          recipes()
        ],
      ),
    ));
  }
}
