import 'package:flutter/material.dart';
import 'package:googlepay/core/constants.dart';
import 'package:googlepay/models/business_model.dart';
import 'package:googlepay/models/user_model.dart';
import 'package:googlepay/view/home/widgets/bank_buttons.dart';
import 'package:googlepay/view/home/widgets/bill_item.dart';
import 'package:googlepay/view/home/widgets/business_item.dart';
import 'package:googlepay/view/home/widgets/explore_item.dart';
import 'package:googlepay/view/home/widgets/grid_item.dart';
import 'package:googlepay/view/home/widgets/home_top_widget.dart';
import 'package:googlepay/view/home/widgets/managelist.dart';
import 'package:googlepay/view/home/widgets/reward_item.dart';

import 'package:googlepay/view/home/widgets/title.dart';
import 'package:googlepay/view/home/widgets/user_item.dart';
import 'package:googlepay/view/home/widgets/view_button.dart';
import 'package:googlepay/view/payment_screen/payment_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: SizedBox(
        width: size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              h10,
              HomeTopWidget(size: size),
              h30,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildGridItem(homeicon2, "Scan any\nQR code"),
                  buildGridItem(homeicon6, "Pay\ncontacts"),
                  buildGridItem(homeicon1, "Pay phone\nnumber"),
                  buildGridItem(homeicon8, "Bank\ntransfer"),
                ],
              ),
              h10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildGridItem(homeicon4, "Pay UPI ID\nor number"),
                  buildGridItem(homeicon3, "Self\ntransfer"),
                  buildGridItem(homeicon5, "Pay\nbills"),
                  buildGridItem(homeicon7, "Mobile\nrecharge"),
                ],
              ),
              h20,
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: BankButtonsRow(),
              ),
              h20,
              const TitleText(title: 'People'),
              h20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => PaymentScreen()));
                      },
                      child: buildUserItem(users[0])),
                  buildUserItem(users[1]),
                  buildUserItem(users[2]),
                  buildUserItem(users[3]),
                ],
              ),
              h10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildUserItem(users[4]),
                  buildUserItem(users[5]),
                  buildUserItem(users[6]),
                  buildUserItem(users[7]),
                ],
              ),
              h20,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [TitleText(title: 'Businesses'), ExploreItem()],
              ),
              h20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  businesses(Business(
                    text: 'F',
                    name: 'FORUM MALL',
                    isOnline: true,
                    color: const Color.fromARGB(255, 132, 51, 146),
                  )),
                  businesses(
                      Business(text: 'T', name: 'TEA MONK', color: Colors.red)),
                  buildUserItem(User(name: 'Jio Prepaid', imageUrl: jiologo)),
                  buildUserItem(users[7]),
                ],
              ),
              h30,
              const TitleText(
                title: 'Bills & Charges',
              ),
              h10,
              const Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'No bills due, Try adding these!',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                ),
              ),
              h20,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildbillsitem(bill1, 'Credit cards'),
                      buildbillsitem(bill2, 'Mobile\nrecharge'),
                      buildbillsitem(bill3, 'DTH / Cable\nTV'),
                      buildbillsitem(bill4, 'Electricity')
                    ]),
              ),
              h20,
              const ViewAllButton(),
              h20,
              const TitleText(
                title: 'Offers & rewards',
              ),
              h20,
              SizedBox(
                width: size.width * .8,
                child: Row(
                  children: [
                    buildRewardsItem(reward2, 'Rewards'),
                    w30,
                    buildRewardsItem(reward3, 'Offers'),
                    w30,
                    buildRewardsItem(reward1, 'Refferals')
                  ],
                ),
              ),
              h30,
              const TitleText(
                title: 'Manage your Money',
              ),
              h20,
              const Managelist1(),
              const Mangelistcustom(
                image: manage3,
                heading: 'Check your CIBIL score for free',
              ),
              const Mangelistcustom(
                  image: manage1, heading: 'See transaction history'),
              const Mangelistcustom(
                  image: manage2, heading: 'Check bank balance'),
              h20,
              Image.asset(
                homebottom,
                width: size.width,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
