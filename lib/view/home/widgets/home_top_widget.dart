import 'package:flutter/material.dart';
import 'package:googlepay/core/constants.dart';
import 'package:googlepay/view/home/widgets/searchbar.dart';
import 'package:googlepay/view/profile_screen/profile_screen.dart';

class HomeTopWidget extends StatelessWidget {
  const HomeTopWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          hometop,
          width: size.width,
          fit: BoxFit.cover,
        ),
        Positioned(
            top: 15,
            left: 5,
            child: SizedBox(
                width: size.width * .8, height: 80, child: CustomSearchBar())),
        Positioned(
          top: 30,
          right: 20,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => ProfileScreen()));
            },
            child: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(profilepic),
            ),
          ),
        ),
      ],
    );
  }
}
