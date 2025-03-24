import 'package:ecom2/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CommonBottomSheet extends StatelessWidget {
  final String title;
  final VoidCallback? onCloseTap;
  final List<Widget> children;
  final CrossAxisAlignment crossAxisAlignment;
  final EdgeInsetsGeometry padding;
  final bool hasHeight;
  final Widget? titleWidget;

  const CommonBottomSheet({
    super.key,
    required this.title,
    this.onCloseTap,
    required this.children,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.padding = const EdgeInsets.only(
      bottom: 25,
      left: 25,
      right: 25,
    ),
    this.hasHeight = false,
    this.titleWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: crossAxisAlignment,
        children: [
          if (titleWidget != null) titleWidget!,
          if (titleWidget == null)
            Padding(
              padding: EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontSize: 16,
                          color: AppColors.black,
                        ),
                  ),
                  IconButton(
                    onPressed: () {
                      context.pop();
                    },
                    icon: Icon(
                      Icons.close,
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),
          Divider(
            height: 0,
            color: AppColors.border,
          ),
          if (hasHeight)
            Expanded(
              child: Padding(
                padding: padding,
                child: Column(
                  crossAxisAlignment: crossAxisAlignment,
                  children: children,
                ),
              ),
            ),
          if (!hasHeight)
            Padding(
              padding: padding,
              child: Column(
                crossAxisAlignment: crossAxisAlignment,
                children: children,
              ),
            ),
        ],
      ),
    );
  }
}
