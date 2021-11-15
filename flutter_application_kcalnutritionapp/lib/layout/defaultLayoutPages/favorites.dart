import 'package:flutter/material.dart';
// import 'package:flutter_application_kcalnutritionapp/layout/defaultLayout.dart';


class favorites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            flexibleSpace: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TabBar(
                  tabs: [
                    Tab(
                      text: 'Incoming',
                    ),
                    Tab(
                      text: 'Outgoing',
                    ),
                    Tab(
                      text: 'Missed',
                    ),
                  ],
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Text('Food'),
              Text('Recipe'),
              
            ],
          ),
        ),
      ),
      // color: Colors.lightBlueAccent,
      // appBar: AppBar(
      //  automaticallyImplyLeading: false,
      //  centerTitle: true,
      //   backgroundColor: Colors.white,
      //   title: const 
      //   Text('Favorites', style: 
      //     TextStyle(
      //       color: Colors.black
            
      //       ),
      //   ), 
      //   elevation: 0,
      // ),
      // body: Column(
        
      //   // mainAxisAlignment: MainAxisAlignment.center,
      //   // crossAxisAlignment: CrossAxisAlignment.stretch,
      //   children: <Widget>[
      //     DefaultTabController(
      //       length: 2,
      //       child: Scaffold(
      //         appBar: AppBar(
      //           flexibleSpace: Column(
      //             mainAxisAlignment: MainAxisAlignment.end,
      //             children: [
      //               TabBar(
      //                 tabs:[
      //                   Tab(text: 'Foods'),
      //                   Tab(text: 'Recipes'),
      //                 ]
      //               )
      //             ],
      //           ),
      //         ),
      //         body: TabBarView(
      //           children: [
      //             Text('Foods'),
      //             Text('Recipes')
      //             // IncomingPage(),
      //             // OutgoingPage(),
      //             // MissedPage(),
      //           ],
      //         ),
      //       ),
      //     ),
      //     Container(
      //       child: Center(
      //         child: Text('Testing Favorite page', 
      //         textAlign: TextAlign.center,
      //           style: TextStyle(
      //             fontSize: 40,
                  
      //             )
      //         ),
      //       ),
      //       // margin: EdgeInsets.only(top:100),
      //     ),
      //     Column()
      //     // FlatButton(
      //     //   onPressed: () {
      //     //     Navigator.push(context, MaterialPageRoute(
      //     //       builder: (context) => Screen2()
      //     //     ));
      //     //   },
      //     //   child: Text('Go to next screen'),
      //     //   color: Colors.white,
      //     // ),
      //   ],
      // ),

      
    );
  }
}