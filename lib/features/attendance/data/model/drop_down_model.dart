import 'dart:convert';

List<DropdownItemsModel> dropdownItemsModelFromJson(String str) =>
    List<DropdownItemsModel>.from(
        json.decode(str).map((x) => DropdownItemsModel.fromJson(x)));

String dropdownItemsModelToJson(List<DropdownItemsModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DropdownItemsModel {
  int code;
  String title;

  DropdownItemsModel({
    required this.code,
    required this.title,
  });

  factory DropdownItemsModel.fromJson(Map<String, dynamic> json) =>
      DropdownItemsModel(
        code: json["code"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "title": title,
      };
}
