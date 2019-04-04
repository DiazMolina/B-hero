import 'package:b_hero/pages/explore_donor.dart';
import 'package:b_hero/pages/request_blood.dart';
import 'package:flutter/material.dart';

class BloodGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color(0xFFFF2156)),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 2.0, bottom: 12),
                child: Text(
                  "Become Donor",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              TextField(
                autofocus: false,
                cursorColor: Color(0xFFFF4D4D),
                style: TextStyle(fontSize: 22.0, color: Color(0xFFFF4D4D)),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.withOpacity(0.3),
                  hintText: 'Name',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                  contentPadding: const EdgeInsets.only(
                      left: 14.0, bottom: 10.0, top: 10.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFF4D4D)),
                    borderRadius: BorderRadius.circular(25.7),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(25.7),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                autofocus: false,
                cursorColor: Color(0xFFFF4D4D),
                style: TextStyle(fontSize: 22.0, color: Color(0xFFFF4D4D)),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.withOpacity(0.3),
                  hintText: 'E-mail',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                  contentPadding: const EdgeInsets.only(
                      left: 14.0, bottom: 10.0, top: 10.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFF4D4D)),
                    borderRadius: BorderRadius.circular(25.7),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(25.7),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Gender",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                          iconSize: 40,
                          icon: Image.asset("assets/man.png"),
                          onPressed: () {}),
                      Text(
                        "|",
                        style: TextStyle(fontSize: 45, color: Colors.grey),
                      ),
                      IconButton(
                          iconSize: 40,
                          icon: Image.asset("assets/woman.png"),
                          onPressed: () {}),
                    ],
                  )
                ],
              ),
              SizedBox(height: 4),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Select Blood Group",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 6),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Wrap(
                      spacing: 3,
                      runSpacing: 3,
                      children: <Widget>[
                        BloodDetails(data: "A+"),
                        BloodDetails(data: "A-"),
                        BloodDetails(data: "B+"),
                        BloodDetails(data: "B-"),
                        BloodDetails(data: "O+"),
                        BloodDetails(data: "O-"),
                        BloodDetails(data: "AB+"),
                        BloodDetails(data: "AB-"),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 26,
                        width: 26,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                        child: Center(
                            child: Icon(
                          Icons.check,
                          color: Colors.white,
                        )),
                      ),
                    ),
                    Expanded(
                      flex: 7,
                      child: Text(
                        "Do you want to make your contact number visible for other",
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    )
                  ]),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Center(
                  child: Container(
                    width: 317,
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      gradient: LinearGradient(
                        colors: <Color>[Color(0xFFFF217A), Color(0xFFFF4D4D)],
                      ),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RequestBlood()),
                            );
                          },
                          child: Center(
                            child: Text(
                              "DONE",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          )),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BloodDetails extends StatefulWidget {
  const BloodDetails({
    Key key,
    @required this.data,
  }) : super(key: key);

  final String data;

  @override
  _BloodDetailsState createState() => _BloodDetailsState();
}

class _BloodDetailsState extends State<BloodDetails> {
  bool pressed = true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          pressed = !pressed;
        });
      },
      child: Container(
        height: 60,
        width: 60,
        decoration: pressed
            ? BoxDecoration(
                border: Border.all(color: Colors.grey),
                shape: BoxShape.circle,
                color: Colors.white)
            : BoxDecoration(
                border: Border.all(color: Colors.grey),
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: <Color>[Color(0xFFFF217A), Color(0xFFFF4D4D)],
                )),
        child: Center(
          child: Text(widget.data,
              style: pressed
                  ? TextStyle(color: Colors.grey, fontSize: 20.0)
                  : TextStyle(color: Colors.white, fontSize: 20.0)),
        ),
      ),
    );
  }
}
