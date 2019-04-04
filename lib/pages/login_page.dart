import 'package:b_hero/pages/verify_number.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: -25,
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFFFF4D4D),
                  image: DecorationImage(image: AssetImage("assets/4.png"))),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Positioned(
              top: 250.0,
              left: -100,
              right: -100,
              child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(1000)),
                  height: 800,
                  width: 800,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 70),
                        child: Text(
                          "LOGIN & REGISTER",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Wrap(
                          direction: Axis.vertical,
                          spacing: 5,
                          children: <Widget>[
                            Container(
                              width: 200,
                              child: RaisedButton(
                                padding: EdgeInsets.only(bottom: 8, top: 8),
                                shape: new RoundedRectangleBorder(
                                    side: BorderSide(color: Colors.grey),
                                    borderRadius:
                                        new BorderRadius.circular(12.0)),
                                color: Color(0xFF2D509B),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => VerifyNumber()),
                                  );
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Expanded(
                                        child: Icon(
                                      Icons.local_parking,
                                      color: Colors.white,
                                      size: 25,
                                    )),
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        "Facebook",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 200,
                              child: RaisedButton(
                                padding: EdgeInsets.only(bottom: 8, top: 8),
                                shape: new RoundedRectangleBorder(
                                    side: BorderSide(color: Colors.grey),
                                    borderRadius:
                                        new BorderRadius.circular(12.0)),
                                color: Color(0xFFFFFFFF),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => VerifyNumber()),
                                  );
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Expanded(
                                        child: Icon(
                                      Icons.local_parking,
                                      color: Colors.black,
                                      size: 25,
                                    )),
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        "Google",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.black),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 200,
                              child: RaisedButton(
                                padding: EdgeInsets.only(bottom: 8, top: 8),
                                shape: new RoundedRectangleBorder(
                                    side: BorderSide(color: Colors.grey),
                                    borderRadius:
                                        new BorderRadius.circular(12.0)),
                                color: Color(0xFFFFFFFF),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => VerifyNumber()),
                                  );
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Expanded(
                                        child: Icon(
                                      Icons.apps,
                                      color: Colors.black,
                                      size: 25,
                                    )),
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        "Mobile Number",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.black),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ))),
        ],
      ),
    );
  }
}
