import 'package:flutter/material.dart';

class UpdatesCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Stack(
          children: <Widget>[
            Card(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0, bottom: 10.0),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(text: "Never startup without adequate research. You will reach a point of no return and turn into a failed startup. Invest in your research, you will thank me later ", style: TextStyle(color: Colors.black, fontSize: 18.0)),
                      TextSpan(text: "2 hours ago", style: TextStyle(fontSize: 14.0, color: Colors.grey))
                    ]
                  ),
                ),
              ),
            ),
            Positioned(
              top: 10.0,
              left: 50.0,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Color(0xFF76d19c),
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Icon(
                  Icons.format_quote
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}