import 'package:flutter/material.dart';

class ExploreDonor extends StatelessWidget {
  String name ="Tina jorex";
  String city ="lima";
  String foto ="assets/foto.png";
  String blood = "A+";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5.0,
        backgroundColor: Colors.white,
        title: Text(
          "Explore all donors",
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Color(0xFFFF2156)),
        actions: <Widget>[IconButton(icon: Icon(Icons.menu), onPressed: () {})],
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(height: 5),
              CardDetail(name: name, city: city, blood: blood, foto: foto),
              Container(
                height: 30,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Color(0xFFFF217A), Color(0xFFFF4D4D)],
                  ),
                ),
                child:Center(child: Text("Last date of donation 23 Jun 2018",style: TextStyle(color: Colors.white,fontSize: 16))),
              ),
              SizedBox(height: 5),
              CardDetail(name: name, city: city, blood: blood, foto: foto),
              SizedBox(height: 5),
              CardDetail(name: name, city: city, blood: blood, foto: foto),
              Container(
                height: 30,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Color(0xFFFF217A), Color(0xFFFF4D4D)],
                  ),
                ),
                child:Center(child: Text("Last date of donation 23 Feb 2018",style: TextStyle(color: Colors.white,fontSize: 16))),
              ),
              SizedBox(height: 5),
              CardDetail(name: name, city: city, blood: blood, foto: foto),
              SizedBox(height: 5),
              CardDetail(name: name, city: city, blood: blood, foto: foto),
            ],
          )
        ],
      ),
    );
  }
}

class CardDetail extends StatelessWidget {
  const CardDetail({
    Key key,
    @required this.name,
    @required this.city,
    @required this.blood,
    @required this.foto,
  }) : super(key: key);

  final String name;
  final String city;
  final String blood;
  final String foto;

  @override
  Widget build(BuildContext context) {
    return Card(elevation: 10,
      margin: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0)),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
            subtitle: Row(
              children: <Widget>[
                Icon(Icons.location_on,color: Colors.grey,size: 16),
                Text(city,style: TextStyle(color: Colors.grey,fontSize: 14)),
              ],
            ),
            trailing: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Center(
                child: Text(blood,
                    style: TextStyle(
                        color: Color(0xFFFF2156), fontSize: 20.0)),
              ),
            ),
            leading: Padding(
              padding: const EdgeInsets.only(top:28.0),
              child: CircleAvatar(
                radius: 30,
                child: Image.asset(foto),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2.0, bottom: 8.0),
            child: Center(
              child: Container(
                width: 147,
                height: 40.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: Colors.grey)),
                child: InkWell(
                    onTap: () {},
                    child: Center(
                      child: Text(
                        "Ask For Help",
                        style: TextStyle(
                            fontSize: 16, color: Color(0xFFFF2156)),
                      ),
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
