import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DailyCount {
  final int jumpDoubleDay;
  final int riseDoubleDay;
  final int jumpSingleLeftDay;
  final int jumpSingleRightDay;
  final int riseSingleLeftDay;
  final int riseSingleRightDay;

  const DailyCount({required this.jumpDoubleDay, required this.riseDoubleDay, required this.jumpSingleLeftDay, required this.jumpSingleRightDay, required this.riseSingleLeftDay, required this.riseSingleRightDay });

  factory DailyCount.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {'DLJ_daily': int jumpDoubleDay, 'DLR_daily': int riseDoubleDay, 'SLJ_L_daily': int jumpSingleLeftDay, 'SLJ_R_daily': int jumpSingleRightDay, 'SLR_L_daily': int riseSingleLeftDay, 'SLR_R_daily': int riseSingleRightDay} => DailyCount(
        jumpDoubleDay: jumpDoubleDay,
        riseDoubleDay: riseDoubleDay,
        jumpSingleLeftDay: jumpSingleLeftDay,
        jumpSingleRightDay: jumpSingleRightDay,
        riseSingleLeftDay: riseSingleLeftDay,
        riseSingleRightDay: riseSingleRightDay,
      ),
      _ => throw const FormatException('Failed to load album.'),
    };
  }
}

Future<DailyCount> fetchDailyCount() async {
  final response = await http.get(
    // Uri.parse('https://jsonplaceholder.typicode.com/albums/1'),
    Uri.parse('http://127.0.0.1:8000/api/counter/'),

  );

  if (response.statusCode == 200) {
    return DailyCount.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    throw Exception('Failed to load daily count');
  }
}
