import 'package:booktickets/screens/hotel_screen.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/double_text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          Container(
            //book tickets and incoming flights
            child: Column(
              children: [
                const Gap(40),
                //good morning, book tickets, image
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //good morning, book tickets
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good morning", style: Styles.headLineStyle3),
                        const Gap(5),
                        Text("Book Tickets", style: Styles.headLineStyle1),
                      ],
                    ),
                    // img
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/img_1.png"),
                        ),
                      ),
                      child: null,
                    ),
                  ],
                ),
                const Gap(25),
                //search bar
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xfff4f6fd),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Colors.grey.shade500,
                      ),
                      Text(
                        "Search",
                        style: Styles.headLineStyle4,
                      ),
                    ],
                  ),
                ),
                const Gap(40),
                const AppDoubleTextWidget(
                    bigText: "Upcoming Flights", smallText: "View all"),
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            // padding: const EdgeInsets.only(left: 20),
            scrollDirection: Axis.horizontal,
            child: Row(
                children:
                    ticketList.map((t) => TicketView(ticket: t)).toList()),
          ),
          const Gap(15),
          const AppDoubleTextWidget(bigText: "Hotels", smallText: "View all"),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: hotelList
                    .map((hotel) => HotelScreen(hotel: hotel))
                    .toList()),
          ),
        ],
      ),
    );
  }
}
