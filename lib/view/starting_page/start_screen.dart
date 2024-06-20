import 'package:admin_app/util/colors.dart';
import 'package:admin_app/util/constants.dart';
import 'package:admin_app/view/login/login.dart';
import 'package:flutter/material.dart';

class StartingScreen extends StatefulWidget {
  const StartingScreen({super.key});

  @override
  State<StartingScreen> createState() => _StartingScreenState();
}

class _StartingScreenState extends State<StartingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblcak,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kh50,
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 35),
            child: Stack(
              children: [
                SizedBox(
                  height: 50,
                  width: 200,
                  child: Text(
                    'Dashboard',
                    style: TextStyle(
                        fontSize: 26,
                        color: kwhite,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5),
                  ),
                ),
                Positioned(
                  left: 15,
                  top: 20,
                  child: Text(
                    'Dashboard',
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.white10,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: double.infinity,
            height: 300,
            child: Image(
                image: AssetImage('assets/image/gg-removebg-preview.png')),
          ),
          kh25,
          kh10,
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Manage Your Sales',
                  style: TextStyle(
                      fontSize: 22,
                      color: kwhite,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5),
                ),
                const Text(
                  'Your all-in-one solution for streamlined sales management!',
                  style: TextStyle(
                      fontSize: 13,
                      color: kfwhite,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.5),
                ),
                kh60,
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const DashboardScreen()));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: const BoxDecoration(
                        color: kdark,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: const Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 13,
                            color: kwhite,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.5),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
