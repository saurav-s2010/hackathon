import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/main.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class DetailScreen2 extends StatefulWidget {
  const DetailScreen2({super.key});

  @override
  State<DetailScreen2> createState() => _DetailScreen2State();
}

class _DetailScreen2State extends State<DetailScreen2> {
  final List<ChartData> chartData = [
    ChartData(2010, 35),
    ChartData(2011, 28),
    ChartData(2012, 34),
    ChartData(2013, 32),
    ChartData(2014, 40)
  ];
  final List<ChartData2> chartData2 = [
    ChartData2(2010, 23),
    ChartData2(2011, 20),
    ChartData2(2012, 7),
    ChartData2(2013, 15),
    ChartData2(2014, 37)
  ];
  final List<ChartData3> chartData3 = [
    ChartData3(2010, 18),
    ChartData3(2011, 33),
    ChartData3(2012, 11),
    ChartData3(2013, 19),
    ChartData3(2014, 29)
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            color: HexColor('#22a29a'),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Builder(builder: (BuildContext builderContext) {
                      return GestureDetector(
                          onTap: () {
                            print("bye");
                            Navigator.push(
                              builderContext,
                              MaterialPageRoute(builder: (context) => MyApp()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, top: 50.0),
                            child: Image.asset(
                              'assets/images/navigation_back.png',
                              width: 15,
                              height: 15,
                            ),
                          ));
                    }),
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0, right: 20),
                      child: Image.asset(
                        'assets/images/filter.png',
                        width: 15,
                        height: 15,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 10),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(width: 5, color: Colors.black),
                        color: Colors.black),
                    child: Image.asset('assets/images/pay_statement.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 10),
                  child: Text(
                    "Pay Statement",
                    style: GoogleFonts.openSans(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none),
                  ),
                )
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                    height: 300,
                    width: 350,
                    child: SfCartesianChart(
                        title: ChartTitle(
                          // text: 'Downloads analysis',
                            textStyle: GoogleFonts.openSans(
                                fontSize: 12,
                                color: Colors.black,
                                decoration: TextDecoration.none)),
                        series: <ChartSeries>[
                          // Renders line chart
                          LineSeries<ChartData, int>(
                            dataSource: chartData,
                            xValueMapper: (ChartData data, _) => data.x,
                            yValueMapper: (ChartData data, _) => data.y,
                          ),
                          LineSeries<ChartData2, int>(
                              dataSource: chartData2,
                              xValueMapper: (ChartData2 data, _) => data.x,
                              yValueMapper: (ChartData2 data, _) => data.y),
                          LineSeries<ChartData3, int>(
                              dataSource: chartData3,
                              xValueMapper: (ChartData3 data, _) => data.x,
                              yValueMapper: (ChartData3 data, _) => data.y)
                        ])),
              ),
              Padding(
                padding: const EdgeInsets.only(left:40.0,top:20,right: 40),
                child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.verified),
                            SizedBox(width: 5),
                            Text(
                              'Version: 2.1.3v',
                              style: GoogleFonts.openSans(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  decoration: TextDecoration.none,
                                  letterSpacing: 0.5),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(children: [
                          Icon(Icons.calendar_month),
                          SizedBox(width: 5),
                          Text(
                            'Published on: 13 October 2023',
                            style: GoogleFonts.openSans(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                decoration: TextDecoration.none,
                                letterSpacing: 0.5),
                          ),
                        ]),
                        SizedBox(height: 10),
                        Row(children: [
                          Icon(Icons.home),
                          SizedBox(width: 5),
                          Text(
                            'Published by: Deloitte Inc',
                            style: GoogleFonts.openSans(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                decoration: TextDecoration.none,
                                letterSpacing: 0.5),
                          )
                        ]),
                        SizedBox(height: 10,),
                        Text("The main functionality of the application is to submit the time spent.The application has a link with the Expenses application to submit financial expenses.",style: GoogleFonts.openSans(
                            fontSize: 12,
                            color: Colors.grey.shade800,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal
                        ),)
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top:50.0),
                child: Text('Want to know more? Click here',
                  style: GoogleFonts.openSans(
                      fontSize: 14,
                      color: Colors.blue,
                      decoration: TextDecoration.none
                  ),),
              )
            ],
          )
        ],
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final int x;
  final double y;
}

class ChartData2 {
  ChartData2(this.x, this.y);
  final int x;
  final double y;
}

class ChartData3 {
  ChartData3(this.x, this.y);
  final int x;
  final double y;
}
