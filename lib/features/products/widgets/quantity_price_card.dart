import 'package:ecom2/theme/colors.dart';
import 'package:flutter/material.dart';

class QuantityPriceCard extends StatelessWidget {
  const QuantityPriceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12.0),
          topRight: Radius.circular(12.0),
          bottomLeft: Radius.circular(12.0),
        ),
        color: AppColors.grey1,
        border: Border.all(
          color: blackColor,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 13, left: 16, right: 16.0),
            child: RichText(
              text: TextSpan(
                  text: "300 ML ",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                  children: [
                    TextSpan(
                        text: " is",
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              fontSize: 8,
                              fontWeight: FontWeight.w600,
                            ))
                  ]),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icons/juice.png",
                height: 20,
              ),
              Text(
                "~ 1 - 2 Glasses",
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontSize: 8,
                      fontWeight: FontWeight.w600,
                    ),
              )
            ],
          ),
          SizedBox(
            height: 3.0,
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 6.0,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: blackColor,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.0),
                topRight: Radius.circular(12.0),
                bottomLeft: Radius.circular(12.0),
              ),
              color: AppColors.primary,
            ),
            child: RichText(
              text: TextSpan(
                  text: "₹40 ",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    color: AppColors.red,
                  ),
                  children: [
                    TextSpan(
                      text: "₹40 ",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppColors.black,
                        fontSize: 12,
                      ),
                    ),
                    TextSpan(
                      text: "₹30 ",
                      style: TextStyle(
                        color: AppColors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                      ),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
