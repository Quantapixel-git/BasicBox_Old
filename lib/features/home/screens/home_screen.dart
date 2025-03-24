import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:ecom2/core/common/widgets/border_button.dart';
import 'package:ecom2/core/common/widgets/common_bottom_sheet.dart';
import 'package:ecom2/core/common/widgets/news_card.dart';
import 'package:ecom2/features/events/screens/events_screen.dart';
import 'package:ecom2/features/home/widgets/category_card.dart';
import 'package:ecom2/features/home/widgets/trending_product_card.dart';
import 'package:ecom2/features/profile/screens/profile_screen.dart';
import 'package:ecom2/features/search/search_screen.dart';
import 'package:ecom2/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomeScreen extends StatefulWidget {
  static final route = "home";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = true;

  final carouselController = CarouselController(initialItem: 0);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(
      const Duration(seconds: 10),
      () {
        setState(() {
          isLoading = false;
        });
      },
    );
  }

  void _showCategoryBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return CommonBottomSheet(
          title: "All Categories",
          children: [
            MasonryGridView.builder(
              padding: const EdgeInsets.only(top: 25),
              shrinkWrap: true,
              itemCount: 8,
              gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              ),
              mainAxisSpacing: 20.0,
              itemBuilder: (context, index) {
                return CategoryCard(name: "Eats");
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        centerTitle: false,
        toolbarHeight: 75,
        actions: [
          InkWell(
            onTap: () {
              context.pushNamed(ProfileScreen.route);
            },
            child: Container(
              padding: const EdgeInsets.only(
                left: 10,
                right: 6,
                top: 3,
                bottom: 3,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                ),
                color: blackColor,
              ),
              child: Icon(
                Icons.person,
                color: whiteColor,
                size: 47,
              ),
            ),
          ),
        ],
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/branding/logo.png",
            ),
            SizedBox(
              width: 5.0,
            ),
            Text(
              "Basics \n Box",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              width: 6.0,
            ),
            SizedBox(
              height: 34,
              child: VerticalDivider(
                thickness: 3,
                width: 0,
                color: blackColor,
              ),
            ),
            SizedBox(
              width: 11.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Order Now & \n Delivered in Minutes",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Skeletonizer(
          effect: PulseEffect(),
          enableSwitchAnimation: true,
          // ignoreContainers: true,
          containersColor: AppColors.grey,
          enabled: isLoading,
          child: Column(
            children: [
              Container(
                color: isLoading ? null : AppColors.primary,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 26.0,
                    right: 26.0,
                    bottom: 25,
                    top: 7,
                  ),
                  child: InkWell(
                    onTap: () {
                      context.pushNamed(SearchScreen.route);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 11),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        border: Border.all(
                          color: Color(0xFF95989A),
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: blackColor,
                            size: 20,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "Search",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: AppColors.searchHint,
                            ),
                          ),
                          AnimatedTextKit(
                            repeatForever: true,

                            animatedTexts: [
                              TyperAnimatedText(
                                " Eats",
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.searchHint,
                                ),
                              ),
                              TyperAnimatedText(
                                " Fruits",
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.searchHint,
                                ),
                              ),
                              TyperAnimatedText(
                                " Foods",
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.searchHint,
                                ),
                              ),
                            ],

                            // style: TextStyle(
                            //   fontSize: 16,
                            //   fontWeight: FontWeight.w700,
                            //   color: AppColors.searchHint,
                            // ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.mic,
                            color: blackColor,
                            size: 20,
                          )
                        ],
                      ),

                      // hintText: "Search 'Eat's ",
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    bottom: 36.0, left: 26.0, right: 26.0),
                color: isLoading ? null : AppColors.primary,
                child: SizedBox(
                  height: 153,
                  child: CarouselView(
                    itemSnapping: true,
                    controller: carouselController,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17.0)),
                    itemExtent: double.infinity,
                    children: [
                      Image.network(
                        "https://images.unsplash.com/photo-1566385101042-1a0aa0c1268c?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                        fit: BoxFit.cover,
                      ),
                      Image.network(
                        "https://images.unsplash.com/photo-1566385101042-1a0aa0c1268c?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                        fit: BoxFit.cover,
                      ),
                      Image.network(
                        "https://images.unsplash.com/photo-1566385101042-1a0aa0c1268c?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                        fit: BoxFit.cover,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 14,
                  right: 14,
                  bottom: 31,
                ),
                color: isLoading ? null : AppColors.primary,
                child: SizedBox(
                  height: 140,
                  child: Row(
                    children: [
                      if (!isLoading)
                        Container(
                          width: 115,
                          decoration: BoxDecoration(
                            color: isLoading ? null : blackColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            children: [
                              Icon(
                                Icons.redeem,
                                color: AppColors.primary,
                                size: 80,
                              ),
                              Container(
                                child: Text(
                                  "Quests & Rewards",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: AppColors.primary),
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (!isLoading)
                        SizedBox(
                          width: 20.0,
                        ),
                      Expanded(
                        child: CarouselView(
                          itemSnapping: true,
                          itemExtent: double.infinity,
                          controller: CarouselController(initialItem: 0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          children: [
                            Image.network(
                              "https://img.freepik.com/free-vector/special-offer-modern-sale-banner-template_1017-20667.jpg",
                              fit: BoxFit.cover,
                            ),
                            Image.network(
                              "https://img.freepik.com/free-vector/special-offer-modern-sale-banner-template_1017-20667.jpg",
                              fit: BoxFit.cover,
                            ),
                            Image.network(
                              "https://img.freepik.com/free-vector/special-offer-modern-sale-banner-template_1017-20667.jpg",
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                  height: 155,
                  color: whiteColor,
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 27,
                      top: 35,
                      left: 14,
                      right: 14,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CategoryCard(name: "Eats"),
                        CategoryCard(name: "Prints"),
                        CategoryCard(name: "Fashion"),
                        CategoryCard(name: "Foods"),
                        CategoryCard(
                          name: "More",
                          onTap: _showCategoryBottomSheet,
                        ),
                      ],
                    ),
                  )),
              Container(
                padding: const EdgeInsets.only(
                  bottom: 31.0,
                  left: 25.0,
                  right: 25.0,
                  top: 13.0,
                ),
                color: isLoading ? null : Color(0xFFE0E0E0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.trending_up,
                          color: Colors.green,
                          size: 32,
                        ),
                        SizedBox(
                          width: 7.0,
                        ),
                        Text(
                          "Trending",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://img.freepik.com/free-vector/world-vegan-day-sale-banner-template_23-2149741503.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 31.0,
                    ),
                    MasonryGridView.count(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 20,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return TrendingProductCard(
                          onTap: () {},
                        );
                      },
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://as1.ftcdn.net/v2/jpg/06/84/57/02/1000_F_684570297_KrUJd4FcKfR7oPq78Ez9NdRF8tVyUYWO.jpg",
                            ),
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(
                      height: 9.0,
                    ),
                    Text(
                      "Events",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 9.0,
                    ),
                    MasonryGridView.count(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 20,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return TrendingProductCard(
                          onTap: () {},
                        );
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Special Offers",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    MasonryGridView.count(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 20,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return TrendingProductCard(
                          onTap: () {},
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "News",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 5,
                      separatorBuilder: (context, index) {
                        return Divider(
                          color: AppColors.border,
                          thickness: 2,
                          height: 40,
                        );
                      },
                      itemBuilder: (context, index) {
                        return NewsCard(
                          onTap: () {
                            context.pushNamed(EventsScreen.route);
                          },
                        );
                      },
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    BorderButton(
                      fullWidth: true,
                      onTap: () {
                        context.pushNamed(EventsScreen.route);
                      },
                      text: "See more News",
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
