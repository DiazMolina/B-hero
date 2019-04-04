import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  final image;
  final textdetail;
  final title;
  PageOne(this.image, this.title, this.textdetail);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 30,
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Container(
                  width: 220,
                  height: 220,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1000),
                      image: DecorationImage(
                          image: AssetImage("assets/circulo.png"),
                          fit: BoxFit.cover)),
                  child: Image.asset(
                    image,
                    height: 210,
                    width: 210,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 40.0,
              left: -100,
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFFFF2156),
                    borderRadius: BorderRadius.circular(1000)),
                height: 300,
                width: 300,
              )),
          Positioned(
              bottom: 40.0,
              right: -100,
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFFFF2156),
                    borderRadius: BorderRadius.circular(1000)),
                height: 300,
                width: 300,
              )),
          Positioned(
              top: -40.0,
              right: -40,
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFFFF2156),
                    borderRadius: BorderRadius.circular(1000)),
                height: 100,
                width: 100,
              )),
          Positioned(
              top: 50.0,
              right: 40,
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFFFF2156),
                    borderRadius: BorderRadius.circular(1000)),
                height: 50,
                width: 50,
              )),
          Positioned(
              bottom: -240.0,
              left:MediaQuery.of(context).size.width*-0.2,
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFFFF2156),
                    borderRadius: BorderRadius.circular(100)),
                height: 500,
                width: 500,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 38.0),
                      child: Text(
                        title,
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 14),
                      child: Text(
                        textdetail,
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class PageTree extends StatelessWidget {
  final image;
  final textdetail;
  final title;
  PageTree(this.image, this.title, this.textdetail);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 30,
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Container(
                  width: 220,
                  height: 220,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1000),
                      image: DecorationImage(
                          image: AssetImage("assets/circulo.png"),
                          fit: BoxFit.cover)),
                  child: Image.asset(
                    image,
                    height: 210,
                    width: 210,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 40.0,
              left: -100,
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFFFF2156),
                    borderRadius: BorderRadius.circular(1000)),
                height: 300,
                width: 300,
              )),
          Positioned(
              bottom: 40.0,
              right: -100,
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFFFF2156),
                    borderRadius: BorderRadius.circular(1000)),
                height: 300,
                width: 300,
              )),
          Positioned(
              top: -40.0,
              right: -40,
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFFFF2156),
                    borderRadius: BorderRadius.circular(1000)),
                height: 100,
                width: 100,
              )),
          Positioned(
              top: 50.0,
              right: 40,
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFFFF2156),
                    borderRadius: BorderRadius.circular(1000)),
                height: 50,
                width: 50,
              )),
          Positioned(
              bottom: -240.0,
              left:MediaQuery.of(context).size.width*-0.2,
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFFFF2156),
                    borderRadius: BorderRadius.circular(100)),
                height: 500,
                width: 500,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 38.0),
                      child: Text(
                        title,
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 14),
                      child: Text(
                        textdetail,
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    )
                  ],
                ),
              )),
          Positioned(
            bottom: 40,
            right: 0,
            child: Container(
              width: 100,
              child: RaisedButton(
                padding: EdgeInsets.only(bottom: 12, top: 12),
                shape: new RoundedRectangleBorder(
                    side: BorderSide(color: Colors.pink),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(14),
                        bottomLeft: Radius.circular(12))),
                color: Color(0xFFFFFFFF),
                onPressed: ()=>Navigator.pushNamed(context, '/tree'),
                child: Text(
                  "Finish",
                  style: TextStyle(fontSize: 24, color: Colors.redAccent,fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
