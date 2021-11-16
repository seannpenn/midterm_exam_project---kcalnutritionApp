import 'package:flutter/material.dart';
// import 'package:flutter_application_kcalnutritionapp/layout/defaultLayout.dart';

class favorites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 2,
      child: Scaffold(
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
                tabs: [
                  new Container(
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
      )),
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
        child: customButton(),
      )
    ]);
  }
}
class recipes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    // mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
    // children: [
      body: Column(
        children: [
          Text(
            'recipes testing',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 40),
          ),
        ],
      ),
      persistentFooterButtons:  <Widget>
      
      [
        
        Center(
          child: Container(
            margin: EdgeInsets.only(bottom:20),
            child: customButton(),
          ),
        )
      ]
    );
  }
}
class customButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Material(
          // elevation: 8,
          borderRadius: BorderRadius.circular(20),
          color: Colors.redAccent[100],
          child: MaterialButton(
            minWidth: 320,
            height: 70,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: (){}, // add this here
            child: Text('Search',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, color: Colors.white)
              ),           
          ),    
        );
  }   
}
