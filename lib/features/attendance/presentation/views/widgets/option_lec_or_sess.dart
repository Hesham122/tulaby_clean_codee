import 'package:flutter/material.dart';
import 'package:tulaby_clean_code/cache/cache_helper.dart';
import 'package:tulaby_clean_code/core/api/endpoint.dart';
import 'package:tulaby_clean_code/core/utls/style.dart';

class OptionLecOrSess extends StatefulWidget {
  const OptionLecOrSess({super.key});

  @override
  State<OptionLecOrSess> createState() => _OptionLecOrSessState();
}

class _OptionLecOrSessState extends State<OptionLecOrSess> {
  var selectedValue;
  @override
  Widget build(BuildContext context) {
    final List<String> dropdownItems = ['Lectures', 'Sessions'];

    Size size = MediaQuery.of(context).size;
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
            "Select Item",
            style: AppStyles.styleMeduim16,
          ),
          items: dropdownItems.map((e) {
            return DropdownMenuItem(
              enabled: true,
              onTap: () {
                print(e);
                // print(e.code);
                CacheHelper().saveData(key: ApiKey.sesOrLec, value: e);
              },
              value: e.toString(),
              child: Container(
                  padding: const EdgeInsets.all(11),
                  child: Text(
                    e.toString(),
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
  }
}
