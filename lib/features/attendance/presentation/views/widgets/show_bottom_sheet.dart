// import 'dart:ffi';

import 'package:flutter/material.dart';
 

import 'package:tulaby_clean_code/core/utls/colors.dart';
import 'package:tulaby_clean_code/core/utls/style.dart';
import 'package:tulaby_clean_code/features/attendance/presentation/views/widgets/barcode_widget.dart';

// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

// ignore: camel_case_types
class Show_bottom_sheet extends StatefulWidget {
  const Show_bottom_sheet({super.key});

  @override
  State<Show_bottom_sheet> createState() => _Show_bottom_sheetState();
}

// ignore: camel_case_types
class _Show_bottom_sheetState extends State<Show_bottom_sheet> {
  var qrstr = "Connection Failed";

  // Future<void> scanqr() async {
  //   try {
  //     await FlutterBarcodeScanner.scanBarcode(
  //             '#ff6666', 'Cancel', true, ScanMode.QR)
  //         .then((value) {
  //       setState(() {
  //         qrstr = value;
  //       });
  //     });
  //   } catch (e) {
  //     setState(() {
  //       qrstr = "error, please try again";
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New attendace",
                  style: AppStyles.styleBold20
                      .copyWith(color: ColorsApp.primaryColor),
                ),
                Icon(
                  Icons.account_box,
                  color: ColorsApp.primaryColor,
                  size: 30,
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BarcodeWidget(),
                        ));
                  },
                  child: Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                        // color: Color(0XFF2661FA),
                        color: const Color.fromARGB(255, 79, 222, 153),
                        borderRadius: BorderRadius.circular(12)),
                    child: const Stack(
                      children: [
                        Positioned(
                            bottom: 15,
                            left: 10,
                            child: Text(
                              "Scan QR Code",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            )),
                        Positioned(
                          top: 5,
                          right: 10,
                          child: Icon(
                            Icons.qr_code,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (BuildContext context) => Otp_page()));
                  },
                  child: Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                        color: const Color(0XFF2661FA),
                        borderRadius: BorderRadius.circular(12)),
                    child: const Stack(
                      children: [
                        Positioned(
                            bottom: 15,
                            left: 10,
                            child: Text(
                              "OTP Code",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: "hh",
                                  color: Colors.white),
                            )),
                        Positioned(
                            top: 5,
                            right: 10,
                            child: Icon(
                              Icons.password_sharp,
                              color: Colors.white,
                              size: 30,
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void showdialog(BuildContext context, state) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
            child: Container(
              padding: EdgeInsets.all(22),
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Center(
                    child: Text(state.successmessage.toString()),
                  ),
                  TextButton(
                      onPressed: () {
                        // context
                        //     .read<UserCubit>()
                        //     .nearestSessionOrLecture();
                        // context
                        //     .read<UserCubit>()
                        //     .getAllSessionorLecturesSubjects();
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (BuildContext context) =>
                        //             Report_attendance()));
                      },
                      child: Text(
                        "Show Reports",
                        style: TextStyle(
                            color: ColorsApp.primaryColor, fontSize: 22),
                      )),
                ],
              ),
            ));
      },
    );
  }
}
