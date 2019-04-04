import 'dart:async';

import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class SplahsUi extends StatefulWidget {
  @override
  _SplahsUiState createState() => _SplahsUiState();
}

class _SplahsUiState extends State<SplahsUi> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(milliseconds: 7200), () => Navigator.pushNamed(context, '/second'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xFFFF217A),
                  Color(0xFFFF4D4D),
                ],
                begin: const FractionalOffset(0.5, 0.0),
                end: const FractionalOffset(0.0, 0.5),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp)),
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "B",
                      style: TextStyle(
                          fontSize: 121,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "HERO",
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
            Expanded(
              flex: 1,
              child: Container(
                height: 220,
                width: MediaQuery.of(context).size.width,
                child: WaveWidget(
                  config: CustomConfig(
                    gradients: [
                      [
                        Colors.white.withOpacity(0.8),
                        Colors.white.withOpacity(0.1)
                      ],
                      [
                        Colors.white.withOpacity(0.8),
                        Colors.white.withOpacity(0.1)
                      ],
                      [
                        Colors.white.withOpacity(0.8),
                        Colors.white.withOpacity(0.1)
                      ],
                      [
                        Colors.white.withOpacity(0.8),
                        Color(0xFFFFFFFF).withOpacity(0.2)
                      ]
                    ],
                    durations: [5000, 4440, 5400, 6000],
                    heightPercentages: [0.10, 0.15, 0.20, 0.25],
                    blur: MaskFilter.blur(BlurStyle.solid, 0),
                  ),
                  backgroundColor: Colors.transparent,
                  size: Size(double.infinity, double.infinity),
                  waveAmplitude: 0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
