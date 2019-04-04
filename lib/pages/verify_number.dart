import 'package:b_hero/pages/blood_group.dart';
import 'package:flutter/material.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:code_input/code_input.dart';

class VerifyNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color(0xFFFF2156)),
      ),
      body: Container(
        decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
        child: Padding(
          padding: const EdgeInsets.only(left: 14.0, right: 14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 12.0, bottom: 30),
                child: Text(
                  "Verify Number",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: <Widget>[
                  CountryPickerDropdown(
                    initialValue: 'PE',
                    itemBuilder: (country) {
                      return Container(
                        width: 132,
                        child: Row(
                          children: <Widget>[
                            CountryPickerUtils.getDefaultFlagImage(country),
                            SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              "+${country.phoneCode}(${country.isoCode})",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      );
                    },
                    onValuePicked: (country) {
                      print("${country.name}");
                    },
                  ),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      autofocus: false,
                      cursorColor: Color(0xFFFF4D4D),
                      style:
                          TextStyle(fontSize: 22.0, color: Color(0xFFFF4D4D)),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.3),
                        hintText: 'Numero',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                        contentPadding: const EdgeInsets.only(
                            left: 14.0, bottom: 8.0, top: 8.0),
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
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
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
                        onTap: () => showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                backgroundColor:
                                    Color(0xFFFF4D4D).withOpacity(0.8),
                                title: Text(
                                  "Confirm verification code",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(12.0))),
                                contentPadding: EdgeInsets.only(top: 10.0),
                                content: Container(
                                    height: 100,
                                    width: 100,
                                    child: Center(
                                      child: CodeInput(
                                        length: 4,
                                        keyboardType: TextInputType.number,
                                        builder:
                                            CodeInputBuilders.lightCircle(),
                                        onFilled: (value) =>
                                            print('Your input is $value.'),
                                      ),
                                    )),
                                actions: <Widget>[
                                  FlatButton(
                                    child: Text(
                                      "Re-send",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  RaisedButton(
                                    shape: new RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                    color: Color(0xFFFFFFFF),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => BloodGroup()),
                                      );
                                    },
                                    child: Text(
                                      "Ok",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.redAccent,
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }),
                        child: Center(
                          child: Text(
                            "GET OTP",
                            style: TextStyle(fontSize: 18, color: Colors.white),
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
