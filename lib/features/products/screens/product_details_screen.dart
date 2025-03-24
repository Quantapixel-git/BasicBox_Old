import 'package:ecom2/core/common/widgets/border_button.dart';
import 'package:ecom2/core/common/widgets/button.dart';
import 'package:ecom2/core/common/widgets/common_bottom_sheet.dart';
import 'package:ecom2/features/comments/screens/rating_and_comments.dart';
import 'package:ecom2/features/merchant/screens/merchant_info_screen.dart';
import 'package:ecom2/features/products/widgets/comment_card.dart';
import 'package:ecom2/features/products/widgets/filter_bottom_sheet_content.dart';
import 'package:ecom2/features/products/widgets/quantity_price_card.dart';
import 'package:ecom2/features/products/widgets/recommended_product_card.dart';
import 'package:ecom2/features/products/widgets/sorting_bottom_sheet_content.dart';
import 'package:ecom2/features/products/widgets/varriation_card.dart';
import 'package:ecom2/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';

class ProductDetailsScreen extends StatefulWidget {
  static final route = 'productDetails';
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int selectedQuantity = 0;
  int selectedVariationId = 1;

  final benifits = [
    "Liquid extract of orange tree fruit",
    "Varieties include blood orange, navel oranges, valencia orange, clementine, and tangerine",
    "Can have varying amounts of juice vesicles (pulp or (juicy) bits)",
    "Commercial orange juice may be pasteurized and have oxygen removed",
    "Freshly squeezed orange juice is obtained by pressing fruit close to market and packaging without processing",
    "Nutrition powerhouse with vitamins, minerals, and antioxidants",
    "Often consumed as a beverage or used in recipes",
  ];

  void handleIncreaseQuantity() {
    setState(() {
      selectedQuantity = selectedQuantity + 1;
    });
  }

  void handleDecreaseQuantity() {
    if (selectedQuantity > 0) {
      setState(() {
        selectedQuantity = selectedQuantity - 1;
      });
    }
  }

