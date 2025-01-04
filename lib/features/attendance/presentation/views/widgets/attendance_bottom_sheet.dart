import 'package:flutter/material.dart';
import 'package:tulaby_clean_code/core/utls/colors.dart';
import 'package:tulaby_clean_code/core/utls/custom_widgets/custom_button.dart';
import 'package:tulaby_clean_code/features/attendance/presentation/views/widgets/report_attendance.dart';
import 'package:tulaby_clean_code/features/attendance/presentation/views/widgets/show_bottom_sheet.dart';

class AttendanceBottomSheet extends StatelessWidget {
  const AttendanceBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: CustomButton(
              backgcolor: ColorsApp.primaryColor,
              text: "Submit",
              onpressed: () {
                funcBottomsheet(context);
              }),
        ),
        SizedBox(
          width: 12,
        ),
        Expanded(
            child: CustomButton(
                textcolor: ColorsApp.primaryColor,
                text: "Reports",
                onpressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              ReportAttendance()));
                })),
      ],
    );
  }

  Future<dynamic> funcBottomsheet(BuildContext context) {
    return showModalBottomSheet(
        useSafeArea: false,
        isScrollControlled: true,
        enableDrag: false,
        showDragHandle: true,
        useRootNavigator: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(22), topRight: Radius.circular(22))),
        context: context,
        builder: (BuildContext context) {
          return Show_bottom_sheet();
        });
  }
}
