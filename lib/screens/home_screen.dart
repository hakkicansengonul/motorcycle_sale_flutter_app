import 'package:flutter/material.dart';
import 'package:motorcycle_sale_flutter_app/Animation/Fade_Animation.dart';
import 'package:motorcycle_sale_flutter_app/motorcycle_data/Accesories_screen_data.dart';
import 'package:motorcycle_sale_flutter_app/motorcycle_data/motorcycle_screen_data.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 660.0,
                width: double.infinity,
                child: Scaffold(
                  backgroundColor: Colors.white,
                  appBar: AppBar(
                    elevation: 0.0,
                    backgroundColor: Colors.white,
                    leading: FadeAnimation(
                      1.0,
                      IconButton(
                          icon: Icon(
                            Icons.menu,
                            color: Colors.black,
                          ),
                          onPressed: () {}),
                    ),
                    title: FadeAnimation(
                      1.0,
                      Text(
                        "WELCOME",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    actions: [
                      FadeAnimation(
                        1.0,
                        Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://avatars.githubusercontent.com/u/56843071?s=460&u=9285c334652104d0e8fab334bf7de72f35c1f729&v=4"),
                                  fit: BoxFit.cover),
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  body: FadeAnimation(
                    1.1,
                    Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 550.0,
                          width: double.infinity,
                          color: Colors.white,
                          child: DefaultTabController(
                            initialIndex: 0,
                            length: 3,
                            child: Scaffold(
                              appBar: AppBar(
                                centerTitle: false,
                                elevation: 0.0,
                                backgroundColor: Colors.white,
                                title: Text(
                                  "Choose your vespa",
                                  style: TextStyle(color: Colors.black),
                                ),
                                bottom: TabBar(
                                    indicator: BoxDecoration(
                                        color: Colors.black26,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(60.0),
                                          bottomRight: Radius.circular(60.0),
                                        )),
                                    isScrollable: false,
                                    indicatorColor: Colors.black,
                                    indicatorWeight: 0.4,
                                    tabs: [
                                      Tab(
                                        child: Container(
                                          height: 30.0,
                                          width: 90.0,
                                          child: Center(
                                              child: Text(
                                            "Favorites",
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontWeight: FontWeight.bold),
                                          )),
                                        ),
                                      ),
                                      Tab(
                                        child: Container(
                                          height: 30.0,
                                          width: 90.0,
                                          child: Center(
                                              child: Text(
                                            "Sprint",
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontWeight: FontWeight.bold),
                                          )),
                                        ),
                                      ),
                                      Tab(
                                        child: Container(
                                          height: 30.0,
                                          width: 90.0,
                                          child: Center(
                                              child: Text(
                                            "GTS",
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontWeight: FontWeight.bold),
                                          )),
                                        ),
                                      ),
                                    ]),
                              ),
                              body: Container(
                                height: 600.0,
                                width: double.infinity,
                                child: TabBarView(
                                  children: <Widget>[
                                    Container(
                                      height: 500.0,
                                      width: double.infinity,
                                      color: Colors.white,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: MotorcycleList.length,
                                        itemBuilder: (context, index) {
                                          return MotorcycleList[index];
                                        },
                                      ),
                                    ),
                                    Container(
                                      height: 500.0,
                                      width: double.infinity,
                                      color: Colors.white,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: MotorcycleList.length,
                                        itemBuilder: (context, index) {
                                          return MotorcycleList[index];
                                        },
                                      ),
                                    ),
                                    Container(
                                      color: Colors.white,
                                      height: 600.0,
                                      width: double.infinity,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: MotorcycleList.length,
                                        itemBuilder: (context, index) {
                                          return MotorcycleList[index];
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // SizedBox(height: 10.0,),
              FadeAnimation(
                1.1,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Accesories",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 23.0),
                      ),
                      Text(
                        "View All",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              FadeAnimation(
                1.1,
                Container(
                  color: Colors.white,
                  height: 500.0,
                  width: double.infinity,
                  child: ListView.builder(
                    //scrollDirection: Axis.horizontal,
                    itemCount: AccesoriesList.length,
                    itemBuilder: (context, index) {
                      return AccesoriesList[index];
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
