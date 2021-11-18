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
                    height: 220,
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
          height: 120.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Ingredients('assets/salmon.jpg','Fish','250gm'),
                    Ingredients('assets/lemon.jpg','Lemon Juice','3 tbsp'),
                    Ingredients('assets/cabbage.jpg','Cabbage','50gm'),
                    Ingredients('assets/redchilli.jpg','Red Chilli','3 pcs'),
                    Ingredients('assets/coriander.jpeg','Coriander','2 pinch'),
                    Ingredients('assets/oil.jpg','Cooking oil','5 tbsp'),
                    Ingredients('assets/dill.jpg','dill leaves','2 pcs'),
                   
                  ],
                ),
          ),
          // SizedBox(height: 70,),
          Row(
            
            children: [
              Container(
                padding: EdgeInsets.only(left: 23),
                child: 
                Text(
                  'Directions', 
                    style: 
                      TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w600
                      ),
                )
              )
            ] 
          ),
          Steps('Step 1', "To prepare this amazing non-vegetarian recipe, take the fish fillets and massage it gently with oil, keep aside in a plate."),
          Steps('Step 2', "Grind together the garlic, turmeric powder, red chilli powder, green chillies, dill leaves, coriander powder, and salt. Add oil to it and grind to form a paste. Rub this all over the fish fillets and keep aside to marinate for 15 to 30 minutes."),
          Steps('Step 3', "Grill the marinated fish on a preheated grill or oven till golden and crisp on both sides or for 5 minutes. Transfer to a plate"),
          
          SizedBox(height: 100,)
        ],
      ),
    );
  }
}
Widget Ingredients(String assetName, String title,String amount) {
  return Padding(
                      padding: const EdgeInsets.only(left: 23),
                      child: Column(
                        children: [
                          Container(
                          color: Colors.yellow[50],
                            child: FittedBox(
                              child: Image.asset(
                                '$assetName',
                                fit: BoxFit.cover,
                                width: 80,
                                height: 80,
                              ),
                            ),
                          ),
                          Column(children: [
                            Text('$title'),
                            Text('$amount')
                          ],)
                        ],
                      ),
                    );

}
Widget Steps(String stepNum, String instructions){
  return Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 18),
                padding: EdgeInsets.only(left: 23),
                child: Row(
                  children: [
                    Text('$stepNum', 
                    style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          // fontFamily: 'Barlow',
                          fontWeight: FontWeight.w900,
                          height: 1.5),
                    )
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Container(
                    width: 350,
                    padding: EdgeInsets.only(left: 18, right: 18),
                    child: Text(
                      "$instructions",
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 18,
                          fontFamily: 'Barlow',
                          fontWeight: FontWeight.w600,
                          height: 1.5),
                    ),
                  ),
              
            ],
          );
}