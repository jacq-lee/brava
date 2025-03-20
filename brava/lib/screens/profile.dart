import 'package:flutter/material.dart';

import 'package:brava/style/style.dart';
import 'package:brava/widgets/widgets.dart';


class Profile extends StandardPage {
  const Profile({super.key});

  @override
  String getPageTitle() {
    return "Profile";
  }

  @override
  Widget getContentWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: BravaColors.lightPink,
            // border: Border.all(color: Color(0xFFFCF3F6), width: 2,),
          ),
          child: Icon(Icons.person, color: BravaColors.stagePink, size: 64,),
        ),
        SizedBox(height: 16,),
        Text(
            "Cocoa Pods",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontWeight: FontWeight.w700,
              color: BravaColors.marleyBlack,
            ),
        ),
      ],
    );
  }
}