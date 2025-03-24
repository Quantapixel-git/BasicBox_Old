import 'package:ecom2/features/products/screens/product_screen.dart';
import 'package:ecom2/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CategoryCard extends StatelessWidget {
  final VoidCallback? onTap;
  final String name;

  const CategoryCard({
    super.key,
    required this.name,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ??
          () {
            context.pushNamed(ProductScreen.route);
          },
      child: Column(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: Color(0xFFD6EBE4),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 3),
                  color: blackColor.withValues(alpha: 0.5),
                  blurRadius: 5,
                )
              ],
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Icon(
              Icons.toll_outlined,
              color: Color(
                0xFF539780,
              ),
              size: 40,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xFF646869),
            ),
          )
        ],
      ),
    );
  }
}
