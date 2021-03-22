import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String imgUrl;

  const DetailsPage(this.imgUrl);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 50.0,
          ),
          Container(
            height: 300.0,
            width: double.infinity,
            child: Stack(
              children: [
                Container(
                  height: 300.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(imgUrl), fit: BoxFit.cover),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios_outlined,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
