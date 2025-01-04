import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tulaby_clean_code/core/utls/colors.dart';

class ReportAttendance extends StatefulWidget {
  const ReportAttendance({super.key});

  @override
  State<ReportAttendance> createState() => _ReportAttendanceState();
}

class _ReportAttendanceState extends State<ReportAttendance> {
  bool is_show = false;
  var profnameEn;
  var profnameAr;
  String? date_lec;
  var place_lec;
  var duration_lec;
  bool issession = true;
// late String currenttime;
  Map<String, double> dataMap = {
    "Absent": 0,
    "Attend": 0,
  };

  List<Color> gradientList = [Colors.grey, Colors.white];
  Future<void> _handleRefresh() async {
    await Future.delayed(const Duration(seconds: 2));

    // Here you would typically fetch your new data and update the state
    // setState(() {
    //   // context.read<UserCubit>().getAllSessionorLecturesSubjects();
    // });
  }

  String formattedTime = DateFormat('hh:mm a').format(DateTime.now());

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return RefreshIndicator(
        onRefresh: _handleRefresh,
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              iconTheme: IconThemeData(
                color: Colors.black,
              ),
              elevation: 0,
              backgroundColor: Colors.white,
              title: const Text("Reports",
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.black,
                  )),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      size: 30,
                      Icons.settings,
                      color: ColorsApp.primaryColor,
                    )),
              ],
            ),
            body: ListView(children: [
              Container(
                margin: EdgeInsets.all(size.width / 25),
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2,
                        spreadRadius: 0,
                        offset: Offset(3, 3),
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Container(
                    padding: const EdgeInsets.only(top: 5),
                    height: 33,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                        gradient: LinearGradient(
                            colors: [ColorsApp.primaryColor, Colors.pink])),
                    child: Text(
                      "There are no upcoming lectures yet $formattedTime",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    )),
              ),
              Container(
                margin: EdgeInsets.all(size.width / 25),
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2,
                        spreadRadius: 0,
                        offset: Offset(3, 3),
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        padding: const EdgeInsets.only(top: 5),
                        height: 33,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                            ),
                            gradient: LinearGradient(
                                colors: [ColorsApp.primaryColor, Colors.pink])),
                        child: const Text(
                          "Next Lecture : ",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Professor :$profnameAr",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "$date_lec",
                      style: TextStyle(
                          fontFamily: 'hh',
                          fontSize: 17,
                          color: Colors.grey[600]),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Place : $place_lec",
                          style: TextStyle(
                              fontFamily: 'hh',
                              fontSize: 15,
                              color: Colors.grey[600]),
                        ),
                        Text(
                          "Duration : $duration_lec",
                          style: TextStyle(
                              fontFamily: 'hh',
                              fontSize: 15,
                              color: Colors.grey[600]),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    const Text("Next Lecture will Start After",
                        style: TextStyle(
                            fontFamily: 'hh',
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // CountdownTimer(
                        //     year: year,
                        //     month: month,
                        //     day: day,
                        //     hour: hour,
                        //     minute: minute,
                        //     second: second),

                        // CountdownTimer (time: "02"),
                        // const Padding(
                        //   padding: EdgeInsets.all(8.0),
                        //   child: Text(
                        //     ":",
                        //     style: TextStyle(
                        //         fontFamily: 'hh',
                        //         fontSize: 25,
                        //         fontWeight: FontWeight.bold),
                        //   ),
                        // ),
                        // CountdownTimer (time: "45"),
                        // const Padding(
                        //   padding: EdgeInsets.all(8.0),
                        //   child: Text(
                        //     ":",
                        //     style: TextStyle(
                        //         fontFamily: 'hh',
                        //         fontSize: 25,
                        //         fontWeight: FontWeight.bold),
                        //   ),
                        // ),
                        // CountdownTimer (
                        //   time: '30',
                        // ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                margin: EdgeInsets.all(size.width / 25),
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2,
                        spreadRadius: 0,
                        offset: Offset(3, 3),
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Attendance Statistics",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    // PieChart(
                    //   dataMap: dataMap,
                    //   colorList: gradientList,
                    //   animationDuration:
                    //       const Duration(milliseconds: 800),
                    //   chartLegendSpacing: 55,
                    //   chartRadius:
                    //       MediaQuery.of(context).size.width / 3,
                    //   legendOptions: const LegendOptions(
                    //     legendTextStyle: TextStyle(
                    //       fontWeight: FontWeight.bold,
                    //     ),
                    //   ),
                    //   chartType: ChartType.ring,
                    //   chartValuesOptions:
                    //       const ChartValuesOptions(
                    //     showChartValueBackground: false,
                    //     // showChartValues: true,
                    //     showChartValuesInPercentage: true,
                    //     showChartValuesOutside: false,
                    //     decimalPlaces: 0,
                    //   ),
                    // ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 77),
                child: ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        is_show = !is_show;
                      });
                    },
                    label: const Text(
                      "Show Details",
                      style: TextStyle(
                        fontFamily: 'hh',
                        color: Colors.white,
                      ),
                    ),
                    icon: const Icon(Icons.keyboard_arrow_down_sharp),
                    style: ButtonStyle(
                        textStyle: const MaterialStatePropertyAll(
                            TextStyle(fontSize: 22)),
                        iconSize: const MaterialStatePropertyAll(28),
                        backgroundColor: MaterialStatePropertyAll(
                            Theme.of(context).primaryColor),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                        padding: const MaterialStatePropertyAll(
                            EdgeInsets.all(10)))),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                margin: const EdgeInsets.all(7),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(width: 1)),
                      child: DataTable(
                        rows: [],
                        columns: const [
                          DataColumn(
                              label: Text(
                            'Title',
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          )),
                          DataColumn(
                              label: Text(
                            'Presence',
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          )),
                          DataColumn(
                              label: Text(
                            'Bounce',
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          )),
                          DataColumn(
                              label: Text(
                            'Professor',
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          )),
                          DataColumn(
                              label: Text(
                            'Place',
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          )),
                          DataColumn(
                              label: Text(
                            'Date',
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          )),
                        ],
                      ),
                    ),
                  ),
                  //               rows: List<DataRow>.generate(

                  //                 (index) => DataRow(
                  //                   cells: <DataCell>[
                  //                     DataCell(  Text(

                  //                            "kddkkd",
                  //                             style: const TextStyle(
                  //                                 color:  color: Colors.black,,
                  //                                 fontSize: 15,
                  //                                 fontFamily:
                  //                                     'hh'),
                  //                           )
                  //                         : Text(
                  //                             state
                  //                                 .allLectureSubject!
                  //                                 .alldata![
                  //                                     index]
                  //                                     ['title']
                  //                                 .toString(),
                  //                             style: const TextStyle(
                  //                                 color: colors_light_theme
                  //                                     .font_color_black,
                  //                                 fontSize: 15,
                  //                                 fontFamily:
                  //                                     'hh'),
                  //                           )),
                  //                     DataCell(state.isSession
                  //                         ? Checkbox(
                  //                             value: state
                  //                                 .allSessionSubject!
                  //                                 .alldata![
                  //                                     index][
                  //                                     'presence']
                  //                                 .isOdd,
                  //                             onChanged:
                  //                                 (value) =>
                  //                                     value,
                  //                           )
                  //                         : Checkbox(
                  //                             value: state
                  //                                 .allLectureSubject!
                  //                                 .alldata![
                  //                                     index][
                  //                                     'presence']
                  //                                 .isOdd,
                  //                             onChanged:
                  //                                 (value) =>
                  //                                     value,
                  //                           )),
                  //                     DataCell(state.isSession
                  //                         ? Text(
                  //                             state
                  //                                 .allSessionSubject!
                  //                                 .alldata![
                  //                                     index]
                  //                                     ['bounce']
                  //                                 .toString(),
                  //                             style: const TextStyle(
                  //                                 color: colors_light_theme
                  //                                     .font_color_black,
                  //                                 fontSize: 15,
                  //                                 fontFamily:
                  //                                     'hh'),
                  //                           )
                  //                         : Text(
                  //                             state
                  //                                 .allLectureSubject!
                  //                                 .alldata![
                  //                                     index]
                  //                                     ['bounce']
                  //                                 .toString(),
                  //                             style: const TextStyle(
                  //                                 color: colors_light_theme
                  //                                     .font_color_black,
                  //                                 fontSize: 15,
                  //                                 fontFamily:
                  //                                     'hh'),
                  //                           )),
                  //                     DataCell(state.isSession
                  //                         ? Text(
                  //                             state
                  //                                 .allSessionSubject!
                  //                                 .alldata![
                  //                                     index][
                  //                                     'instructor_name_en']
                  //                                 .toString(),
                  //                             style: const TextStyle(
                  //                                 color: colors_light_theme
                  //                                     .font_color_black,
                  //                                 fontSize: 15,
                  //                                 fontFamily:
                  //                                     'hh'),
                  //                           )
                  //                         : Text(
                  //                             state
                  //                                 .allLectureSubject!
                  //                                 .alldata![
                  //                                     index][
                  //                                     'professor_name_en']
                  //                                 .toString(),
                  //                             style: const TextStyle(
                  //                                 color: colors_light_theme
                  //                                     .font_color_black,
                  //                                 fontSize: 15,
                  //                                 fontFamily:
                  //                                     'hh'),
                  //                           )),
                  //                     DataCell(state.isSession
                  //                         ? Text(
                  //                             state
                  //                                 .allSessionSubject!
                  //                                 .alldata![
                  //                                     index]
                  //                                     ['place']
                  //                                 .toString(),
                  //                             style: const TextStyle(
                  //                                 color: colors_light_theme
                  //                                     .font_color_black,
                  //                                 fontSize: 15,
                  //                                 fontFamily:
                  //                                     'hh'),
                  //                           )
                  //                         : Text(
                  //                             state
                  //                                 .allLectureSubject!
                  //                                 .alldata![
                  //                                     index]
                  //                                     ['place']
                  //                                 .toString(),
                  //                             style: const TextStyle(
                  //                                 color: colors_light_theme
                  //                                     .font_color_black,
                  //                                 fontSize: 15,
                  //                                 fontFamily:
                  //                                     'hh'),
                  //                           )),
                  //                     DataCell(state.isSession
                  //                         ? Text(
                  //                             state
                  //                                 .allSessionSubject!
                  //                                 .alldata![
                  //                                     index]
                  //                                     ['date']
                  //                                 .toString(),
                  //                             style: const TextStyle(
                  //                                 color: colors_light_theme
                  //                                     .font_color_black,
                  //                                 fontSize: 15,
                  //                                 fontFamily:
                  //                                     'hh'),
                  //                           )
                  //                         : Text(
                  //                             state
                  //                                 .allLectureSubject!
                  //                                 .alldata![
                  //                                     index]
                  //                                     ['date']
                  //                                 .toString(),
                  //                             style: const TextStyle(
                  //                                 color: colors_light_theme
                  //                                     .font_color_black,
                  //                                 fontSize: 15,
                  //                                 fontFamily:
                  //                                     'hh'),
                  //                           )),
                  //                   ],
                  //                 ),
                  //               ),
                  //             ),
                  //           )),
                  //     ),
                  //   )
                  // : const Text(""),
                  // const SizedBox(
                  //   height: 44,
                ),
              )
            ])));
  }
}

