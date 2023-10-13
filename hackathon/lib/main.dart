import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:hackathon/showpage.dart';
import 'package:hexcolor/hexcolor.dart';

import 'DetailScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialization(null);

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

Future initialization(BuildContext? context) async{
  await Future.delayed(const Duration(seconds: 4));
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("DTrack"),
            backgroundColor: Colors.black,
          ),
            backgroundColor: Colors.white,
            body: Padding(
              padding: const EdgeInsets.only(top:0, left: 10.0, right: 10),
              child: SingleChildScrollView(
                 child: Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Container(
                    height: 260,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: HexColor("#22a29a"),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top:10.0),
                                child: Text(
                                  'Frequently Used App',
                                  style: GoogleFonts.openSans(
                                      fontSize: 18, color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              Builder(
                                  builder: (BuildContext builderContext) {
                                    return GestureDetector(
                                        onTap: () {
                                          print("bye");
                                          Navigator.push(
                                            builderContext,
                                            MaterialPageRoute(
                                                builder: (context) => DetailScreen()),
                                          );
                                        },
                                        child: Padding(
                                          padding:
                                          const EdgeInsets.only(top: 10.0),
                                          child: Image.asset(
                                            'assets/images/navigation_arrow.png',
                                            width: 15,
                                            height: 15,
                                          ),
                                        ));
                                  }),
                            ],
                          ),
                        ),
                        Column(children: [Row(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 10),
                            child: Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 5, color: Colors.black),
                                  color: Colors.black
                              ),
                              child: Image.asset(
                                'assets/images/icon.png',
                                fit: BoxFit.cover,
                              ),),
                          ),
                          Column( crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(text: 'Title : ', style: GoogleFonts.openSans(
                                        fontSize: 15, color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    )),
                                    TextSpan(text: 'Time Application', style: GoogleFonts.openSans(
                                        fontSize: 15, color: Colors.white.withOpacity(0.5),
                                        fontWeight: FontWeight.bold
                                    )),
                                  ],
                                ),
                              ),
                            ),
                              SizedBox(height: 4,),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: RichText(
                                  text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(text: 'Versioning : ', style: GoogleFonts.openSans(
                                          fontSize: 15, color: Colors.white,
                                          fontWeight: FontWeight.bold
                                      )),
                                      TextSpan(text: '2.1.5v', style: GoogleFonts.openSans(
                                          fontSize: 15, color: Colors.white.withOpacity(0.5),
                                          fontWeight: FontWeight.bold
                                      )),
                                    ],
                                  ),
                                ),
                              ),
                            SizedBox(height: 4,),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(text: 'Date Published : ', style: GoogleFonts.openSans(
                                        fontSize: 15, color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    )),
                                    TextSpan(text: '13 Oct 2023', style: GoogleFonts.openSans(
                                        fontSize: 15, color: Colors.white.withOpacity(0.5),
                                        fontWeight: FontWeight.bold
                                    )),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 4,),
                          ],)
                            ],)],),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Padding(
                            padding: const EdgeInsets.only(left:20.0,top:10),
                            child: Text('Downloads',style: GoogleFonts.openSans(
                              fontSize: 15,
                              color: Colors.white
                            ),),
                          ),
                           Padding(
                             padding: const EdgeInsets.only(left: 8.0, right: 8.0,top:5),
                             child: LinearPercentIndicator(
                              width: MediaQuery.of(context).size.width - 50,
                              animation: true,
                              lineHeight: 10.0,
                              animationDuration: 2500,
                              percent: 0.85,
                              progressColor: Colors.white,
                          ),
                           ),
                        ],),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 260,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: HexColor("#22a29a"),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top:10.0),
                                child: Text(
                                  'Region Specific',
                                  style: GoogleFonts.openSans(
                                      fontSize: 18, color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              GestureDetector(
                                  onTap: () {
                                    print("bye");
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(top:10.0),
                                    child: Image.asset(
                                      'assets/images/navigation_arrow.png',
                                      width: 15,
                                      height: 15,
                                    ),
                                  )),
                            ],
                          ),
                        ),
                        Column(children: [Row(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 10),
                            child: Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 5, color: Colors.black),
                                  color: Colors.black
                              ),
                              child: Image.asset(
                                'assets/images/pay_statement.png',
                                fit: BoxFit.cover,
                              ),),
                          ),
                          Column( crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(text: 'Title : ', style: GoogleFonts.openSans(
                                        fontSize: 15, color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    )),
                                    TextSpan(text: 'Pay Statement', style: GoogleFonts.openSans(
                                        fontSize: 15, color: Colors.white.withOpacity(0.5),
                                        fontWeight: FontWeight.bold
                                    )),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 4,),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(text: 'Versioning : ', style: GoogleFonts.openSans(
                                        fontSize: 15, color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    )),
                                    TextSpan(text: '1.0.5v', style: GoogleFonts.openSans(
                                        fontSize: 15, color: Colors.white.withOpacity(0.5),
                                        fontWeight: FontWeight.bold
                                    )),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 4,),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(text: 'Date Published : ', style: GoogleFonts.openSans(
                                        fontSize: 15, color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    )),
                                    TextSpan(text: '13 Oct 2023', style: GoogleFonts.openSans(
                                        fontSize: 15, color: Colors.white.withOpacity(0.5),
                                        fontWeight: FontWeight.bold
                                    )),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 4,),
                          ],)
                        ],)],),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:20.0,top:10),
                              child: Text('Downloads',style: GoogleFonts.openSans(
                                  fontSize: 15,
                                  color: Colors.white
                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, right: 8.0,top:5),
                              child: LinearPercentIndicator(
                                width: MediaQuery.of(context).size.width - 50,
                                animation: true,
                                lineHeight: 10.0,
                                animationDuration: 2500,
                                percent: 0.85,
                                progressColor: Colors.white,
                              ),
                            ),
                          ],),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 260,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: HexColor("#22a29a"),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top:10.0),
                                child: Text(
                                  'People centric Applications',
                                  style: GoogleFonts.openSans(
                                      fontSize: 18, color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              GestureDetector(
                                  onTap: () {
                                    print("bye");
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(top:10.0),
                                    child: Image.asset(
                                      'assets/images/navigation_arrow.png',
                                      width: 15,
                                      height: 15,
                                    ),
                                  )),
                            ],
                          ),
                        ),
                        Column(children: [Row(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 10),
                            child: Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 5, color: Colors.black),
                                  color: Colors.black
                              ),
                              child: Image.asset(
                                'assets/images/usi_hub.png',
                                fit: BoxFit.cover,
                              ),),
                          ),
                          Column( crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(text: 'Title : ', style: GoogleFonts.openSans(
                                        fontSize: 15, color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    )),
                                    TextSpan(text: 'USI Hub Application', style: GoogleFonts.openSans(
                                        fontSize: 15, color: Colors.white.withOpacity(0.5),
                                        fontWeight: FontWeight.bold
                                    )),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 4,),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(text: 'Versioning : ', style: GoogleFonts.openSans(
                                        fontSize: 15, color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    )),
                                    TextSpan(text: '2.1.5v', style: GoogleFonts.openSans(
                                        fontSize: 15, color: Colors.white.withOpacity(0.5),
                                        fontWeight: FontWeight.bold
                                    )),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 4,),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(text: 'Date Published : ', style: GoogleFonts.openSans(
                                        fontSize: 15, color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    )),
                                    TextSpan(text: '13 Oct 2023', style: GoogleFonts.openSans(
                                        fontSize: 15, color: Colors.white.withOpacity(0.5),
                                        fontWeight: FontWeight.bold
                                    )),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 4,),
                          ],)
                        ],)],),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:20.0,top:10),
                              child: Text('Downloads',style: GoogleFonts.openSans(
                                  fontSize: 15,
                                  color: Colors.white
                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, right: 8.0,top:5),
                              child: LinearPercentIndicator(
                                width: MediaQuery.of(context).size.width - 50,
                                animation: true,
                                lineHeight: 10.0,
                                animationDuration: 2500,
                                percent: 0.85,
                                progressColor: Colors.white,
                              ),
                            ),
                          ],),
                      ],
                    ),
                  ),
                ],
              )),
            ))));
  }
}
