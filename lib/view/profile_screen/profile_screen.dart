import 'package:flutter/material.dart';
import 'package:googlepay/core/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      
      backgroundColor: white,
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back)),
                  const Icon(Icons.more_vert),
                ],
              ),
            ),
            Container(
              height: 180,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(containerbg), fit: BoxFit.cover)),
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(width: 16),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'PETER PARKER',
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'UPI ID: peterparker-7@okicicibank',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '98476****',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  CircleAvatharProfile(),
                ],
              ),
            ),
            h10,
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  Image.asset(
                    reward2,
                    width: 25,
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    '₹70 Rewards earned',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            h10,
            Container(
              height: 185,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              width: size.width * .95,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                )
              ], borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Column(
                children: [
                  h10,
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Set up payment methods 1/3',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Color.fromARGB(255, 25, 96, 165),
                      )
                    ],
                  ),
                  h10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: CircleAvatar(
                              backgroundColor: white,
                              radius: 30,
                              child: Center(
                                child: Image.asset(
                                  homeicon8,
                                  width: 40,
                                ),
                              ),
                            ),
                          ),
                          const Text(
                            'Bank Account',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Text(
                            '1 Account',
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: CircleAvatar(
                              backgroundColor: white,
                              radius: 30,
                              child: Center(
                                child: Image.asset(
                                  profile6,
                                ),
                              ),
                            ),
                          ),
                          const Text(
                            'RuPay credit card',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Text(
                            'pay with UPI',
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: CircleAvatar(
                              backgroundColor: white,
                              radius: 30,
                              child: Center(
                                child: Image.asset(
                                  profile1,
                                ),
                              ),
                            ),
                          ),
                          const Text(
                            'UPI Lite',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Text(
                            'Pay PIN-free',
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            h30,
            ListTile(
              leading: Image.asset(
                profile2,
                width: 25,
              ),
              title: const Text(
                'Pay with credit or debit cards',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              subtitle: const Text(
                'Bills, online shopping, and more',
                style: TextStyle(fontSize: 13),
              ),
              trailing: TextButton(
                child: const Text(
                  'Add',
                  style: TextStyle(color: Color.fromARGB(255, 44, 114, 171)),
                ),
                onPressed: () {},
              ),
            ),
            ListTile(
              leading: Image.asset(
                profile4,
                width: 25,
              ),
              title: const Text(
                'Your QR code',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              subtitle: const Text(
                'Use to receive money from any UPI app',
                style: TextStyle(fontSize: 13),
              ),
            ),
            ListTile(
              leading: Image.asset(
                profile3,
                width: 25,
              ),
              title: const Text(
                'Invite friends, get rewards',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              subtitle: const Text(
                'Share your code bs7ao9h',
                style: TextStyle(fontSize: 13),
              ),
              trailing: TextButton(
                child: const Text(
                  'Share',
                  style: TextStyle(color: Color.fromARGB(255, 32, 118, 187)),
                ),
                onPressed: () {},
              ),
            ),
            ListTile(
              leading: Image.asset(
                profile7,
                width: 25,
              ),
              title: const Text(
                'Settings',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset(
                profile8,
                width: 25,
              ),
              title: const Text(
                'Manage Google account',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset(
                profile5,
                width: 25,
              ),
              title: const Text(
                'Get help',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset(
                profile9,
                width: 25,
              ),
              title: const Text(
                'Language',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              subtitle: const Text(
                'English',
                style: TextStyle(fontSize: 13),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class CircleAvatharProfile extends StatelessWidget {
  const CircleAvatharProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage(person1),
        ),
        Positioned(
          bottom: -10,
          right: -10,
          child: Container(
            height: 34,
            width: 34,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: white),
            child: Center(
              child: Image.asset(
                qrcode,
                width: 27,
              ),
            ),
          ),
        )
      ],
    );
  }
}
