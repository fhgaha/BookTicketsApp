import 'package:flutter/material.dart';
import '../utils/app_layout.dart';

class AppSwitchButton extends StatefulWidget {
  final String firstTab;
  final String secondTab;

  const AppSwitchButton(
      {super.key, required this.firstTab, required this.secondTab});

  @override
  State<AppSwitchButton> createState() => _AppSwitchButtonState();
}

class _AppSwitchButtonState extends State<AppSwitchButton> {
  Color firstColor = Colors.white;
  Color secondColor = Colors.transparent;

  void setFirstActive() => setState(() {
        firstColor = Colors.white;
        secondColor = Colors.transparent;
      });

  void setSecondActive() => setState(() {
        firstColor = Colors.transparent;
        secondColor = Colors.white;
      });

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(AppLayout.getHeight(3.5)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
            color: const Color(0xfff4f6fd)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Airline Tickets
            InkWell(
              onTap: setFirstActive,
              child: Container(
                width: size.width * 0.44,
                padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(AppLayout.getHeight(20))),
                  color: firstColor,
                ),
                child: Center(
                  child: Text(widget.firstTab),
                ),
              ),
            ),
            //Hotels
            InkWell(
              onTap: setSecondActive,
              child: Container(
                width: size.width * 0.44,
                padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(AppLayout.getHeight(20))),
                  color: secondColor,
                ),
                child: Center(
                  child: Text(widget.secondTab),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
