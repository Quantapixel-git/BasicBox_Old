import 'package:ecom2/core/common/widgets/border_button.dart';
import 'package:ecom2/core/common/widgets/button.dart';
import 'package:ecom2/core/common/widgets/product_card.dart';
import 'package:ecom2/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MerchantInfoScreen extends StatelessWidget {
  static final route = "merchantInfo";
  const MerchantInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Merchant Info"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
              size: 38,
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 70,
                color: AppColors.chocklatey,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 116),
                      padding: const EdgeInsets.only(right: 19, top: 5.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "750 ML",
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w500,
                                        height: 1),
                                  ),
                                  Text(
                                    "Juice Shop",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/icons/verified.png"),
                                  Text(
                                    "Verified by",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.black,
                                      fontSize: 7,
                                    ),
                                  ),
                                  Text(
                                    "Billaxiys",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.red1,
                                      fontSize: 7,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25.0,
                        vertical: 8.0,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Trending",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: AppColors.grey2,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "#2 of 10",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 31,
                                child: VerticalDivider(
                                  color: blackColor,
                                  thickness: 1,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Followers",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: AppColors.grey2,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "540",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 31,
                                child: VerticalDivider(
                                  color: blackColor,
                                  thickness: 1,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Menu Count",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: AppColors.grey2,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "120+",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Divider(
                            color: AppColors.border,
                          ),
                          Text(
                            "Madagadipet, Puducherry",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Divider(
                            color: AppColors.border,
                          ),
                          Button(
                            borderRadius: 100,
                            backgroundColor: blackColor,
                            frogroundColor: AppColors.primary,
                            textStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 79,
                              vertical: 11,
                            ),
                            onTap: () {},
                            title: "Message",
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              color: AppColors.grey,
                              child: MasonryGridView.builder(
                                padding: const EdgeInsets.all(25.0),
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: 10,
                                shrinkWrap: true,
                                gridDelegate:
                                    SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                ),
                                crossAxisSpacing: 13,
                                mainAxisSpacing: 21,
                                itemBuilder: (context, index) {
                                  return ProductCard();
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 40,
            left: 19,
            child: Container(
              width: 86,
              height: 83,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://thumbs.dreamstime.com/b/portrait-happy-beautiful-indian-girl-smiling-park-real-people-series-117961496.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(6.0),
                border: Border.all(color: AppColors.primary, width: 2),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
          top: 20.0,
          left: 25,
          right: 25,
          bottom: MediaQuery.of(context).padding.bottom,
        ),
        child: Row(
          children: [
            Expanded(
              child: BorderButton(
                onTap: () {},
                text: "Sorting",
                fullWidth: true,
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Expanded(
              child: Button(
                onTap: () {},
                title: "Following",
                backgroundColor: blackColor,
                frogroundColor: AppColors.primary,
                textStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                fullWidth: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
