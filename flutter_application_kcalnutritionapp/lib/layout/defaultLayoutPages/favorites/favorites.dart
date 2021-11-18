import 'package:flutter/material.dart';
// import 'package:flutter_application_kcalnutritionapp/layout/defaultLayout.dart';
import 'package:flutter_application_kcalnutritionapp/layout/defaultLayoutPages/favorites/foods/foodSearch.dart';
import 'package:flutter_application_kcalnutritionapp/layout/defaultLayoutPages/favorites/recipes/recipeSearch.dart';
class favorites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: DefaultTabController(
      length: 2,
      child: Scaffold(
        body: favoritesTabBar()
      ),
    ));
  }
}

class foods extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
    children: [
      Text(
        'Krystel gwapa',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 40),
      ),
      Container(
        child: 
        ElevatedButton(
                onPressed:() {
                  Navigator.push(context, new MaterialPageRoute(
                    builder: (context) =>
                    new foodSearch())
                  );
                },
              child: const Text('Search'),
            ),
      )
    ]);
  }
}
class recipes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
    // children: [
        children: [
          Text(
            'recipes testing',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 40),
          ),
          Container(
        child: 
        ElevatedButton(
                onPressed:() {
                  Navigator.push(context, new MaterialPageRoute(
                    builder: (context) =>
                    recipeSearch())
                  );
                },
              child: const Text('Search'),
            ),
      )
        ],
    );
  }
}
// class customButton extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//   return Material(
//           // elevation: 8,
//           borderRadius: BorderRadius.circular(20),
//           color: Colors.redAccent[100],
//           child: MaterialButton(
//             minWidth: 320,
//             height: 70,
//             padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//             onPressed: (){

//             }, // add this here
//             child: Text('Search',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 30, color: Colors.white)
                
//               ),      
//           ),    
//         );
//   }   
// }
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
                indicatorColor: Colors.grey,
                
                // indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  
                  new Container(
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  // color: Colors.grey,
                ),
                    // color: Colors.black,
                    width: 130,
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
                    width: 130,
                    height: 50,
                    child: new Tab(
                      child: Text(
                        'Recipes',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      // color: Colors.green[200],
                    ),
                  ),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          children: <Widget>[
            // Icon(Icons.flight, size: 350),
            foods(),
            recipes()
          ],
        ),
      )
    );
  }
}
