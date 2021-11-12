import 'package:flutter/material.dart';

class landingPage extends StatefulWidget{
  @override
  _landingPagestate createState() => _landingPagestate();
}

class _landingPagestate extends State<landingPage>{
  @override
  
  Widget build(BuildContext context){
    return Scaffold(  
      body: Container(
        
        // height: 300,
        // width: 300,
        decoration:
          BoxDecoration(
            image:DecorationImage(
              image: AssetImage('assets/landingpage_background.png'),
              fit: BoxFit.cover,
              ),
          ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 300.0),

                child: Text(
                    'kcala',
                    style: TextStyle(
                      fontFamily: 'rounded(2)',
                      fontSize: 95, color: Colors.white, fontWeight: FontWeight.bold
                    ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 180.0),
                // margin: EdgeInsets.only(top: 50.0),
                child: Text('ZUAMICA',
                    style: TextStyle(
                      fontFamily: 'rounded(2)',
                      fontSize: 20, color: Colors.grey[350], fontWeight: FontWeight.bold
                      
                    ),
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}