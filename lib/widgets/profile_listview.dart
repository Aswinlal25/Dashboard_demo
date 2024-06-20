import 'package:admin_app/util/colors.dart';
import 'package:flutter/material.dart';

class ProfileOptionButtons extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function ontap;

  const ProfileOptionButtons({
    Key? key,
    required this.title,
    required this.icon,
    required this.ontap, // Mark as required
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => ontap(), // Use the provided ontap function
      child: ListTile(
        leading: Icon(icon), // Use the passed icon
        title: Text(
          title,
          style: const TextStyle(
              fontSize: 15,
              color: kwhite,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.5),
        ),
      ),
    );
  }
}
