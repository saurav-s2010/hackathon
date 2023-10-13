import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Model {
  final String title;
  final String downloads;
  final String count;
  final String imagePath;

  Model(
      {required this.title,
      required this.downloads,
      required this.count,
      required this.imagePath});
}

final List<Model> items = [
  Model(
      imagePath: 'assets/images/icon.png',
      title: 'Time',
      downloads: '2334',
      count: "283"),
  Model(
      imagePath: 'assets/images/icon.png',
      title: 'Time',
      downloads: '2334',
      count: "283"),
  Model(
      imagePath: 'assets/images/icon.png',
      title: 'Time',
      downloads: '2334',
      count: "283"),
];

class ShowPage extends StatefulWidget {
  const ShowPage({super.key});

  @override
  State<ShowPage> createState() => _ShowPageState();
}

class _ShowPageState extends State<ShowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(top:30.0),
                child: Container(
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Frequently Used App',
                              style: GoogleFonts.openSans(
                                  fontSize: 14, color: Colors.black),
                            ),
                            GestureDetector(
                                onTap: () {
                                  print("bye");
                                },
                                child: Text('Show more'))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: GestureDetector(
                          onTap: () {
                            print("hello");
                          },
                          child: Container(
                              height: 150,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0.0, 1.0), //(x,y)
                                    blurRadius: 6.0,
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 150,
                                    width: 150,
                                    child: Image.asset(
                                      items[index].imagePath,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    height: 150,
                                    width: 150,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 40.0, left: 10),
                                          child: Text(
                                            items[index].title,
                                            style: GoogleFonts.openSans(
                                                fontSize: 12,
                                                color: Colors.black),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, left: 10),
                                          child: Text(
                                            items[index].downloads,
                                            style: GoogleFonts.openSans(
                                                fontSize: 12,
                                                color: Colors.black),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, left: 10),
                                          child: Text(
                                            items[index].count,
                                            style: GoogleFonts.openSans(
                                                fontSize: 12,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
