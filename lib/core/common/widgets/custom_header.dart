import 'package:ecom2/theme/colors.dart';
import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/branding/logo.png",
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(
            "Basics \n Box",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            width: 6.0,
          ),
          SizedBox(
            height: 34,
            child: VerticalDivider(
              thickness: 3,
              width: 0,
              color: blackColor,
            ),
          ),
          SizedBox(
            width: 11.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Order Now & \n Delivered in Minutes",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
