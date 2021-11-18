import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


class login extends StatelessWidget{
  const login({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Login',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Login Page", 
                  style: 
                    TextStyle(fontSize: 50,
                    
                    )
                  ),
              ],
            ),
          ],
        )

    );
  }
}