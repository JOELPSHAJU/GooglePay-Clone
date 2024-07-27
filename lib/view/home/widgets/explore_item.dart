import 'package:flutter/material.dart';
import 'package:googlepay/core/constants.dart';

class ExploreItem extends StatelessWidget {
  const ExploreItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 30.0),
      child: Row(
        children: [
          Text(
            'Explore',
            style: TextStyle(
                color: Color.fromARGB(255, 31, 99, 154),
                fontWeight: FontWeight.w500,
                fontSize: 13),
          ),
          w10,
          Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: Color.fromARGB(255, 31, 99, 154),
          )
        ],
      ),
    );
  }
}