  Future<void> _showCustomizeBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return DefaultTabController(
              length: 4,
              child: CommonBottomSheet(
                hasHeight: true,
                crossAxisAlignment: CrossAxisAlignment.start,
                title: "Customize ",
                children: [
                  TabBar(
                    tabs: [
                      Tab(
                        text: "Filter",
                      ),
                      Tab(
                        text: "Sorting",
                      ),
                      Tab(
                        text: "Review",
                      ),
                      Tab(
                        text: "Offers",
                      ),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        FilterBottomSheetContent(),
                        SortingBottomSheetContent(),
                        SortingBottomSheetContent(),
                        SortingBottomSheetContent(),
                      ],
                    ),
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
          },
        );
      },
    );
  }

  Future<void> _showSortingBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return CommonBottomSheet(
              title: "Sorting",
              children: [
                SortingBottomSheetContent(),
              ],
            );
          },
        );
      },
    );
  }

  Future<void> _showAddToCartBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return CommonBottomSheet(
              crossAxisAlignment: CrossAxisAlignment.start,
              title: "Add to Cart",
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Quantity",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            if (selectedQuantity > 0) {
                              setState(() => selectedQuantity--);
                            }
                          },
                          child: Icon(
                            Icons.remove,
                            size: 20.0,
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          selectedQuantity.toString(),
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectedQuantity++;
                            });
                          },
                          child: Icon(
                            Icons.add,
                            size: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Divider(
                  height: 0,
                  color: AppColors.border,
                ),
                SizedBox(
                  height: 8.5,
                ),
                Text(
                  "Variants",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                SizedBox(
                  height: 14.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    VarriationCard(
                      onTap: () {
                        setState(() => selectedVariationId = 1);
                      },
                      name: "400 ML",
                      isSelected: selectedVariationId == 1,
                    ),
                    SizedBox(
                      width: 40.0,
                    ),
                    VarriationCard(
                      onTap: () {
                        setState(() => selectedVariationId = 2);
                      },
                      name: "750 ML",
                      isSelected: selectedVariationId == 2,
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.41,
                ),
                Divider(
                  color: AppColors.border,
                  height: 0,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Total Amount",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.grey2,
                      ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "₹ 30.00",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Button(
                  elevation: 7.0,
                  onTap: () {},
                  title: "Add to Card",
                  frogroundColor: AppColors.black,
                  backgroundColor: AppColors.primary,
                  fullWidth: true,
                ),
              ],
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Eats"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                size: 38,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 311,
              decoration: BoxDecoration(
                color: AppColors.grey,
                image: DecorationImage(
                  image: AssetImage("assets/images/juice_bottle.png"),
                  alignment: Alignment.bottomCenter,
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Positioned(
                    top: 25,
                    left: 25,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.trending_up,
                              color: AppColors.green,
                              size: 30,
                            ),
                            SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              "#2",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: AppColors.green,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Trending in Drinks",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 25,
                    right: 25,
                    child: Icon(
                      Icons.share,
                      size: 30,
                    ),
                  ),
                  Positioned(
                    bottom: 25,
                    right: 25,
                    child: Column(
                      children: [
                        Text(
                          "Starts from",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          " ₹20",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "with coupon",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Orange Juice",
                                style: Theme.of(context).textTheme.displayLarge,
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                "Get 10 - 20% OFF on Drinks",
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium
                                    ?.copyWith(
                                      color: AppColors.green,
                                      fontSize: 20.0,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.favorite_outline,
                          size: 35,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "Ends on 27.01.2025",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Color(0xFF3A9B7A),
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    SizedBox(
                      height: 1.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5.0, vertical: 3.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1000.0),
                            color: AppColors.primary,
                          ),
                          child: Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                size: 11,
                                color: AppColors.yellow,
                              ),
                              SizedBox(
                                width: 2.0,
                              ),
                              Text(
                                "4.6",
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium
                                    ?.copyWith(
                                      fontSize: 14,
                                    ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 6.0,
                        ),
                        Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 3.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1000.0),
                              color: AppColors.primary,
                            ),
                            child: Text(
                              "86 Comments ",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium
                                  ?.copyWith(
                                    fontSize: 14,
                                  ),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Divider(
              height: 0,
              color: AppColors.border,
            ),
            SizedBox(
              height: 12.0,
            ),
            SizedBox(
              height: 110,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 20.0,
                  );
                },
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: 66,
                        width: 66,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12.0),
                            topRight: Radius.circular(12.0),
                            bottomLeft: Radius.circular(12.0),
                          ),
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/fruits.png",
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "100%\nFresh & Healthy ",
                        textAlign: TextAlign.center,
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  height: 1.3,
                                ),
                      )
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Divider(
              height: 0,
              color: AppColors.border,
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: Text(
                "Quantity & Price",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Center(
              child: Text(
                "Get 10 - 20% OFF on Drinks",
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      fontSize: 16,
                      color: AppColors.green,
                    ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                QuantityPriceCard(),
                SizedBox(
                  width: 35.0,
                ),
                QuantityPriceCard(),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Divider(
              color: AppColors.border,
              height: 0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 7.0, vertical: 5.0),
              child: Text(
                "Product Description",
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: Text(
                "Orange juice is a liquid extract of the orange tree fruit, produced by squeezing or reaming oranges. It comes in several different varieties, including blood orange, navel oranges, valencia orange, clementine, and tangerine, each with varying amounts of juice vesicles, known as “pulp” or “(juicy) bits”. These vesicles contain the juice of the orange and can be left in or removed during the manufacturing process.",
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 7.0, vertical: 5.0),
              child: Text(
                "Benefits",
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              shrinkWrap: true,
              itemCount: benifits.length,
              itemBuilder: (context, index) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: CircleAvatar(
                        radius: 3,
                        backgroundColor: blackColor,
                      ),
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    Expanded(
                      child: Text(
                        benifits[index],
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    )
                  ],
                );
              },
            ),
            InkWell(
              onTap: () {
                context.pushNamed(MerchantInfoScreen.route);
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 12.0, left: 25, right: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sold by",
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                    Divider(
                      color: AppColors.border,
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            color: blackColor,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "750 ML ",
                                    style:
                                        Theme.of(context).textTheme.titleSmall,
                                  ),
                                  Image.asset(
                                    "assets/icons/box_done.png",
                                    width: 12,
                                    height: 11.31,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Official Store ",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text(
                                "+ Follow ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Icon(
                                Icons.keyboard_arrow_right,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Divider(
                      color: AppColors.border,
                      height: 0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 36,
                vertical: 16.0,
              ),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: AppColors.borderDark,
                  ),
                  bottom: BorderSide(color: AppColors.borderDark),
                ),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.star,
                        color: AppColors.yellow,
                        size: 70,
                      ),
                      RichText(
                        text: TextSpan(
                            text: "4.6",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: AppColors.black,
                            ),
                            children: [
                              TextSpan(
                                  text: "/5",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.black,
                                  ),
                                  children: [
                                  
                                ]
                              ),
                            ]),
                      ),
                      Text(
                        "86 Comments",
                        style: Theme.of(context).textTheme.bodyLarge,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 16.0,
                  ),
                  SizedBox(
                    height: 100,
                    child: VerticalDivider(
                      width: 0,
                      color: AppColors.border,
                    ),
                  ),
                  SizedBox(
                    width: 11,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: RatingBar.builder(
                                initialRating: 5,
                                minRating: 5,
                                itemSize: 15,
                                maxRating: 5,
                                itemBuilder: (context, index) {
                                  return Icon(
                                    Icons.star,
                                    color: AppColors.yellow,
                                  );
                                },
                                onRatingUpdate: (value) {},
                              ),
                            ),
                            Expanded(
                              child: LinearProgressIndicator(
                                minHeight: 3,
                                backgroundColor: AppColors.grey,
                                color: AppColors.yellow,
                                value: 70,
                              ),
                            ),
                            SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              "70",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 7.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: RatingBar.builder(
                                initialRating: 4,
                                minRating: 5,
                                itemSize: 15,
                                maxRating: 5,
                                itemBuilder: (context, index) {
                                  return Icon(
                                    Icons.star,
                                    color: AppColors.yellow,
                                  );
                                },
                                onRatingUpdate: (value) {},
                              ),
                            ),
                            Expanded(
                              child: LinearProgressIndicator(
                                backgroundColor: AppColors.grey,
                                color: AppColors.yellow,
                                value: 70,
                              ),
                            ),
                            SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              "70",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 7.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: RatingBar.builder(
                                initialRating: 3,
                                minRating: 5,
                                itemSize: 15,
                                maxRating: 5,
                                itemBuilder: (context, index) {
                                  return Icon(
                                    Icons.star,
                                    color: AppColors.yellow,
                                  );
                                },
                                onRatingUpdate: (value) {},
                              ),
                            ),
                            Expanded(
                              child: LinearProgressIndicator(
                                backgroundColor: AppColors.grey,
                                color: AppColors.yellow,
                                value: 70,
                              ),
                            ),
                            SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              "50",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 7.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: RatingBar.builder(
                                initialRating: 2,
                                minRating: 5,
                                itemSize: 15,
                                maxRating: 5,
                                itemBuilder: (context, index) {
                                  return Icon(
                                    Icons.star,
                                    color: AppColors.yellow,
                                  );
                                },
                                onRatingUpdate: (value) {},
                              ),
                            ),
                            Expanded(
                              child: LinearProgressIndicator(
                                backgroundColor: AppColors.grey,
                                color: AppColors.yellow,
                                value: 70,
                              ),
                            ),
                            SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              "30",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 7.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: RatingBar.builder(
                                initialRating: 1,
                                minRating: 5,
                                itemSize: 15,
                                maxRating: 5,
                                itemBuilder: (context, index) {
                                  return Icon(
                                    Icons.star,
                                    color: AppColors.yellow,
                                  );
                                },
                                onRatingUpdate: (value) {},
                              ),
                            ),
                            Expanded(
                              child: LinearProgressIndicator(
                                backgroundColor: AppColors.grey,
                                color: AppColors.yellow,
                                value: 70,
                              ),
                            ),
                            SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              "30",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18.0,
            ),
            ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 3,
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 20.0,
                );
              },
              itemBuilder: (context, index) {
                return CommentCard();
              },
            ),
            SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: BorderButton(
                fullWidth: true,
                onTap: () {
                  context.pushNamed(RatingAndComments.route);
                },
                text: "See All Comments",
              ),
            ),
            SizedBox(
              height: 31,
            ),
            Container(
              color: AppColors.grey,
              width: double.infinity,
              padding:
                  const EdgeInsets.symmetric(horizontal: 25, vertical: 10.0),
              child: Column(
                children: [
                  Text(
                    "Recommended",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontSize: 16.0),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Text(
                    "Get 10% - 20% OFF on Drinks",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(color: AppColors.green, fontSize: 20.0),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  StaggeredGrid.count(
                    crossAxisCount: 2,
                    children: [
                      RecommendedProductCard(
                        onTap: () {},
                      ),
                      RecommendedProductCard(
                        onTap: () {},
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.transparent,
        padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).padding.bottom,
            left: 25,
            right: 25,
            top: 25),
        child: Row(
          children: [
            Expanded(
              child: Button(
                elevation: 8,
                textStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
                backgroundColor: AppColors.primary,
                frogroundColor: blackColor,
                fullWidth: true,
                onTap: () {
                  _showCustomizeBottomSheet(context);
                },
                title: "Buy Now",
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: Button(
                elevation: 8,
                textStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
                backgroundColor: blackColor,
                frogroundColor: AppColors.primary,
                fullWidth: true,
                onTap: () {
                  _showAddToCartBottomSheet(context);
                },
                title: "Add to Cart",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
