
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class detailPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(

      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: size.width,
              height: size.height*0.4,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/main-image.png"),
                      fit: BoxFit.cover
                  )
              ),
            ),
          ),

          Container(

            margin: EdgeInsets.only(top: size.height*0.33),

            width: size.width,
            height: size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [


                Align(
                  alignment: Alignment(0, -100),
                  child: ClipRRect(

                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45),
                        topRight: Radius.circular(45),
                      ),

                      child: SingleChildScrollView(
                        child: Container(

                          width: size.width,
                          height: size.height*0.65,
                          decoration: BoxDecoration(
                              color: Colors.white
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Container(
                                margin: EdgeInsets.only(left: 40, right: 20, top: 50),

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [

                                    Container(
                                      width: size.width*0.7,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [

                                          Text("Cheese Grill Sandwich", style: TextStyle(
                                              fontFamily: "Metropolis-Bold", fontSize: 24, color: Color(0xFF495550),
                                              fontWeight: FontWeight.w500
                                          ),),
                                          Text("by Sarah Smith", style: TextStyle(
                                              fontFamily: "Metropolis-Medium", fontSize: 20, color: Color(0xFF495550),
                                              fontWeight: FontWeight.w400
                                          ),),

                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [

                                              Icon(Icons.star, size: 20, color: Colors.amber,),
                                              Icon(Icons.star, size: 20, color: Colors.amber,),
                                              Icon(Icons.star, size: 20, color: Colors.amber,),
                                              Icon(Icons.star, size: 20, color: Colors.amber,),
                                              Icon(Icons.star, size: 20, color: Colors.grey[400],)

                                            ],
                                          )


                                        ],

                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      width: size.width*0.15,
                                      child: Icon(
                                        LineIcons.heart,
                                        color: Colors.grey[300],
                                        size: 28,
                                      ),
                                    )

                                  ],

                                ),

                              ),

                              Container(
                                margin: EdgeInsets.only(left: 40, right: 20, top: 20),

                                child: Row(

                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [


                                    Container(

                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.grey,
                                          width: 1
                                        ),
                                        borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [

                                            Text("Calories", style: TextStyle(fontSize: 18, fontFamily: "Metropolis-Light",
                                                color: Colors.black87
                                            ),),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text("176 cal", style: TextStyle(fontSize: 16, fontFamily: "Metropolis-Regular",
                                                color: Colors.black
                                            ),),

                                          ],
                                        ),
                                      )

                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Container(

                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.grey,
                                                width: 1
                                            ),
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [

                                              Text("Ingredients", style: TextStyle(fontSize: 18, fontFamily: "Metropolis-Light",
                                                  color: Colors.black87
                                              ),),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text("06", style: TextStyle(fontSize: 16, fontFamily: "Metropolis-Regular",
                                                  color: Colors.black
                                              ),),

                                            ],
                                          ),
                                        )

                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Container(

                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.grey,
                                                width: 1
                                            ),
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [

                                              Text("Total Time", style: TextStyle(fontSize: 18, fontFamily: "Metropolis-Light",
                                                  color: Colors.black87
                                              ),),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text("25 mins", style: TextStyle(fontSize: 16, fontFamily: "Metropolis-Regular",
                                                  color: Colors.black
                                              ),),

                                            ],
                                          ),
                                        )

                                    ),


                                  ],

                                ),

                              ),

                              SizedBox(
                                height: 20,
                              ),

                              Container(
                                margin: EdgeInsets.only(left: 40, right: 20, top: 5),
                                child:  Text("About Receipe", style: TextStyle(
                                    fontFamily: "Metropolis-Bold", fontSize: 24, color: Colors.black87,
                                    fontWeight: FontWeight.w500
                                ),),
                              ),

                              SizedBox(
                                height: 6,
                              ),

                              Container(
                                margin: EdgeInsets.only(left: 40, right: 20, top: 3),
                                child:  Text("Veg Cheese Grilled Sandwich / vegetable cheese Sandwich is a quick vegetarian Sandwich (Or vegan Sandwich) receipe that can be made in minutes with very few ingredients.", style: TextStyle(
                                    fontFamily: "Metropolis-Regular", fontSize: 16, color: Colors.black87, height: 1.4

                                ),),
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 40, right: 20, top: 5),
                                child:  Text("Reviews", style: TextStyle(
                                    fontFamily: "Metropolis-Bold", fontSize: 24, color: Colors.black87,
                                    fontWeight: FontWeight.w500
                                ),),
                              ),

                              Container(
                                margin: EdgeInsets.only(left: 30, right: 20),
                                child:  ListTile(
                                  title: Text("Cathrin James", style: TextStyle(
                                      fontFamily: "Metropolis-Bold", fontSize: 16, color: Colors.black87, height: 1.4

                                  ),),
                                  subtitle: Text("Comments by the Reviewer", style: TextStyle(
                                      fontFamily: "Metropolis-Light", fontSize: 14, color: Colors.black87, height: 1.4

                                  ),),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [

                                      Icon(Icons.star, size: 24, color: Colors.amber,)

                                    ],
                                  ),
                                )
                              ),














                            ],

                          ),
                        ),
                      )
                  ),
                )

              ],

            ),

          ),



          Positioned(
            top: size.height*0.07,
            left: 30,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white30
              ),
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 28,
                ),
              )
            ),
          ),

          Positioned(
            bottom: size.height*0.05,
            left: size.width*0.12,
            child: Container(
              height: 60,
              width: size.width*0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black
              ),
              child: Center(
                child: Text("Cook Now", style: TextStyle(
                    fontFamily: "Metropolis-Bold", fontSize: 24, color: Colors.white,
                    fontWeight: FontWeight.w600
                ), textAlign: TextAlign.center,),
              )
            ),
          ),

        ],
      ),

    );

  }




}