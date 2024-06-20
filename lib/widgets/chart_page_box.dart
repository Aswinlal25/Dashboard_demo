import 'package:admin_app/util/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ComparsonChartBox extends StatelessWidget {
  final String title;
  final String amount;
  const ComparsonChartBox({
    super.key,
    required this.title,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(
              color: Colors.white30,
              width: 1,
            ),
            color: kblcak,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 16,
                      color: kfwhite,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.5),
                ),
                Text(
                  amount,
                  style: const TextStyle(
                      fontSize: 18,
                      color: kwhite,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5),
                ),
              ],
            ),
          ),
        ),
        const Positioned(
            right: 20,
            top: 10,
            child: Icon(
              CupertinoIcons.chevron_down,
              color: kfwhite,
            ))
      ],
    );
  }
}
