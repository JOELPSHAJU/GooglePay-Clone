import 'package:flutter/material.dart';
import 'package:googlepay/core/constants.dart';
import 'package:googlepay/models/user_model.dart';

Widget buildUserItem(User user) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      user.imageUrl.isNotEmpty
          ? Stack(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(user.imageUrl),
                  backgroundColor: white,
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
            )
          : Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 209, 209, 209),
                      width: 2),
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                child: Image.asset(
                  arrowdown,
                  width: 25,
                  color: const Color.fromARGB(255, 16, 80, 133),
                ),
              ),
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
