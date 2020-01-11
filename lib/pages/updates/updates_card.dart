import 'package:flutter/material.dart';

class UpdatesCard extends StatelessWidget {
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
              padding: const EdgeInsets.only(top: 30, bottom: 20, left: 30, right: 30),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(text: "\"Never startup without adequate research. You will reach a point of no return and turn into a failed startup. Invest in your research, you will thank me later\" ", style: TextStyle(color: Color(0xFF343434), fontSize: 16.0, letterSpacing: 1.0)),
                      TextSpan(text: "2 hours ago", style: TextStyle(fontSize: 13.0, color: Colors.grey, letterSpacing: 1.0))
                    ]
                  ),
                ),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/profile/guest1.jpg"
                          )
                        )
                      ),
                      child: OverflowBox(
                        minWidth: 14,
                        minHeight: 14,
                        alignment: Alignment(1.30, 0.8),
                        child: // Verified Profile
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.orange,
                            border: Border.all(
                              color: Colors.white,
                              width: 2.0
                            )
                          ),
                          child: Icon(
                            Icons.done,
                            size: 14.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        FlatButton(
                          onPressed: (){},
                          padding: const EdgeInsets.all(10.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            side: BorderSide(color: Color(0xFFe7e7e7))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(
                                Icons.comment,
                                color: Colors.orange,
                                size: 16.0,
                              ),
                              SizedBox(width: 8.0,),
                              Text("561")
                            ],
                          ),
                        ),
                        SizedBox(width: 8.0,),
                        FlatButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0)
                          ),
                          padding: const EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Colors.orange, Colors.deepOrange],
                                  stops: [0,100]
                                ),
                                borderRadius: BorderRadius.circular(80.0)
                              ),
                            child: Container(
                              constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0), // min sizes for Material buttons
                              child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.thumb_up,
                                  color: Colors.white,
                                  size: 16.0,
                                ),
                                SizedBox(width: 8.0,),
                                Text("412", style: TextStyle(color: Colors.white),)
                              ],
                            ),
                            ),
                          )
                        )
                      ],
                    )
                  ],
                )
                ],
              ),
            ),
          ),
          Positioned(
            top: 10.0,
            left: 50.0,
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                color: Color(0xFF76d19c),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10.0,
                    spreadRadius: 1.0,
                    color: Color(0xFFcfeedd)
                  )
                ]
              ),
              child: Icon(
                Icons.format_quote,
                color: Colors.white,
              ),
            ),
          )
        ],
      )
    );
  }
}