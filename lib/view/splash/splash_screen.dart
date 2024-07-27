import 'package:flutter/material.dart';
import 'package:googlepay/core/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:googlepay/view/home/home_screen.dart';
import 'package:googlepay/view/widgets/customNavigator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    gotoHomeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              h10,
              Image.asset(
                logo,
                width: size.width * .4,
              ),
              Text(
                'Google Pay',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600, fontSize: 24, color: grey),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future gotoHomeScreen() async {
    await Future.delayed(Duration(seconds: 3));
    CustomNavigate(context, HomeScreen());
  }
}
