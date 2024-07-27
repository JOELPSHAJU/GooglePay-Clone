import 'package:flutter/material.dart';
import 'package:googlepay/core/constants.dart';

class Mangelistcustom extends StatelessWidget {
  const Mangelistcustom({
    super.key,
    required this.image,
    required this.heading,
  });
  final String image;
  final String heading;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: ListTile(
        leading: Image.asset(
          image,
          width: 30,
        ),
        title: Text(
          heading,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 18,
        ),
      ),
    );
  }
}

class Managelist1 extends StatelessWidget {
  const Managelist1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: ListTile(
        leading: Image.asset(
          manage4,
          width: 30,
        ),
        title: Text(
          'Get a loan',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Text(
          'Instant approval & paperless',
          style: TextStyle(fontSize: 13),
        ),
        trailing: Text(
          'Apply now',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 13,
              color: const Color.fromARGB(255, 0, 86, 156)),
        ),
      ),
    );
  }
}
