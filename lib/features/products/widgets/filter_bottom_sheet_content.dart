import 'package:ecom2/theme/colors.dart';
import 'package:flutter/material.dart';

class FilterBottomSheetContent extends StatefulWidget {
  const FilterBottomSheetContent({super.key});

  @override
  State<FilterBottomSheetContent> createState() =>
      _FilterBottomSheetContentState();
}

class _FilterBottomSheetContentState extends State<FilterBottomSheetContent> {
  RangeValues sliderValue = RangeValues(0, 10);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Price Range & Items",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          RangeSlider(
            activeColor: AppColors.secondary,
            min: 0,
            max: 100,
            values: sliderValue,
            divisions: 10,
            onChanged: (value) {
              setState(() {
                sliderValue = value;
              });
            },
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "₹ 50.00",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "₹ 2000",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Divider(
            color: AppColors.border,
            height: 0,
          ),
          Row(
            children: [
              Expanded(
                child: CheckboxListTile(
                  value: false,
                  onChanged: (bool? value) {},
                  title: Text('Charger'),
                  controlAffinity: ListTileControlAffinity
                      .trailing, // Places checkbox on the left
                  contentPadding: EdgeInsets.zero, // Adjusts the spacing
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              Expanded(
                child: CheckboxListTile(
                  value: false,
                  onChanged: (bool? value) {},
                  title: Text('Computer'),
                  controlAffinity: ListTileControlAffinity
                      .trailing, // Places checkbox on the left
                  contentPadding: EdgeInsets.zero, // Adjusts the spacing
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              Expanded(
                child: CheckboxListTile(
                  value: false,
                  onChanged: (bool? value) {},
                  title: Text('Laptop'),
                  controlAffinity: ListTileControlAffinity
                      .trailing, // Places checkbox on the left
                  contentPadding: EdgeInsets.zero, // Adjusts the spacing
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              Expanded(
                child: CheckboxListTile(
                  fillColor: WidgetStatePropertyAll(
                    AppColors.green,
                  ),
                  value: true,
                  onChanged: (bool? value) {},
                  title: Text('Option 1'),
                  controlAffinity: ListTileControlAffinity
                      .trailing, // Places checkbox on the left
                  contentPadding: EdgeInsets.zero, // Adjusts the spacing
                ),
              ),
            ],
          ),
          Divider(),
        ],
      ),
    );
  }
}
