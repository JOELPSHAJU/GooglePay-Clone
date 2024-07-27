import 'package:flutter/material.dart';

class ViewAllButton extends StatelessWidget {
  const ViewAllButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
              width: 1.2, color: Color.fromARGB(255, 163, 163, 163))),
      child: const Center(
        child: Text(
          'View all',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 0, 86, 156)),
        ),
      ),
    );
  }
}
