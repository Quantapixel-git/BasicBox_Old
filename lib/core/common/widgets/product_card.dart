import 'package:ecom2/core/common/widgets/button.dart';
import 'package:ecom2/core/common/widgets/common_bottom_sheet.dart';
import 'package:ecom2/theme/colors.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  Future<void> _showSortingBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return CommonBottomSheet(
              crossAxisAlignment: CrossAxisAlignment.start,
              title: "Product Action",
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    "Add to Wishlist",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                Divider(
                  color: AppColors.border,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    "Share Product",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                Button(
                  onTap: () {},
                  title: "Add to Cart",
                  frogroundColor: AppColors.black,
                  backgroundColor: AppColors.primary,
                  fullWidth: true,
                ),
              ],
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 14,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: AspectRatio(
              aspectRatio: 130 / 130,
              child: Image.asset(
                "assets/images/headphone.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "TMA-2 HD Wireless",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          SizedBox(
            height: 4.0,
          ),
          Text("Rp. 1.500.000",
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: AppColors.red1,
                  )),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Wrap(
                      spacing: 3,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: AppColors.yellow,
                          size: 10,
                        ),
                        Text(
                          "4.6",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "86 Reviews",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  _showSortingBottomSheet(context);
                },
                child: Icon(
                  Icons.more_vert,
                  size: 14,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
