import 'dart:math';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/column_layout.dart';
import 'package:booktickets/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/layout_builder_widget.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.80,
      height: AppLayout.getHeight(179),
      //ticket body
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            //blue part of card
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? const Color(0xff526799) : Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayout.getHeight(21)),
                  topRight: Radius.circular(AppLayout.getHeight(21)),
                ),
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'],
                          style: isColor == null
                              ? Styles.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle3),
                      const Spacer(),
                      const ThickContainer(isColor: true),
                      Expanded(
                        child: Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            //dot line
                            SizedBox(
                              height: AppLayout.getHeight(24),
                              child: AppLayoutBuilderWidget(
                                sections: 6,
                                isColor: isColor,
                              ),
                            ),
                            //plane symbol
                            Transform.rotate(
                              angle: pi / 2,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: isColor == null
                                    ? Colors.white
                                    : const Color(0xff8accf7),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const ThickContainer(isColor: true),
                      const Spacer(),
                      Text(ticket['to']['code'],
                          style: isColor == null
                              ? Styles.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle3),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(ticket['from']['name'],
                            style: isColor == null
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle4),
                      ),
                      Text(ticket['flying_time'],
                          style: isColor == null
                              ? Styles.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle4),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(ticket['to']['name'],
                            textAlign: TextAlign.end,
                            style: isColor == null
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle4),
                      ),
                    ],
                  ),
                  const Gap(3),
                ],
              ),
            ),
            //orange top part of card
            Container(
              color: isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  //cut out left
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor == null ? Styles.bgColor : Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(AppLayout.getHeight(10)),
                          bottomRight: Radius.circular(AppLayout.getHeight(10)),
                        ),
                      ),
                    ),
                  ),
                  // const AppLayoutBuilderWidget(isColor: true, sections: 15),
                  //dot line
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(AppLayout.getHeight(12)),
                      child: AppLayoutBuilderWidget(
                        sections: 15,
                        isColor: isColor,
                      ),
                    ),
                  ),
                  //cut out right
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor == null ? Styles.bgColor : Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(AppLayout.getHeight(10)),
                          bottomLeft: Radius.circular(AppLayout.getHeight(10)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            //orange bottom part of card
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? Styles.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(
                      AppLayout.getHeight(isColor == null ? 21 : 0)),
                  bottomRight: Radius.circular(
                      AppLayout.getHeight(isColor == null ? 21 : 0)),
                ),
              ),
              padding: const EdgeInsets.only(
                  left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //departure date
                      AppColumnLayout(
                        firstText: ticket['date'],
                        secondText: "Date",
                        alignment: CrossAxisAlignment.start,
                        isColor: isColor,
                      ),
                      AppColumnLayout(
                        firstText: ticket['departure_time'],
                        secondText: "Departure time",
                        alignment: CrossAxisAlignment.center,
                        isColor: isColor,
                      ),
                      //seat number
                      AppColumnLayout(
                        firstText: ticket['number'].toString(),
                        secondText: "Number",
                        alignment: CrossAxisAlignment.end,
                        isColor: isColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
