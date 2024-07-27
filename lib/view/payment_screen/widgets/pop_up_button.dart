// ignore_for_file: unnecessary_constructor_name

import 'package:flutter/material.dart';

import 'package:googlepay/core/constants.dart';

class PopupmenuButtons extends StatelessWidget {
  const PopupmenuButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      shadowColor: grey,
      elevation: 3,
      popUpAnimationStyle: AnimationStyle(
        curve: const FlippedCurve.new(Curves.easeInOut),
      ),
      color: Color.fromARGB(255, 241, 249, 255),
      itemBuilder: (BuildContext context) => <PopupMenuEntry>[
        const PopupMenuItem(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              'Start new group',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        ),
        const PopupMenuItem(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              'Block this person',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        ),
        const PopupMenuItem(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              'Turn off messaging',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        ),
        const PopupMenuItem(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              'Report user',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        ),
        const PopupMenuItem(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              'Refresh',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        ),
        const PopupMenuItem(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              'Get help',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        ),
        const PopupMenuItem(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              'Send feedback',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ],
      onSelected: (value) {},
      icon: const Icon(Icons.more_vert),
    );
  }
}
