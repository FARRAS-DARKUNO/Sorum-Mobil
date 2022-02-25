import 'dart:ui';
import 'package:flutter/material.dart';
import 'model/car_spesific.dart';
import 'home_screen.dart';

class LastScreen extends StatelessWidget {
  final Car car;
  LastScreen({required this.car});
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 5,
                        child: Image.asset(car.imageCarDetail),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text('Tipe Mobil'),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          car.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.all(4),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Image.asset(car.imageCarAsli),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Column(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Center(
                                  child: Text(
                                    car.description,
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    color: Colors.yellow,
                                    child: Center(
                                        child: Text(
                                      'BUY',
                                      style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    )),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
}
