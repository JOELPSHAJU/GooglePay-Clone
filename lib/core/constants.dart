//SizedBox

import 'package:flutter/material.dart';
import 'package:googlepay/models/user_model.dart';

const h10 = SizedBox(
  height: 10,
);
const h20 = SizedBox(
  height: 20,
);
const h30 = SizedBox(
  height: 30,
);
const h40 = SizedBox(
  height: 40,
);
const h50 = SizedBox(
  height: 50,
);

const w10 = SizedBox(
  width: 10,
);
const w20 = SizedBox(
  width: 20,
);
const w30 = SizedBox(
  width: 30,
);
const w40 = SizedBox(
  width: 40,
);
const w50 = SizedBox(
  width: 50,
);

//Images

const logo = 'assets/splashlogo.gif';
const homebottom = 'assets/home_bottom.png';
const hometop = 'assets/home_top.png';
const profilepic = 'assets/profilepic.jpg';
const person1 = 'assets/p1.jpg';
const person2 = 'assets/p2.jpg';
const person3 = 'assets/p3.png';
const person4 = 'assets/p4.jpg';
const person5 = 'assets/p5.jpg';
const person6 = 'assets/p6.jpg';
const person7 = 'assets/p7.jpg';
const person8 = 'assets/p8.jpg';
const arrowdown = 'assets/arrow_down.png';
const homeicon1 = 'assets/1.png';
const homeicon2 = 'assets/2.png';
const homeicon3 = 'assets/3.png';
const homeicon4 = 'assets/4.png';
const homeicon5 = 'assets/5.png';
const homeicon6 = 'assets/6.png';
const homeicon7 = 'assets/7.png';
const homeicon8 = 'assets/8.png';
const jiologo = 'assets/jiologo.jpg';
const bill1 = 'assets/b1.png';
const bill2 = 'assets/b2.png';
const bill3 = 'assets/b3.png';
const bill4 = 'assets/b4.png';
const reward1 = 'assets/reward1.png';
const reward2 = 'assets/reward2.png';
const reward3 = 'assets/reward3.png';
const manage1 = 'assets/manage1.png';
const manage2 = 'assets/manage2.png';
const manage3 = 'assets/manage3.png';
const manage4 = 'assets/manage4.png';
const qrcode = 'assets/qrcode.png';
const containerbg = 'assets/profilecontainerbg.png';
const profile1 = 'assets/profile1.png';
const profile2 = 'assets/profile2.png';
const profile3 = 'assets/profile3.png';
const profile4 = 'assets/profile4.png';
const profile5 = 'assets/profile5.png';
const profile6 = 'assets/profile6.png';
const profile7 = 'assets/profile7.png';
const profile8 = 'assets/profile8.png';
const profile9 = 'assets/profile9.png';

//Colors

const grey = Colors.grey;
const white = Colors.white;
const black = Colors.black;
const transparent = Colors.transparent;

///List of Users

final List<User> users = [
  User(name: 'Akhil', imageUrl: person1, isOnline: true),
  User(name: 'Nikhila', imageUrl: person8, isOnline: false),
  User(name: 'Arjun', imageUrl: person7, isOnline: false),
  User(name: 'Aaron', imageUrl: person3, isOnline: true),
  User(name: 'Niyal', imageUrl: person4, isOnline: false),
  User(name: 'Favas', imageUrl: person5, isOnline: true),
  User(name: 'Sibin', imageUrl: person6, isOnline: false),
  User(name: 'More', imageUrl: '', isOnline: false, isMore: true),
];
