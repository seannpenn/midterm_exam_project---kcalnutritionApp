import 'package:flutter/material.dart';
// import 'package:flutter_application_kcalnutritionapp/layout/defaultLayout.dart';


class favorites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // color: Colors.lightBlueAccent,
      appBar: AppBar(
       automaticallyImplyLeading: false,
       centerTitle: true,
        backgroundColor: Colors.white,
        title: const 
        Text('Favorites', style: 
          TextStyle(
            color: Colors.black
            
            ),
        ), 
        elevation: 0,
      ),
      body: Column(
        
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            child: Center(
              child: Text('Testing Favorite Page', 
              textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  
                  )
              ),
            ),
            margin: EdgeInsets.only(top:100),
          ),
          Column()
          // FlatButton(
          //   onPressed: () {
          //     Navigator.push(context, MaterialPageRoute(
          //       builder: (context) => Screen2()
          //     ));
          //   },
          //   child: Text('Go to next screen'),
          //   color: Colors.white,
          // ),
        ],
      ),
    );
  }
}