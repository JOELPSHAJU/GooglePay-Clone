import 'package:flutter/material.dart';

class Business {
  final String text;
  final String name;
  final bool isOnline;
  final Color color;

  Business(
      {required this.text,
      required this.name,
      this.isOnline = false,
      required this.color});
}