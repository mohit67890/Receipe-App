import 'package:flutter/material.dart';
import 'package:receipeeapp/TopModel.dart';
import 'package:receipeeapp/detailPage.dart';

import 'middleReceipes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Receipe App',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    //Adding Data for the ListView
    List<topReceipes> top = new List<topReceipes>();

    topReceipes t_1 = topReceipes(
        name: "Soup Receipes",
        image: "assets/small-1.png"
    );

    topReceipes t_2 = topReceipes(
        name: "Main Course",
        image: "assets/small-2.png"
    );

    topReceipes t_3 = topReceipes(
        name: "Grill Sandwich",
        image: "assets/small-3.png"
    );
    top.add(t_1);
    top.add(t_2);
    top.add(t_3);

    //Adding Data for the ListView - CEnter
    List<middleReceipes> middle = new List<middleReceipes>();
    middleReceipes m_1 = new middleReceipes(
      name: "Cheese Grilled Sandwich",
      image: "assets/big-1.png",
      who: "by Sarah Smith"
    );

    middleReceipes m_2 = new middleReceipes(
        name: "Fish Curry",
        image: "assets/big-2.png",
        who: "by Joseph Mark"
    );
    middle.add(m_1);
    middle.add(m_2);


    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(

        elevation: 0,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey[600],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 32,),
            title: Text("Home", style: TextStyle(fontSize: 16),)
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/meal-icon.png"), size: 33,),
              title: Text("Meal", style: TextStyle(fontSize: 16, color: Colors.grey),)
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/verify-icon.png"), size: 33,),
              title: Text("Subscription", style: TextStyle(fontSize: 16),)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard, size: 32,),
              title: Text("More", style: TextStyle(fontSize: 16),)
          ),

        ],
      ),

      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          color: Colors.white
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              margin: EdgeInsets.only(top: size.height*0.1, left: 30, right: 30, bottom: 5),
              width: size.width*0.95,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [


                  Container(
                    width: size.width*0.55,
                    child: Text("Looking for your favourite meal", style: TextStyle(

                        fontFamily: "Metropolis-Bold", fontSize: 26, color: Color(0xFF495550),
                        fontWeight: FontWeight.w600

                    ),),
                  ),
                  SizedBox(
                    width: size.width*0.05  ,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Icon(
                      Icons.notifications,
                      size: 36,
                      color: Color(0xFF495550),
                    ),
                  ),
                  SizedBox(
                    width: size.width*0.07,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Icon(
                      Icons.search,
                      size: 36,
                      color: Color(0xFF495550),
                    ),
                  )







                ],

              ),
            ),

            Container(
              margin: EdgeInsets.only( left: 30, right: 30, bottom: 5),
              width: size.width*0.95,
              height: 200,
              child: ListView.builder(
                  itemCount: top.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){

                    topReceipes top_receipe = top[index];

                    return Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Container(
                            margin: EdgeInsets.only(right: 20),
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage(top_receipe.image),
                                fit: BoxFit.cover,
                              )
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Text(top_receipe.name, style: TextStyle(

                                fontFamily: "Metropolis-Medium", fontSize: 18, color: Color(0xFF485550),
                                fontWeight: FontWeight.w500

                            ),),
                          )
                        ],
                      ),
                    );

              }),
            ),

            SizedBox(
              height: 10,
            ),

            Container(
              margin: EdgeInsets.only( left: 30, right: 30, bottom: 5),
              width: size.width*0.95,
              height: size.height*0.455,
              child: ListView.builder(
                  itemCount: middle.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){

                    middleReceipes middle_receipe = middle[index];

                    return Container(
                      child: GestureDetector(
                        onTap: (){

                          Navigator.push(context, MaterialPageRoute(builder: (context) => detailPage()));

                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Container(
                              margin: EdgeInsets.only(right: 20),
                              width: size.width*0.75,
                              height: size.height*0.38,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(middle_receipe.image),
                                    fit: BoxFit.cover,
                                  )
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              child: Text(middle_receipe.name, style: TextStyle(
                                  fontFamily: "Metropolis-Medium", fontSize: 18, color: Color(0xFF495550),
                                  fontWeight: FontWeight.w500
                              ),),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: Text(middle_receipe.who, style: TextStyle(
                                fontFamily: "Metropolis-Light", fontSize: 16, color: Color(0xFF495550),

                              ),),
                            ),

                          ],
                        ),
                      )
                    );

                  }),
            ),

          ],
        ),

      ),

    );

  }

}
