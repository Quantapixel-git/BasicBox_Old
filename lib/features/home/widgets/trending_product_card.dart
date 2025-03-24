import 'package:ecom2/core/router/route_name.dart';
import 'package:ecom2/features/products/screens/product_details_screen.dart';
import 'package:ecom2/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TrendingProductCard extends StatelessWidget {
  final VoidCallback onTap;

  const TrendingProductCard({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(ProductDetailsScreen.route);
      },
      child: Stack(
        children: [
          Container(
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
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: AspectRatio(
                        aspectRatio: 129 / 125,
                        child: Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Fruit%2C_Vegetables_and_Grain_NCI_Visuals_Online.jpg/1280px-Fruit%2C_Vegetables_and_Grain_NCI_Visuals_Online.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      left: 5,
                      child: Icon(
                        Icons.trending_up,
                        color: AppColors.green,
                        size: 25,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 26,
                ),
                Text(
                  "Rose Milk",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Its on #4 Trending",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: AppColors.green,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 11,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Wrap(
                      spacing: 3,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: AppColors.yellow,
                          size: 15,
                        ),
                        Text(
                          "4.0",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Text(
                        "11 Comments",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.more_vert,
                      size: 20,
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
            right: 0,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: whiteColor,
              child: Icon(
                Icons.favorite_border_outlined,
                color: blackColor,
                size: 24,
              ),
            ),
          )
        ],
      ),
    );
  }
}
