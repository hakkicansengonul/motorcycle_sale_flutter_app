import 'package:flutter/material.dart';

List AccesoriesList = [
  AccesoriesPage(
      "https://cdn.pixabay.com/photo/2013/07/13/12/41/bike-160116__480.png",
      "Helmet Nations-Italian",
      48.65),
  AccesoriesPage(
      "https://cdn.pixabay.com/photo/2013/07/12/12/20/glove-145587__480.png",
      "Glove - Turkey",
      48.65),
  AccesoriesPage(
      "https://cdn.pixabay.com/photo/2012/04/18/22/14/jacket-38054__480.png",
      "Leather Jacket-Russia",
      48.65),
  AccesoriesPage(
      "https://cdn.pixabay.com/photo/2013/07/12/18/09/jacket-153075__480.png",
      "Colored Jacket-Netherlands",
      48.65),
  AccesoriesPage(
      "https://cdn.pixabay.com/photo/2012/04/18/22/14/jacket-38054__480.png",
      "Leather Jacket-Russia",
      48.65),
  AccesoriesPage(
      "https://cdn.pixabay.com/photo/2012/04/18/22/14/jacket-38054__480.png",
      "Leather Jacket-Russia",
      48.65),
];

class AccesoriesPage extends StatelessWidget {
  final String imgUrl;
  final String name;
  final double price;

  const AccesoriesPage(this.imgUrl, this.name, this.price);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
          height: 160.0,
          width: 400.0,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(.6),
                            offset: Offset(0.0, 4.0))
                      ],
                      image: DecorationImage(
                          image: NetworkImage(imgUrl), fit: BoxFit.cover)),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "\$$price",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
