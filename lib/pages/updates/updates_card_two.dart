import 'package:flutter/material.dart';

class UpdatesCardTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(
                color: Color(0xFFF7F7F7),
                width: 2
              )
            ),
            margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0, bottom: 20.0),
            child: Padding(
              padding: const EdgeInsets.only(top: 120.0, bottom: 20, left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text(
                    "Who's a Product designer?",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24.0)
                  ),
                  SizedBox(height: 15.0,),
                  Row(
                    children: <Widget>[
                      Text(
                        "elitepixels.medium.com",
                        style: TextStyle(color: Colors.grey, fontSize: 18.0),
                      ),
                      SizedBox(width: 10,),
                      Icon(
                        Icons.link,
                        color: Colors.orange,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 10.0,
            left: MediaQuery.of(context).size.width * 0.10,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                "assets/images/product.jpg",
                fit: BoxFit.cover,
                height: 100,
                width: MediaQuery.of(context).size.width * 0.80,
              )
            ),
          ),

          Positioned(
            top: 80.0,
            right: 70.0,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 3.0
                ),
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/images/profile/guest1.jpg"
                  )
                )
              ),
            ),
          )

        ],
      )
    );
  }
}