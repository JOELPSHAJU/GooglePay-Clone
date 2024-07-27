import 'package:flutter/material.dart';
import 'package:googlepay/core/constants.dart';
import 'package:dotted_border/dotted_border.dart';

class BankButtonsRow extends StatelessWidget {
  const BankButtonsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DottedBorder(
          color: Colors.grey,
          strokeWidth: 1,
          borderType: BorderType.RRect,
          radius: const Radius.circular(100),
          padding: const EdgeInsets.all(6),
          child: const Row(
            children: [
              Text(
                'Activate UPI Lite',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
              w10,
              Icon(
                Icons.add_circle_outline,
                size: 18,
              )
            ],
          ),
        ),
        w10,
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: const Color.fromARGB(255, 223, 235, 255)),
          child: const Text(
            'UPI ID: peterparker-7@okicicibank',
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
        ),
      ],
    );
  }
}
