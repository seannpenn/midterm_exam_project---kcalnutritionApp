import 'package:flutter/material.dart';
import 'package:flutter_application_kcalnutritionapp/layout/defaultLayoutPages/favorites/favorites.dart';
import 'package:flutter_application_kcalnutritionapp/layout/defaultLayoutPages/favorites/foods/cookies.dart';
import 'package:flutter_application_kcalnutritionapp/layout/defaultLayoutPages/favorites/recipes/firstRecipe.dart';
// import 'package:flutter_application_kcalnutritionapp/layout/defaultLayout.dart';

class recipeSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        initialIndex: 1,
        child: Scaffold(body: favoritesTabBar()),
      ),
    );
  }
}

class favoritesSearchContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, new MaterialPageRoute(
                builder: (context) =>clickedRecipe())
              );
            },
            child: customContainer(
                'assets/gallery.jpg',
                'Fish Steaks With Veggie Sauce',
                '3 serve',
                'Boneless with stakes with cripsy fried sauce and toppings.',
                '55 min'),
          ),
          customContainer(
              'assets/onBoard1.png',
              'Choco Lamb Veggies',
              '1 serve',
              'Deeply fried lamb meat with choco dips and fresh vegetables.',
              '25 min'),
          customContainer(
              'assets/onBoard1.png',
              'Chicken Leg Piece',
              '2 serve',
              'Crispy chicken lep pieces with side veggies and sauce.',
              '25 min'),
          customContainer(
              'assets/onBoard1.png',
              'Fruit Veggie Mix With Meat',
              '1 serve',
              'Crunchy deep fried meat mixed with fruits and vegetables.',
              '15 min'),
      ],
        ),
      )
      
    );
  }
}

Widget customContainer(String assetName, String title, String serve,
    String definition, String time) {
      
  return Container(
    
    margin: EdgeInsets.only(top: 20, left: 30),
    child: FittedBox(
      child: Material(
        color: Colors.yellow[50],
        borderRadius: BorderRadius.circular(24),
        child: Column(
          children:[
            Container(
              width: 300,
              height: 150,
              child: ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24)),
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage('$assetName'),
                  )),
            ),
            Container(
              width: 300,
              margin: EdgeInsets.only(top: 10),
              // decoration: BoxDecoration(color: Colors.white),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Icon(Icons.timer_rounded, color: Colors.grey,) ,
                  ),
                  Container(
                    
                    child: Text('$time',
                    style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey
                  ),
                    ),
                    margin: EdgeInsets.only(right: 30),
                  ),
                  Container(
                    // margin: EdgeInsets.only(left: 15),
                    child: Icon(Icons.person_outline_outlined, color: Colors.grey) ,
                  ),
                  Container(child: Text('$serve',
                    style: TextStyle(
                      fontSize: 15, 
                      color: Colors.grey
                    ),
                  )
                  
                  ),
  
                  Container(
                    margin: EdgeInsets.only(left: 40, right: 15),
                    child: Image.asset('assets/5-stars.png', width: 70,color: Colors.redAccent[100],),
                  ),
                ],
              ),
            ),
            Container(
              width: 300,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 8, bottom: 8),
                child: Container(
                  child: Text('$title', 
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'rounded',
                    
                    // fontWeight: FontWeight.w900
                  ),
                  ),
                ),
              ),
            ),
            Container(
              width: 300,
              child: Padding(
                // padding: const EdgeInsets.all(8),
                padding: const EdgeInsets.only(left: 15.0,top:8.0, bottom: 15),
                child: Container(
                  width: 300,
                  child: Text('$definition',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'barlow',
                    fontWeight: FontWeight.bold,
                    color:Colors.grey,
                    wordSpacing: 2
                  ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Widget introImage(String assetName) {
  //widget to show intro image
  return Align(
    child: Image.asset('$assetName', width: 350.0),
    alignment: Alignment.center,
  );
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
                    bottomLeft: Radius.circular(10)),
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
          foods(),
          favoritesSearchContent(),
        ],
      ),
    ));
  }
}
