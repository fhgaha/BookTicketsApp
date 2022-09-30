import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/icon_text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(20),
          vertical: AppLayout.getHeight(20),
        ),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "What are \nyou looking for?",
            style: Styles.headLineStyle1.copyWith(fontSize: 35),
          ),
          Gap(AppLayout.getHeight(20)),
          //tickets\hotels buttons
          FittedBox(
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3.5)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
                  color: const Color(0xfff4f6fd)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Airline Tickets
                  Container(
                    width: size.width * 0.44,
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(AppLayout.getHeight(20))),
                      color: Colors.white,
                    ),
                    child: const Center(child: Text("Airline Tickets")),
                  ),
                  //Hotels
                  Container(
                    width: size.width * 0.44,
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(AppLayout.getHeight(20))),
                      color: Colors.transparent,
                    ),
                    child: const Center(child: Text("Hotels")),
                  ),
                ],
              ),
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeight(15)),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
        ],
      ),
    );
  }
}
