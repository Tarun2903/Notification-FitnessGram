// ignore_for_file: dead_code, prefer_const_constructors, non_constant_identifier_names

import 'dart:html';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

const List<String> list = <String>['Active'];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<List<String>> data = [
    ['Sample', 'Students', '01/03/2023', '01/03/2023', 'Pending'],
    ['Sample1', 'Parents', '01/03/2023', '01/03/2023', 'Pending'],
  ];
  String dropdownValue = list.first;
  bool isChecked = false;
  bool isChecked2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            'FITNESSGRAM',
            style: GoogleFonts.poppins(
                fontSize: 26, fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ),
        body: Center(
        
          child: Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Column(
            
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(right: 230, top: 10),
                    child: Text('NOTIFICATIONS',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ))),
                SizedBox(
                  height: 15,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: <
                    Widget>[
                  TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.grey[300]),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ))),
                      ),
                      child: Padding(
                          padding: EdgeInsets.only(
                              right: 50, top: 8, bottom: 8, left: 50),
                          child: Text('Received',
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              )))),
                  TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(0, 129, 200, 1)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ))),
                      ),
                      child: Padding(
                          padding: EdgeInsets.only(
                              right: 50, top: 8, bottom: 8, left: 50),
                          child: Text('Manage',
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              )))),
                ]),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 80, right: 80),
                  child: Text(
                    'Notifications will be displayed for users every time they login, prior to accessing their dashboard.',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  margin: EdgeInsets.fromLTRB(55, 0, 360, 0),
                  child: Text(
                    'Select Status',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(87, 106, 121, 1),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.only(left: 70, right: 80),
                  height: 40,
                  padding: EdgeInsets.only(left: 16, right: 16),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black38, width: 1),
                      borderRadius: BorderRadius.circular(4)),
                  child: DropdownButton<String>(
                    underline: Container(),
                    isExpanded: true,
                    value: dropdownValue,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    elevation: 0,
                    style: TextStyle(color: Colors.black54),
                    onChanged: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                    items: list.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value,
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(87, 106, 121, 1),
                            )),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(70, 0, 75, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('NOTIFICATIONS',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          )),
                      Container(
                        height: 40,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                              backgroundColor: Color.fromRGBO(25, 166, 23, 1)),
                          onPressed: () {},
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Add Notification ',
                                  style: GoogleFonts.poppins(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  )),
                              Icon(Icons.add_circle_outline)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  
                  margin: EdgeInsets.only(left: 1, right: 1),
                  padding:
                      EdgeInsets.only(left: 60, right: 60, top: 0, bottom: 0),
                  // height: 100,
                  child: Column(
                    //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(7),
                            topLeft: Radius.circular(7),
                          ),
                          color: Color.fromRGBO(0, 129, 200, 1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            
                            Checkbox(
                                checkColor: Colors.black,
                                activeColor: Colors.white,
                                focusColor: Colors.white,
                                side: MaterialStateBorderSide.resolveWith(
                                  (states) => BorderSide(
                                      width: 1.5, color: Colors.white),
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                }),
                            // Spacer(),
                            Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                padding: EdgeInsets.only(
                                    left: 16, right: 16, top: 0, bottom: 0),
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Delete',
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black87,
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(1, 0.1, 1, 0.1),
                        decoration: BoxDecoration(border: Border.all()),
                        child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: data.length,
                                itemBuilder: ((context, index) {
                                  return Column(                                  
                                    children: [
                                      Row(
                                          children: [
                                            Padding(padding: EdgeInsets.only(bottom: 100),
                                            child: Checkbox(
                                                checkColor: Colors.white70,
                                                activeColor: Color.fromRGBO(
                                                    0, 129, 200, 1),
                                                focusColor: Colors.white,
                                                side: MaterialStateBorderSide
                                                    .resolveWith(
                                                  (states) => BorderSide(
                                                      width: 1.5,
                                                      color: Colors.black87),
                                                ),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                value: isChecked2,
                                                onChanged: (bool? value) {
                                                  setState(() {
                                                    isChecked2 = value!;
                                                  });
                                                })),
                                            
                                            Expanded(child: Column(
                                        // crossAxisAlignment: cross,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                child: Text('Title',
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color.fromRGBO(
                                                          0, 129, 200, 1),
                                                    )),
                                              ),

                                              // Spacer(),
                                              Container(

                                                  // alignment: Alignment.center,
                                                  margin: EdgeInsets.only(right: 40),
                                                  child: Text(data[index][0],
                                                      style:
                                                          GoogleFonts.poppins(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.black,
                                                      ))),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('Audiance',
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color.fromRGBO(
                                                        0, 129, 200, 1),
                                                  )),
                                                  // Spacer(),
                                                  Padding(padding: EdgeInsets.only(right: 42
                                                  ),
                                                  child: Text(data[index][1],
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black,
                                                  )),)
                                              
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('Start Date',
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color.fromRGBO(
                                                        0, 129, 200, 1),
                                                  )),
                                                  Padding(padding: EdgeInsets.only(right: 30),
                                                  child: Text(data[index][2],
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black,
                                                    )),)
                                              ,
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('End Date',
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color.fromRGBO(
                                                        0, 129, 200, 1),
                                                  )),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 30),
                                                child: Text(data[index][3],
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black,
                                                    )),
                                              )
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('Status',
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color.fromRGBO(
                                                        0, 129, 200, 1),
                                                  )),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 40),
                                                child: Text(data[index][4],
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black,
                                                    )),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                           
                                            
                                          ]),
                                 
                                    

                                      Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TextButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.grey[300]),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20))),
                                          ),
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  right: 20,
                                                  top: 8,
                                                  bottom: 8,
                                                  left: 20),
                                              child: Text('Edit',
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black54,
                                                  )))),
                                      Padding(padding: EdgeInsets.all(10)),
                                      TextButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Color.fromRGBO(
                                                        0, 129, 200, 1)),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20))),
                                          ),
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  right: 20,
                                                  top: 8,
                                                  bottom: 8,
                                                  left: 20),
                                              child: Text('Preview',
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.white,
                                                  )))),
                                    ],
                                  ),
                                      
                                      if (index != data.length - 1)
                                        Divider(
                                          color: Colors.black,
                                          height: 25,
                                          thickness: 1,
                                          indent: 40,
                                          endIndent: 40,
                                        ),
                                      SizedBox(
                                        height: 10,
                                      )
                                    ],
                                  );
                                })),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
