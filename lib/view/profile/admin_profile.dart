import 'package:admin_app/util/colors.dart';
import 'package:admin_app/util/constants.dart';
import 'package:admin_app/widgets/profile_listview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblcak,
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, Good Morning',
                        style: TextStyle(
                            fontSize: 18,
                            color: kfwhite,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.5),
                      ),
                      Text(
                        'Aswin Lal',
                        style: TextStyle(
                            fontSize: 21,
                            color: kwhite,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.5),
                      ),
                    ],
                  ),
                  Container(
                    width: 85,
                    height: 85,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: const Image(
                        image: AssetImage('assets/image/image.png')),
                  )
                ],
              ),
              kh25,
              kh15,
              const Text(
                'General',
                style: TextStyle(
                    fontSize: 12,
                    color: kfwhite,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.5),
              ),
              ProfileOptionButtons(
                title: 'Email',
                icon: CupertinoIcons.mail,
                ontap: () {},
              ),
              ProfileOptionButtons(
                title: 'Documents',
                icon: CupertinoIcons.doc,
                ontap: () {},
              ),
              ProfileOptionButtons(
                title: 'All Products',
                icon: CupertinoIcons.cube_box,
                ontap: () {},
              ),
              ProfileOptionButtons(
                title: 'Customer Type',
                icon: CupertinoIcons.person_2,
                ontap: () {},
              ),
              ProfileOptionButtons(
                title: 'Settings',
                icon: CupertinoIcons.settings,
                ontap: () {},
              ),
              kh15,
              const Text(
                'Support',
                style: TextStyle(
                    fontSize: 12,
                    color: kfwhite,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.5),
              ),
              ProfileOptionButtons(
                title: 'Help',
                icon: CupertinoIcons.question_circle,
                ontap: () {},
              ),
              ProfileOptionButtons(
                title: 'feedback',
                icon: CupertinoIcons.chat_bubble_text,
                ontap: () {},
              ),
              kh15,
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 150,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: kdark,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          CupertinoIcons.escape,
                          color: Colors.red,
                          size: 19,
                        ),
                        kw10,
                        Text(
                          'Logout',
                          style: TextStyle(
                              fontSize: 13,
                              color: kwhite,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.5),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
