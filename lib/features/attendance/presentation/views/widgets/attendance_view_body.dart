import 'package:flutter/material.dart';
import 'package:tulaby_clean_code/core/utls/style.dart';
import 'package:tulaby_clean_code/features/attendance/presentation/views/widgets/attendance_appbar.dart';
import 'package:tulaby_clean_code/features/attendance/presentation/views/widgets/attendance_bottom_sheet.dart';
import 'package:tulaby_clean_code/features/attendance/presentation/views/widgets/option_lec_or_sess.dart';
import 'package:tulaby_clean_code/features/attendance/presentation/views/widgets/option_sub.dart';

class AttendanceViewBody extends StatelessWidget {
  const AttendanceViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 40,
        ),
        AttendanceAppBar(),
        const SizedBox(
          height: 40,
        ),
        Container(
          padding: const EdgeInsets.all(6),
          child: Text(
            "Subjects ",
            style: AppStyles.styleBold16,
          ),
        ),
        const OptionSub(),
        const SizedBox(
          height: 22,
        ),
        Container(
          padding: const EdgeInsets.all(6),
          child: Text(
            " Lecture or Session ",
            style: AppStyles.styleBold16,
          ),
        ),
        const OptionLecOrSess(),
        const SizedBox(
          height: 22,
        ),
        const SizedBox(
          height: 77,
        ),
        AttendanceBottomSheet(),
        // ElevatedButton(
        //     onPressed: () {
        //       context.read<AttendanceCubit>().allsubjects();
        //       //  read<AttendanceCubit>().allsubjects();
        //       // context.read<UserCubit>().nearestSessionOrLecture();
        //       // context.read<UserCubit>().getAllSessionorLecturesSubjects();
        //       // Navigator.push(context,
        //       //     MaterialPageRoute(builder: (context) =>  Read_screen()));
        //     },
        //     child: Text("data"))
      ]),
    );
  }
}
