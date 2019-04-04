import 'package:b_hero/pages/explore_donor.dart';
import 'package:flutter/material.dart';

class RequestBlood extends StatelessWidget {
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
                  "Request for Blood",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),

          Column(
            children: <Widget>[
              Text("Blood for ",style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.only(left:28.0),
                child: DropdownButton<String>(
                    hint: Text("Friend"),
                    items: <String>['Family', 'ONG',]
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String val) {
                    },
                  ),
              ),
            ],
          ),
              SizedBox(height: 20),
              Column(
                children: <Widget>[
                  Text("City Preference ",style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
                  Padding(
                    padding: const EdgeInsets.only(left:28.0),
                    child: DropdownButton<String>(
                      hint: Text("City"),
                      items: <String>['Perú', 'Mexico',]
                          .map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String val) {
                      },
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Select Blood Group",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),
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
                height: 15,
              ),

              Padding(
                padding: const EdgeInsets.only(top: 19.0),
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
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ExploreDonor()),
                          );
                        },
                        child: Center(
                          child: Text(
                            "SUBMIT",
                            style:
                            TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        )),
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
      onTap: (){
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
          child:
          Text(widget.data, style: pressed
              ? TextStyle(color: Colors.grey, fontSize: 20.0)
              : TextStyle(color: Colors.white, fontSize: 20.0)),
        ),
      ),
    );
  }
}
