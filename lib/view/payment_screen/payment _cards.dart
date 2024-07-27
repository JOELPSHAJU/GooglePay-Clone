import 'package:flutter/material.dart';
import 'package:googlepay/core/constants.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .3,
      margin: index % 2 == 0
          ? EdgeInsets.only(right: 140, top: 15, left: 15)
          : EdgeInsets.only(left: 140, top: 15, right: 15),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            index % 2 == 0 ? 'Payment to you' : 'Payment to Akhil S',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 16),
          Text(
            '₹4,000',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          h10,
          Row(
            children: [
              Icon(
                Icons.check_circle,
                color: const Color.fromARGB(255, 41, 137, 44),
                size: 20,
              ),
              SizedBox(width: 8),
              Text(
                'Paid - 31 May',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                size: 15,
              )
            ],
          ),
        ],
      ),
    );
  }
}
