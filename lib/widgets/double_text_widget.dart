import 'package:flutter/material.dart';
import '../utils/app_styles.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String bigText;
  final String smallText;
  const AppDoubleTextWidget(
      {super.key, required this.bigText, required this.smallText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(bigText, style: Styles.headLineStyle2),
          InkWell(
            onTap: () {
              print("You are tapped " "View all" "");
            },
            child: Text(
              smallText,
              style: Styles.textStyle.copyWith(color: Styles.primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
