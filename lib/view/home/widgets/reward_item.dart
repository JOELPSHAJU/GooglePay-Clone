import 'package:flutter/material.dart';

Widget buildRewardsItem(String image, String label) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        image,
        width: 60,
        fit: BoxFit.cover,
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
