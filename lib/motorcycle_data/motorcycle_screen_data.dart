import 'package:flutter/material.dart';
import 'package:motorcycle_sale_flutter_app/Animation/Fade_Animation.dart';
import 'package:motorcycle_sale_flutter_app/screens/details_screen.dart';

List MotorcycleList = [
  Motorcycle(
      "https://cdn.pixabay.com/photo/2016/03/21/04/07/motorcycle-1269978__480.jpg",
      "VESPA PRIMAVERA",
      "\$2860.00"),
  Motorcycle(
      "https://cdn.pixabay.com/photo/2017/08/17/15/23/harley-davidson-2651708__480.jpg",
      "VESPA PRIMAVERA",
      "\$2860.00"),
];

class Motorcycle extends StatelessWidget {
  final String imgUrl;
  final String name;
  final String price;

  const Motorcycle(this.imgUrl, this.name, this.price);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => DetailsPage(imgUrl)));
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: MediaQuery.of(context).size.height,
                    color: Colors.black54,
                    child: Center(
                      child: Container(
                        height: 600.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                            )),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 20.0,
                            ),
                            //---------------------------------------------------------------------
                            FadeAnimation(
                              1.0,
                              Container(
                                height: 100.0,
                                width: 100.0,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20.0),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://cdn.pixabay.com/photo/2014/04/02/10/14/agreement-303221__480.png"),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            FadeAnimation(
                              1.0,
                              Text(
                                "Product Information",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 23.0),
                              ),
                            ),
                            SizedBox(
                              height: 50.0,
                            ),
                            FadeAnimation(
                              1.2,
                              Container(
                                // color: Colors.red,
                                height: 200.0,
                                width: double.infinity,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 20.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          detailcard("Motor power: 50hp"),
                                          SizedBox(
                                            width: 60.0,
                                          ),
                                          detailcard("Engine capacity: 1020cc"),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          detailcard("Timing Type: 4-Stroke"),
                                          SizedBox(
                                            width: 40.0,
                                          ),
                                          detailcard("Number of Cylinders: 6 "),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          detailcard("Gear: Manual"),
                                          SizedBox(
                                            width: 100.0,
                                          ),
                                          detailcard("Cooling: Water"),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          detailcard("Color: Red"),
                                          SizedBox(
                                            width: 116.0,
                                          ),
                                          detailcard("Type: Sport Touring"),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20.0,
                                      ),
                                      FadeAnimation(
                                        1.0,
                                        Padding(
                                          padding: EdgeInsets.only(left: 100.0),
                                          child: Container(
                                            height: 50.0,
                                            width: 160.0,
                                            decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(
                                                  50.0,
                                                ),
                                                bottomRight: Radius.circular(
                                                  50.0,
                                                ),
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                "Buy",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 23.0),
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
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            child: Container(
              height: 450.0,
              width: 270.0,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 360.0,
                    width: 260.0,
                    //color: Colors.blue,
                    child: FadeAnimation(
                      1.0,
                      Stack(
                        children: [
                          Container(
                            height: 360.0,
                            width: 260.0,
                            decoration: BoxDecoration(
                              // color: Colors.blue,
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0.0, 3.0),
                                  color: Colors.black.withOpacity(.6),
                                )
                              ],
                              image: DecorationImage(
                                  image: NetworkImage(imgUrl),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Positioned(
                            top: 6.0,
                            right: 6.0,
                            child: Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.grey, width: 0.3)),
                              child: Icon(
                                Icons.favorite_border,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  FadeAnimation(
                    1.0,
                    Center(
                        child: Text(
                      name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  FadeAnimation(
                    1.0,
                    Center(
                        child: Text(
                      price,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget detailcard(String title) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        height: 10.0,
        width: 10.0,
        decoration: BoxDecoration(
          color: Colors.orange,
          shape: BoxShape.circle,
        ),
      ),
      SizedBox(
        width: 5.0,
      ),
      Text(title),
    ],
  );
}
