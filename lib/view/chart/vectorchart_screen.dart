import 'package:admin_app/util/colors.dart';
import 'package:admin_app/util/constants.dart';
import 'package:admin_app/widgets/chart_page_box.dart';
import 'package:flutter/material.dart';
import 'package:tiny_charts/tiny_charts.dart';

class ChartScreen extends StatefulWidget {
  const ChartScreen({super.key});

  @override
  State<ChartScreen> createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblcak,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Sales Comparison',
                style: TextStyle(
                    fontSize: 21,
                    color: kwhite,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5),
              ),
              kh15,
              Container(
                width: double.infinity,
                height: 420,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(
                    color: kfw10,
                    width: 1, // Adjust the width as needed
                  ),
                  color: kdark,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Previous Vs Current Sales',
                        style: TextStyle(
                            fontSize: 13,
                            color: kfwhite,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.5),
                      ),
                      Stack(
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 70,
                              ),
                              SizedBox(
                                width: 250,
                                height: 300,
                                child: TinyLineChart(
                                  width: 250,
                                  height: 300,
                                  options: const TinyLineChartOptions(
                                      color: kgreen, lineWidth: 2),
                                  dataPoints: const [
                                    Offset(0, 2),
                                    Offset(1, 11),
                                    Offset(2, 17),
                                    Offset(3, 10),
                                    Offset(4, 24),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            right: 265,
                            bottom: 140,
                            child: Transform.rotate(
                              angle: -3.14159 /
                                  2, // Rotate by 90 degrees (pi/2 radians)
                              child: const Text(
                                'Previous Month ',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                              right: 275,
                              bottom: 20,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  valueInChart('70 L'),
                                  kh25,
                                  valueInChart('60 L'),
                                  kh25,
                                  valueInChart('50 L'),
                                  kh25,
                                  valueInChart('40 L'),
                                  kh25,
                                  valueInChart('30 L'),
                                  kh25,
                                  valueInChart('20 L'),
                                  kh25,
                                  valueInChart('10 L')
                                ],
                              ))
                        ],
                      ),
                      kh20,
                      Row(
                        children: [
                          kw20,
                          kw25,
                          valueInChart('10 L'),
                          kw25,
                          valueInChart('20 L'),
                          kw25,
                          valueInChart('30 L'),
                          kw25,
                          valueInChart('40 L'),
                          kw25,
                          valueInChart('50 L'),
                          kw25,
                          valueInChart('60 L'),
                        ],
                      ),
                      kh10,
                      const Center(
                        child: Text(
                          'Current Month ',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              kh15,
              const ComparsonChartBox(
                title: 'Previous Year Sales',
                amount: 'Rs. 45,00,000',
              ),
              kh10,
              const ComparsonChartBox(
                title: 'Current Year Sales',
                amount: 'Rs. 25,00,000',
              )
            ],
          ),
        ),
      ),
    );
  }

  Text valueInChart(String value) {
    return Text(value,
        style: const TextStyle(
          fontSize: 11,
          color: Colors.white,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.5,
        ));
  }
}
