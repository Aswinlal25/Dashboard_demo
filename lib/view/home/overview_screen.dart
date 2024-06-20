import 'package:admin_app/util/colors.dart';
import 'package:admin_app/util/constants.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:fl_chart/fl_chart.dart' as fl_chart; // Import with alias

class OverviewScreen extends StatefulWidget {
  const OverviewScreen({super.key});

  @override
  State<OverviewScreen> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  DateTime selectedDate = DateTime.now();
  int totalSalesAmount = 200000;
  int soldProductQty = 4;
  String productName = 'Men watchs';
  String productImage =
      'assets/image/Men Mesh Strap Round Pointer Quartz Watch.jpg';

  void updateSales(DateTime newDate) {
    setState(() {
      selectedDate = newDate;

      if (newDate.day == 1) {
        totalSalesAmount = 200000;
        soldProductQty = 4;
      } else if (newDate.day == 2) {
        totalSalesAmount = 180000;
        soldProductQty = 3;
      } else if (newDate.day == 3) {
        totalSalesAmount = 220000;
        soldProductQty = 5;
      } else if (newDate.day == 4) {
        totalSalesAmount = 220000;
        soldProductQty = 5;
      }
    });
  }

  late fl_chart.LineChartData chartData; // Specify the alias here

  @override
  void initState() {
    super.initState();
    chartData = sampleData1(); // Initialize chartData here
  }

  fl_chart.LineChartData sampleData1() {
    return fl_chart.LineChartData(
      lineBarsData: [
        fl_chart.LineChartBarData(
          spots: [
            const fl_chart.FlSpot(0, 1000),
            const fl_chart.FlSpot(1, 1200),
            const fl_chart.FlSpot(2, 800),
            const fl_chart.FlSpot(3, 1500),
            const fl_chart.FlSpot(4, 1700),
            const fl_chart.FlSpot(5, 1400),
            const fl_chart.FlSpot(6, 2000),
          ],
          isCurved: true,
          color: kgreen,
          barWidth: 2,
          isStrokeCapRound: true,
          belowBarData: fl_chart.BarAreaData(show: false),
        ),
      ],
      minY: 0,
      titlesData: fl_chart.FlTitlesData(
        leftTitles: fl_chart.AxisTitles(
          sideTitles: fl_chart.SideTitles(
            showTitles: true,
            interval: 500,
            getTitlesWidget: (value, meta) {
              const style = TextStyle(
                color: Colors.blue, // Change color here
                fontWeight: FontWeight.bold,
                fontSize: 9,
              );
              return Text(value.toInt().toString(), style: style);
            },
          ),
        ),
        bottomTitles: fl_chart.AxisTitles(
          sideTitles: fl_chart.SideTitles(
            showTitles: true,
            getTitlesWidget: (value, meta) {
              const style = TextStyle(
                color: kwhite, // Change color here
                fontWeight: FontWeight.bold,
                fontSize: 14,
              );
              switch (value.toInt()) {
                case 0:
                  return const Text('Mon', style: style);
                case 1:
                  return const Text('Tue', style: style);
                case 2:
                  return const Text('Wed', style: style);
                case 3:
                  return const Text('Thu', style: style);
                case 4:
                  return const Text('Fri', style: style);
                case 5:
                  return const Text('Sat', style: style);
                case 6:
                  return const Text('Sun', style: style);
                default:
                  return const Text('', style: style);
              }
            },
          ),
        ),
      ),
      gridData: const fl_chart.FlGridData(show: true),
    );
  }

  final List<int> dates = List<int>.generate(
      31, (index) => index + 1); // Generate numbers from 1 to 31
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
                'Overview',
                style: TextStyle(
                    fontSize: 21,
                    color: kwhite,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5),
              ),
              kh10,
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 130,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      border: Border.all(
                        color: Colors.white30,
                        width: 1,
                      ),
                      color: kblcak,
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Toatal Sales',
                            style: TextStyle(
                                fontSize: 16,
                                color: kfwhite,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.5),
                          ),
                          kh5,
                          Text(
                            'Rs. 1,20,000',
                            style: TextStyle(
                                fontSize: 18,
                                color: kwhite,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.5),
                          ),
                          kh5,
                          Text(
                            'Qty : 45 Products',
                            style: TextStyle(
                                fontSize: 16,
                                color: kfwhite,
                                fontWeight: FontWeight.w500,
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
                      )),
                  Positioned(
                    right: 20,
                    bottom: 25,
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 14,
                          color: kfwhite,
                          letterSpacing: 0.5,
                        ),
                        children: [
                          TextSpan(
                            text: '15.7%',
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w600),
                          ),
                          TextSpan(
                            text: ' for Today',
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              kh20,
              const Text(
                'Product Sales Chart',
                style: TextStyle(
                    fontSize: 17,
                    color: kwhite,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5),
              ),
              kh10,
              SizedBox(
                width: double.infinity,
                height: 400,
                child: fl_chart.LineChart(chartData),
              ),
              kh10,
              const Text(
                'Daily Sales',
                style: TextStyle(
                    fontSize: 17,
                    color: kwhite,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Current Month',
                    style: TextStyle(
                        fontSize: 14,
                        color: kfwhite,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.5),
                  ),
                  Text(
                    'Dates >>',
                    style: TextStyle(
                        fontSize: 14,
                        color: kfwhite,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.5),
                  ),
                ],
              ),
              kh20,
              SizedBox(
                height: 60,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 31, // Adjust based on your actual range of dates
                  itemBuilder: (context, index) {
                    int day = index + 1;
                    return GestureDetector(
                      onTap: () => updateSales(DateTime(
                          DateTime.now().year, DateTime.now().month, day)),
                      child: Container(
                        width: 50,
                        height: 30,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(
                            color: Colors.white30,
                            width: 1,
                          ),
                          color: kblcak,
                        ),
                        child: Center(
                          child: Text(
                            '$day',
                            style: const TextStyle(
                              color: kwhite,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              kh25,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Total Sales',
                        style: TextStyle(
                          fontSize: 21,
                          color: kwhite,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5,
                        ),
                      ),
                      Text(
                        'September ${selectedDate.day}',
                        style: const TextStyle(
                          fontSize: 15,
                          color: kfwhite,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Rs. $totalSalesAmount',
                    style: const TextStyle(
                      fontSize: 20,
                      color: kwhite,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                    ),
                  ),
                ],
              ),
              kh20,
              const Divider(color: kfw10),
              kh20,
              const Text(
                'Sold Products',
                style: TextStyle(
                  fontSize: 17,
                  color: kwhite,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                ),
              ),
              kh20,
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
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(productImage),
                          ),
                        ),
                      ),
                      kw15,
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              productName,
                              style: const TextStyle(
                                fontSize: 16,
                                color: kwhite,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.5,
                              ),
                            ),
                            Text(
                              'Qty: $soldProductQty',
                              style: const TextStyle(
                                fontSize: 12,
                                color: kfwhite,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Rs. $totalSalesAmount',
                        style: const TextStyle(
                          fontSize: 17,
                          color: kwhite,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
