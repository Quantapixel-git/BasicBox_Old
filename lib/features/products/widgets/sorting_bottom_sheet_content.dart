import 'package:ecom2/core/common/widgets/border_button.dart';
import 'package:ecom2/core/common/widgets/button.dart';
import 'package:ecom2/theme/colors.dart';
import 'package:flutter/material.dart';

class SortingBottomSheetContent extends StatelessWidget {
  const SortingBottomSheetContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Divider(
                height: 0,
                color: AppColors.border,
              );
            },
            separatorBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Name (Z-A)",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: AppColors.green,
                      child: Icon(
                        Icons.done,
                        size: 15,
                        color: whiteColor,
                      ),
                    ),
                  ],
                ),
              );
            },
            itemCount: 5,
          ),
          Row(
            children: [
              Expanded(
                child: BorderButton(
                  onTap: () {},
                  text: "Reset",
                  fullWidth: true,
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              Expanded(
                child: Button(
                  onTap: () {},
                  title: "Apply",
                  frogroundColor: AppColors.black,
                  backgroundColor: AppColors.primary,
                  fullWidth: true,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
