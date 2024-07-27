import 'package:flutter/material.dart';

Widget buildbillsitem(String image, String label) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      CircleAvatar(
        radius: 30,
        child: Image.asset(
          image,
          width: 40,
        ),
        backgroundColor: Color.fromARGB(
          255,
          163,
          212,
          252,
        ),
      ),
      const SizedBox(height: 8.0),
      Text(
        label,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 14.0,
        ),
      ),
    ],
  );
}