// class ReportAttendance extends StatefulWidget {
//   // const ReportAttendance({super.key});

//   @override
//   State<ReportAttendance> createState() => _ReportAttendanceState();
// }

// // ignore: camel_case_types
// class _ReportAttendanceState extends State<ReportAttendance> {
//   // ignore: non_constant_identifier_names
//   bool is_show = false;
//   var profnameEn;
//   var profnameAr;
//   String? date_lec;
//   var place_lec;
//   var duration_lec;
//   bool issession = true;
// // late String currenttime;
//   Map<String, double> dataMap = {
//     "Absent": 0,
//     "Attend": 0,
//   };

//   List<Color> gradientList = [
//     Colors.grey,
//   Colors.white
//   ];
//   Future<void> _handleRefresh() async {
//     await Future.delayed(const Duration(seconds: 2));

//     // Here you would typically fetch your new data and update the state
//     setState(() {
//       // context.read<UserCubit>().getAllSessionorLecturesSubjects();
//     });
//   }

//   String formattedTime = DateFormat('hh:mm a').format(DateTime.now());

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return RefreshIndicator(
//       onRefresh: _handleRefresh,
//       child: Scaffold(
//           backgroundColor:     Colors.white,
//           appBar: AppBar(
//             iconTheme:
//                 IconThemeData(  color: Colors.black,),
//             elevation: 0,
//             backgroundColor:  Colors.white,
//             title: const Text("Reports",
//                 style: TextStyle(
//                     fontSize: 26,  color: Colors.black,)),
//             actions: [
//               IconButton(
//                   onPressed: () {},
//                   icon: const Icon(
//                     size: 30,
//                     Icons.settings,
//                     color: ColorsApp.primaryColor,
//                   )),
//             ],
//           ),
//           body:
//    ListView(
//                             children: [
//                                 Container(
//                                       margin: EdgeInsets.all(size.width / 25),
//                                       decoration: BoxDecoration(
//                                           boxShadow: const [
//                                             BoxShadow(
//                                               color: Colors.grey,
//                                               blurRadius: 2,
//                                               spreadRadius: 0,
//                                               offset: Offset(3, 3),
//                                             )
//                                           ],
//                                           color: Colors.white,
//                                           borderRadius:
//                                               BorderRadius.circular(12)),
//                                       child: Container(
//                                           padding:
//                                               const EdgeInsets.only(top: 5),
//                                           height: 33,
//                                           width: double.infinity,
//                                           decoration: const BoxDecoration(
//                                               borderRadius: BorderRadius.only(
//                                                 topLeft: Radius.circular(12),
//                                                 topRight: Radius.circular(12),
//                                               ),
//                                               gradient: LinearGradient(colors: [
//                                                 ColorsApp.primaryColor,
//                                                 Colors.pink
//                                               ])),
//                                           child: Text(
//                                             "There are no upcoming lectures yet $formattedTime",
//                                             style: TextStyle(
//                                                   color: Colors.white,),
//                                             textAlign: TextAlign.center,
//                                           )),
//                                     ),
//                                   Container(
//                                       margin: EdgeInsets.all(size.width / 25),
//                                       decoration: BoxDecoration(
//                                           boxShadow: const [
//                                             BoxShadow(
//                                               color: Colors.grey,
//                                               blurRadius: 2,
//                                               spreadRadius: 0,
//                                               offset: Offset(3, 3),
//                                             )
//                                           ],
//                                           color: Colors.white,
//                                           borderRadius:
//                                               BorderRadius.circular(12)),
//                                       child: Column(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.center,
//                                         children: [
//                                           Container(
//                                               padding:
//                                                   const EdgeInsets.only(top: 5),
//                                               height: 33,
//                                               width: double.infinity,
//                                               decoration: const BoxDecoration(
//                                                   borderRadius:
//                                                       BorderRadius.only(
//                                                     topLeft:
//                                                         Radius.circular(12),
//                                                     topRight:
//                                                         Radius.circular(12),
//                                                   ),
//                                                   gradient: LinearGradient(
//                                                       colors: [
//                                                       ColorsApp.primaryColor,
//                                                         Colors.pink
//                                                       ])),
//                                               child: const Text(
//                                                 "Next Lecture : ",
//                                                 style: TextStyle(
//                                                      color: Colors.white,),
//                                                 textAlign: TextAlign.center,
//                                               )),
//                                           const SizedBox(
//                                             height: 10,
//                                           ),
//                                           Text(
//                                             "Professor :$profnameAr",
//                                             style: Theme.of(context)
//                                                 .textTheme
//                                                 .titleMedium,
//                                           ),
//                                           const SizedBox(
//                                             height: 5,
//                                           ),
//                                           Text(
//                                             "$date_lec",
//                                             style: TextStyle(
//                                                 fontFamily: 'hh',
//                                                 fontSize: 17,
//                                                 color: Colors.grey[600]),
//                                           ),
//                                           const SizedBox(
//                                             height: 5,
//                                           ),
//                                           Row(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.spaceEvenly,
//                                             children: [
//                                               Text(
//                                                 "Place : $place_lec",
//                                                 style: TextStyle(
//                                                     fontFamily: 'hh',
//                                                     fontSize: 15,
//                                                     color: Colors.grey[600]),
//                                               ),
//                                               Text(
//                                                 "Duration : $duration_lec",
//                                                 style: TextStyle(
//                                                     fontFamily: 'hh',
//                                                     fontSize: 15,
//                                                     color: Colors.grey[600]),
//                                               ),
//                                             ],
//                                           ),
//                                           const SizedBox(
//                                             height: 22,
//                                           ),
//                                           const Text(
//                                               "Next Lecture will Start After",
//                                               style: TextStyle(
//                                                   fontFamily: 'hh',
//                                                   fontSize: 15,
//                                                   fontWeight: FontWeight.bold)),
//                                           const SizedBox(
//                                             height: 10,
//                                           ),
//                                           Row(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.center,
//                                             children: [
//                                               // CountdownTimer(
//                                               //     year: year,
//                                               //     month: month,
//                                               //     day: day,
//                                               //     hour: hour,
//                                               //     minute: minute,
//                                               //     second: second),

//                                               // CountdownTimer (time: "02"),
//                                               // const Padding(
//                                               //   padding: EdgeInsets.all(8.0),
//                                               //   child: Text(
//                                               //     ":",
//                                               //     style: TextStyle(
//                                               //         fontFamily: 'hh',
//                                               //         fontSize: 25,
//                                               //         fontWeight: FontWeight.bold),
//                                               //   ),
//                                               // ),
//                                               // CountdownTimer (time: "45"),
//                                               // const Padding(
//                                               //   padding: EdgeInsets.all(8.0),
//                                               //   child: Text(
//                                               //     ":",
//                                               //     style: TextStyle(
//                                               //         fontFamily: 'hh',
//                                               //         fontSize: 25,
//                                               //         fontWeight: FontWeight.bold),
//                                               //   ),
//                                               // ),
//                                               // CountdownTimer (
//                                               //   time: '30',
//                                               // ),
//                                             ],
//                                           ),
//                                           SizedBox(
//                                             height: 20,
//                                           ),
//                                         ],
//                                       ),
//                                     ),

//                               Container(
//                                 padding: const EdgeInsets.all(15),
//                                 margin: EdgeInsets.all(size.width / 25),
//                                 decoration: BoxDecoration(
//                                     boxShadow: const [
//                                       BoxShadow(
//                                         color: Colors.grey,
//                                         blurRadius: 2,
//                                         spreadRadius: 0,
//                                         offset: Offset(3, 3),
//                                       )
//                                     ],
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.circular(12)),
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.end,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       "Attendance Statistics",
//                                       style: Theme.of(context)
//                                           .textTheme
//                                           .titleMedium,
//                                     ),
//                                     const SizedBox(
//                                       height: 12,
//                                     ),
//                                     // PieChart(
//                                     //   dataMap: dataMap,
//                                     //   colorList: gradientList,
//                                     //   animationDuration:
//                                     //       const Duration(milliseconds: 800),
//                                     //   chartLegendSpacing: 55,
//                                     //   chartRadius:
//                                     //       MediaQuery.of(context).size.width / 3,
//                                     //   legendOptions: const LegendOptions(
//                                     //     legendTextStyle: TextStyle(
//                                     //       fontWeight: FontWeight.bold,
//                                     //     ),
//                                     //   ),
//                                     //   chartType: ChartType.ring,
//                                     //   chartValuesOptions:
//                                     //       const ChartValuesOptions(
//                                     //     showChartValueBackground: false,
//                                     //     // showChartValues: true,
//                                     //     showChartValuesInPercentage: true,
//                                     //     showChartValuesOutside: false,
//                                     //     decimalPlaces: 0,
//                                     //   ),
//                                     // ),
//                                   ],
//                                 ),
//                               ),
//                               const SizedBox(
//                                 height: 20,
//                               ),
//                               Container(
//                                 margin:
//                                     const EdgeInsets.symmetric(horizontal: 77),
//                                 child: ElevatedButton.icon(
//                                     onPressed: () {
//                                       setState(() {
//                                         is_show = !is_show;
//                                       });
//                                     },
//                                     label: const Text(
//                                       "Show Details",
//                                       style: TextStyle(
//                                           fontFamily: 'hh',
//                                           color: Colors.white,),
//                                     ),
//                                     icon: const Icon(
//                                         Icons.keyboard_arrow_down_sharp),
//                                     style: ButtonStyle(
//                                         textStyle:
//                                             const MaterialStatePropertyAll(
//                                                 TextStyle(fontSize: 22)),
//                                         iconSize:
//                                             const MaterialStatePropertyAll(28),
//                                         backgroundColor:
//                                             MaterialStatePropertyAll(
//                                                 Theme.of(context).primaryColor),
//                                         shape: MaterialStatePropertyAll(
//                                             RoundedRectangleBorder(
//                                                 borderRadius:
//                                                     BorderRadius.circular(12))),
//                                         padding: const MaterialStatePropertyAll(
//                                             EdgeInsets.all(10)))),
//                               ),
//                               const SizedBox(
//                                 height: 40,
//                               ),
//                                 Container(
//                                       margin: const EdgeInsets.all(7),
//                                       child: SingleChildScrollView(
//                                         scrollDirection: Axis.vertical,
//                                         child: SingleChildScrollView(
//                                             scrollDirection: Axis.horizontal,
//                                             child: Container(
//                                               margin: const EdgeInsets.all(8.0),
//                                               decoration: BoxDecoration(
//                                                   borderRadius:
//                                                       BorderRadius.circular(12),
//                                                   border: Border.all(width: 1)),
//                                               child: DataTable(
//                                                 rows: [],
//                                                 columns: const [
//                                                   DataColumn(
//                                                       label: Text(
//                                                     'Title',
//                                                     style: TextStyle(
//                                                         color: Colors.black,
//                                                         fontSize: 17),
//                                                   )),
//                                                   DataColumn(
//                                                       label: Text(
//                                                     'Presence',
//                                                     style: TextStyle(
//                                                          color: Colors.black,
//                                                         fontSize: 17),
//                                                   )),
//                                                   DataColumn(
//                                                       label: Text(
//                                                     'Bounce',
//                                                     style: TextStyle(
//                                                        color: Colors.black,
//                                                         fontSize: 17),
//                                                   )),
//                                                   DataColumn(
//                                                       label: Text(
//                                                     'Professor',
//                                                     style: TextStyle(
//                                                          color: Colors.black,
//                                                         fontSize: 17),
//                                                   )),
//                                                   DataColumn(
//                                                       label: Text(
//                                                     'Place',
//                                                     style: TextStyle(
//                                                        color: Colors.black,
//                                                         fontSize: 17),
//                                                   )),
//                                                   DataColumn(
//                                                       label: Text(
//                                                     'Date',
//                                                     style: TextStyle(
//                                                        color: Colors.black,
//                                                         fontSize: 17),
//                                                   )),
//                                                 ],),),),
//                                   //               rows: List<DataRow>.generate(

