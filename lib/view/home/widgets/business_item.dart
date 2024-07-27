import 'package:flutter/material.dart';
import 'package:googlepay/core/constants.dart';
import 'package:googlepay/models/business_model.dart';

Widget businesses(
  Business user,
) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Stack(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100), color: user.color),
            child: Center(
              child: Text(
                user.text,
                style: const TextStyle(
                    fontWeight: FontWeight.w600, fontSize: 20, color: white),
              ),
            ),
          ),
          if (user.isOnline)
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                width: 14,
                height: 14,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
              ),
            ),
        ],
      ),
      const SizedBox(height: 8.0),
      Text(
        user.name,
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
