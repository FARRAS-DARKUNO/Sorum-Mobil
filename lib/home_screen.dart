import 'dart:ui';

import 'package:flutter/material.dart';
import 'model/car_spesific.dart';
import 'last_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.yellow[500],
                  margin: EdgeInsets.all(4.0),
                  child: Image.asset('images/sorum-mobil.png'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 4, vertical: 16),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: [
                            Icon(Icons.share_arrival_time),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Open : 09:00-17:00'),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.map),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Bandar Lampung'),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.call),
                            SizedBox(
                              height: 10,
                            ),
                            Text('08123456789'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  margin: EdgeInsets.all(4.0),
                  color: Colors.yellow[500],
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Text(
                          'MOBIL UNGGULAN',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        child: Text(
                          'Berikut merupakan rekomendasi mobil mewah yang sangat di incar oleh para orang kaya zaman now, mungki bisa menjadr refrensi. terimakasih.',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 255,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            final Car car = carSpesific[index];
                            return InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return LastScreen(car: car);
                                }));
                              },
                              child: Column(
                                children: <Widget>[
                                  Expanded(
                                    flex: 3,
                                    child: Image.asset(car.imageCarHome),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      car.name,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          itemCount: carSpesific.length,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
