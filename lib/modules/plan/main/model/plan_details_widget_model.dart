import 'package:flutter/material.dart';

class PlanDetailWidgetModel {
  final String date;
  final String time;
  final String location;
  final String price;
  final String owner;
  final String memberSize;

  final List<String> dataList = [];
  final List<String> titleList = [
    "Tarih",
    "Saat",
    "Mekan",
    "Ücret",
    "Yayınlayan",
    "Üye Sayısı"
  ];

  final List<IconData> iconList = [
    Icons.date_range_outlined,
    Icons.timer_outlined,
    Icons.location_pin,
    Icons.stream,
    Icons.attach_money_outlined,
    Icons.group,
  ];

  PlanDetailWidgetModel({
    required this.date,
    required this.time,
    required this.location,
    required this.price,
    required this.owner,
    required this.memberSize,
  }) {
    dataList.addAll([
      date,
      time,
      location,
      price,
      owner,
      memberSize,
    ]);
  }
}
