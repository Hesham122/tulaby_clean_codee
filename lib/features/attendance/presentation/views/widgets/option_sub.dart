import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tulaby_clean_code/cache/cache_helper.dart';
import 'package:tulaby_clean_code/core/api/endpoint.dart';
import 'package:tulaby_clean_code/core/utls/style.dart';
import 'package:tulaby_clean_code/features/attendance/data/model/subject_model/subject_model.dart';
// import 'package:tulaby_clean_code/features/attendance/data/model/subjects_model.dart';
import 'package:tulaby_clean_code/features/attendance/presentation/manager/cubit/attendance_cubit.dart';

class OptionSub extends StatefulWidget {
  const OptionSub({super.key});

  @override
  State<OptionSub> createState() => _OptionSubState();
}

class _OptionSubState extends State<OptionSub> {
  var selectedValue;
  @override
  Widget build(BuildContext context) {
    // final List<String> _dropdownItems = ['One', 'Two', 'Three', 'Four'];

    Size size = MediaQuery.of(context).size;
    return FutureBuilder<List<SubjectModel>>(
        future: context.read<AttendanceCubit>().allsubjects(),
        builder: (context, snap) {
          if (snap.hasData) {
            return Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(11)),
              padding: const EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(horizontal: size.width / 80),
              child: DropdownButton(
                  underline: Text(" "),
                  dropdownColor: Colors.white,
                  value: selectedValue,
                  isExpanded: true,
                  hint: Text(
                    "Select Subject",
                    style: AppStyles.styleMeduim16,
                  ),
                  items: snap.data!.map((e) {
                    return DropdownMenuItem(
                      enabled: true,
                      onTap: () {
                        print(e.title);
                        CacheHelper().saveData(key: ApiKey.code, value: e.code);
                      },
                      value: e.title,
                      child: Container(
                          padding: const EdgeInsets.all(11),
                          child: Text(
                            e.title.toString(),
                            style: AppStyles.styleMeduim16.copyWith(color: Colors.black),
                          )),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value;
                    });
                  }),
            );
          } else if (snap.hasError) {
            return Text("Error: ${snap.error}");
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
