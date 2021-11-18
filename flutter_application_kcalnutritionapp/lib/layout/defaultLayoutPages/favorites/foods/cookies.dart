import 'package:flutter/material.dart';

class cookies extends StatelessWidget {
  // const cookies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Foods',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: cookiesContent(),
      floatingActionButton: addButton(),
    );
  }
}

class addButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(left: 30),
            width: 300,
            height: 60,
            child: ElevatedButton(
              // minWidth: 350,
              // height: 70,
              // padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              
        
              onPressed: () {}, // add this here
              child: Text('Add to favorite',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, color: Colors.white)),
              style: ElevatedButton.styleFrom(
                primary: Colors.red[200],
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
        ),
      ],
    );
  }
}

class cookiesContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.yellow[50],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset(
                      'assets/cookies.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          child: Text(
                        'Cookie',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      )),
                      Container(child: Text('Alternative Names: Biscuit')),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    width: 350,
                    padding: EdgeInsets.all(18),
                    child: Text(
                      "A cookie is a baked or cooked food that is typically small, flat and sweet. It usually contains flour, sugar, egg, and some type of oil, fat, or butter. It may include other ingredients such as raisins, oats, chocolate chips, nuts, etc.",
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 20,
                          fontFamily: 'Barlow',
                          fontWeight: FontWeight.w600,
                          height: 1.5),
                    ),
                  ),
                  Container(
                    width: 350,
                    padding: EdgeInsets.all(18),
                    child: Text(
                      "In most English-speaking countries except for the United States, crunchy cookies are called biscuits. Many Canadians also use this term. Chewier biscuits are sometimes called cookies even in the United Kingdom.[3] Some cookies may also be named by their shape, such as date squares or bars.",
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 20,
                          fontFamily: 'Barlow',
                          fontWeight: FontWeight.w600,
                          height: 1.5),
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            
            children: [
              Container(
                padding: EdgeInsets.only(left: 23),
                child: 
                Text(
                  'Gallery', 
                    style: 
                      TextStyle(
                        fontSize: 21
                      ),
                )
              )
            ] 
          ),
          SizedBox(height: 20,),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    child: Image.asset('assets/gallery.jpg',
                    
                        width: 150, height: 250),
                ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    child: Image.asset('assets/gallery2.jpg',
                    
                        width: 150, height: 250),
                  ),
                ),
              ],
            ),
          SizedBox(height: 70,),
        ],
      ),
    );
  }
}
