import 'package:ecom2/theme/colors.dart';
import 'package:flutter/material.dart';

class PrintScreen extends StatelessWidget {
  const PrintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Container(
          color: whiteColor,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                    bottom: 20.0,
                    top: 10.0,
                  ),
                  width: double.infinity,
                  color: AppColors.primary,
                  child: Column(
                    children: [
                      Text(
                        "Print Store",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        "Ensure secure print at every stage.",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: blackColor.withValues(alpha: 0.5),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Documents",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: blackColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 16.0,
                                ),
                                Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      Icons.radio_button_unchecked,
                                      size: 12,
                                    ),
                                    Text(
                                      "Price starting at Rs 3/page",
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 4.0,
                                ),
                                Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      Icons.radio_button_unchecked,
                                      size: 12,
                                    ),
                                    Text(
                                      "Paper quality: 70 GSM",
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 4.0,
                                ),
                                Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      Icons.radio_button_unchecked,
                                      size: 12,
                                    ),
                                    Text(
                                      "Single side prints",
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 16.0,
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text("Upload File"),
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.receipt_long_outlined,
                            size: 120,
                            color: Colors.green,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Print your Document",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      GridView.builder(
                        itemCount: 10,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisExtent: 250,
                          mainAxisSpacing: 20.0,
                          crossAxisSpacing: 20.0,
                        ),
                        itemBuilder: (context, index) {
                          return Container(
                            color: AppColors.primary.withValues(alpha: 0.5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(12.0),
                                          topRight: Radius.circular(12.0)),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNWtkzMBzDleMrtcgTMhfiuou6JixAEHezAQ&s"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    "3 Pages",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 4.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    "Details about a document...",
                                    style: TextStyle(
                                      color: blackColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    "Rs 30",
                                    style: TextStyle(
                                      color: blackColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
