import 'package:ecom2/theme/colors.dart';
import 'package:flutter/material.dart';

class VarriationCard extends StatelessWidget {
  final String name;
  final bool isSelected;
  final VoidCallback? onTap;

  const VarriationCard({
    super.key,
    required this.name,
    required this.isSelected,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: isSelected ? AppColors.primary : AppColors.lightBgColor,
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: blackColor, width: isSelected ? 2 : 1)),
        child: Text(
          name,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
              ),
        ),
      ),
    );
  }
}
