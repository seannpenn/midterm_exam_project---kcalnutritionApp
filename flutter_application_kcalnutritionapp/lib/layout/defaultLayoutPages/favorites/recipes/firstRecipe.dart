import 'package:flutter/material.dart';

class clickedRecipe extends StatelessWidget {
  // const cookies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Recipes',
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
          Row(
            children: [
              Container(
                color: Colors.yellow,
                // width: 360,
                // height: 200,
                child: FittedBox(
                  child: Image.asset(
                    'assets/recipe1.jpg',
                    fit: BoxFit.cover,
                    width: 360,
                    height: 150,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.yellow[50],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Icon(Icons.timer_rounded, color: Colors.grey,) ,
                  ),
                  Container(
                  child: Text('55 min',
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
                  Container(
                    child: 
                      Text('3 serve',
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
          ),
          Row(
            
            children: [
              Container(
                margin: EdgeInsets.only(top: 5),
                  width: 200,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 22.0, top: 8, bottom: 8),
                    child: Container(
                      child: Text('Fish Steaks With Veggie Sauce', 
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'rounded',
                        
                        // fontWeight: FontWeight.w900
                      ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    width: 350,
                    padding: EdgeInsets.only(top: 5,left: 18, right: 18),
                    child: Text(
                      "Grilled Fish Steak is a delicious Mediterranean recipe made by marinating fish fillets in garlic, green chilies and blend of spices. Tender fish fillets smeared in a simple marinade of lime juice and salt, seared golden. Delicious isn't it?",
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 21.5,
                          fontFamily: 'Barlow',
                          fontWeight: FontWeight.w600,
                          height: 1.5),
                    ),
                  ),
                  // Container(
                  //   width: 350,
                  //   padding: EdgeInsets.all(18),
                  //   child: Text(
                  //     "In most English-speaking countries except for the United States, crunchy cookies are called biscuits. Many Canadians also use this term. Chewier biscuits are sometimes called cookies even in the United Kingdom.[3] Some cookies may also be named by their shape, such as date squares or bars.",
                  //     style: TextStyle(
                  //         color: Colors.grey[600],
                  //         fontSize: 20,
                  //         fontFamily: 'Barlow',
                  //         fontWeight: FontWeight.w600,
                  //         height: 1.5),
                  //   ),
                  // )
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
                  'Ingredients', 
                    style: 
                      TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w600
                      ),
                )
              )
            ] 
          ),
          SizedBox(height:10),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20.0),
          height: 80.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
    //                 Container(
    //   width: 160.0,
    //   color: Colors.red,
    // ),
    // Container(
    //   width: 160.0,
    //   color: Colors.blue,
    // ),
    // Container(
    //   width: 160.0,
    //   color: Colors.green,
    // ),
    // Container(
    //   width: 160.0,
    //   color: Colors.yellow,
    // ),
    // Container(
    //   width: 160.0,
    //   color: Colors.orange,
    // ),
                    Padding(
                      padding: const EdgeInsets.only(left: 23),
                      child: Container(
                      color: Colors.yellow[50],
                        child: FittedBox(
                          child: Image.asset(
                            'assets/salmon.jpg',
                            fit: BoxFit.cover,
                            width: 80,
                            height: 80,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 23),
                      child: Container(
                      color: Colors.yellow[50],
                        child: FittedBox(
                          child: Image.asset(
                            'assets/recipe1.jpg',
                            fit: BoxFit.cover,
                            width: 80,
                            height: 80,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 23),
                      child: Container(
                      color: Colors.yellow[50],
                        child: FittedBox(
                          child: Image.asset(
                            'assets/recipe1.jpg',
                            fit: BoxFit.cover,
                            width: 80,
                            height: 80,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 23),
                      child: Container(
                      color: Colors.yellow[50],
                        child: FittedBox(
                          child: Image.asset(
                            'assets/recipe1.jpg',
                            fit: BoxFit.cover,
                            width: 80,
                            height: 80,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 23),
                      child: Container(
                      color: Colors.yellow[50],
                        child: FittedBox(
                          child: Image.asset(
                            'assets/recipe1.jpg',
                            fit: BoxFit.cover,
                            width: 80,
                            height: 80,
                          ),
                        ),
                      ),
                    ),
                    
                  ],
                ),
          ),
          SizedBox(height: 70,),
        ],
      ),
    );
  }
}
