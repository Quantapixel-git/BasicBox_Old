import 'package:ecom2/core/router/route_name.dart';
import 'package:ecom2/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RecommendedProductCard extends StatelessWidget {
  final VoidCallback onTap;

  const RecommendedProductCard({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go(NavigateTo.productDetails);
      },
      child: Container(
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
                aspectRatio: 129 / 125,
                child: Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Fruit%2C_Vegetables_and_Grain_NCI_Visuals_Online.jpg/1280px-Fruit%2C_Vegetables_and_Grain_NCI_Visuals_Online.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Rose Milk",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              children: [
                Text(
                  "starts from",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 4.0),
                Text(
                  "₹40.00",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: AppColors.green,
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
    );
  }
}