//                                   //                 (index) => DataRow(
//                                   //                   cells: <DataCell>[
//                                   //                     DataCell(  Text(

//                                   //                            "kddkkd",
//                                   //                             style: const TextStyle(
//                                   //                                 color:  color: Colors.black,,
//                                   //                                 fontSize: 15,
//                                   //                                 fontFamily:
//                                   //                                     'hh'),
//                                   //                           )
//                                   //                         : Text(
//                                   //                             state
//                                   //                                 .allLectureSubject!
//                                   //                                 .alldata![
//                                   //                                     index]
//                                   //                                     ['title']
//                                   //                                 .toString(),
//                                   //                             style: const TextStyle(
//                                   //                                 color: colors_light_theme
//                                   //                                     .font_color_black,
//                                   //                                 fontSize: 15,
//                                   //                                 fontFamily:
//                                   //                                     'hh'),
//                                   //                           )),
//                                   //                     DataCell(state.isSession
//                                   //                         ? Checkbox(
//                                   //                             value: state
//                                   //                                 .allSessionSubject!
//                                   //                                 .alldata![
//                                   //                                     index][
//                                   //                                     'presence']
//                                   //                                 .isOdd,
//                                   //                             onChanged:
//                                   //                                 (value) =>
//                                   //                                     value,
//                                   //                           )
//                                   //                         : Checkbox(
//                                   //                             value: state
//                                   //                                 .allLectureSubject!
//                                   //                                 .alldata![
//                                   //                                     index][
//                                   //                                     'presence']
//                                   //                                 .isOdd,
//                                   //                             onChanged:
//                                   //                                 (value) =>
//                                   //                                     value,
//                                   //                           )),
//                                   //                     DataCell(state.isSession
//                                   //                         ? Text(
//                                   //                             state
//                                   //                                 .allSessionSubject!
//                                   //                                 .alldata![
//                                   //                                     index]
//                                   //                                     ['bounce']
//                                   //                                 .toString(),
//                                   //                             style: const TextStyle(
//                                   //                                 color: colors_light_theme
//                                   //                                     .font_color_black,
//                                   //                                 fontSize: 15,
//                                   //                                 fontFamily:
//                                   //                                     'hh'),
//                                   //                           )
//                                   //                         : Text(
//                                   //                             state
//                                   //                                 .allLectureSubject!
//                                   //                                 .alldata![
//                                   //                                     index]
//                                   //                                     ['bounce']
//                                   //                                 .toString(),
//                                   //                             style: const TextStyle(
//                                   //                                 color: colors_light_theme
//                                   //                                     .font_color_black,
//                                   //                                 fontSize: 15,
//                                   //                                 fontFamily:
//                                   //                                     'hh'),
//                                   //                           )),
//                                   //                     DataCell(state.isSession
//                                   //                         ? Text(
//                                   //                             state
//                                   //                                 .allSessionSubject!
//                                   //                                 .alldata![
//                                   //                                     index][
//                                   //                                     'instructor_name_en']
//                                   //                                 .toString(),
//                                   //                             style: const TextStyle(
//                                   //                                 color: colors_light_theme
//                                   //                                     .font_color_black,
//                                   //                                 fontSize: 15,
//                                   //                                 fontFamily:
//                                   //                                     'hh'),
//                                   //                           )
//                                   //                         : Text(
//                                   //                             state
//                                   //                                 .allLectureSubject!
//                                   //                                 .alldata![
//                                   //                                     index][
//                                   //                                     'professor_name_en']
//                                   //                                 .toString(),
//                                   //                             style: const TextStyle(
//                                   //                                 color: colors_light_theme
//                                   //                                     .font_color_black,
//                                   //                                 fontSize: 15,
//                                   //                                 fontFamily:
//                                   //                                     'hh'),
//                                   //                           )),
//                                   //                     DataCell(state.isSession
//                                   //                         ? Text(
//                                   //                             state
//                                   //                                 .allSessionSubject!
//                                   //                                 .alldata![
//                                   //                                     index]
//                                   //                                     ['place']
//                                   //                                 .toString(),
//                                   //                             style: const TextStyle(
//                                   //                                 color: colors_light_theme
//                                   //                                     .font_color_black,
//                                   //                                 fontSize: 15,
//                                   //                                 fontFamily:
//                                   //                                     'hh'),
//                                   //                           )
//                                   //                         : Text(
//                                   //                             state
//                                   //                                 .allLectureSubject!
//                                   //                                 .alldata![
//                                   //                                     index]
//                                   //                                     ['place']
//                                   //                                 .toString(),
//                                   //                             style: const TextStyle(
//                                   //                                 color: colors_light_theme
//                                   //                                     .font_color_black,
//                                   //                                 fontSize: 15,
//                                   //                                 fontFamily:
//                                   //                                     'hh'),
//                                   //                           )),
//                                   //                     DataCell(state.isSession
//                                   //                         ? Text(
//                                   //                             state
//                                   //                                 .allSessionSubject!
//                                   //                                 .alldata![
//                                   //                                     index]
//                                   //                                     ['date']
//                                   //                                 .toString(),
//                                   //                             style: const TextStyle(
//                                   //                                 color: colors_light_theme
//                                   //                                     .font_color_black,
//                                   //                                 fontSize: 15,
//                                   //                                 fontFamily:
//                                   //                                     'hh'),
//                                   //                           )
//                                   //                         : Text(
//                                   //                             state
//                                   //                                 .allLectureSubject!
//                                   //                                 .alldata![
//                                   //                                     index]
//                                   //                                     ['date']
//                                   //                                 .toString(),
//                                   //                             style: const TextStyle(
//                                   //                                 color: colors_light_theme
//                                   //                                     .font_color_black,
//                                   //                                 fontSize: 15,
//                                   //                                 fontFamily:
//                                   //                                     'hh'),
//                                   //                           )),
//                                   //                   ],
//                                   //                 ),
//                                   //               ),
//                                   //             ),
//                                   //           )),
//                                   //     ),
//                                   //   )
//                                   // : const Text(""),
//                               // const SizedBox(
//                               //   height: 44,
//                               ),

//           )])));
//   }
// }
