import 'package:ecom2/core/common/widgets/product_card.dart';
import 'package:ecom2/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';

class SearchScreen extends StatelessWidget {
  static final String route = "search";
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final recentSearches = [
      "Chicken Noodles",
      "Chicken Briyani",
      "T- shirt",
    ];

    final searchData = ['apple', "banana", 'mango', "oranges"];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        titleSpacing: 0,
        leading: null,
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                context.pop();
              },
              icon: Icon(Icons.arrow_back_ios),
            ),
            SizedBox(
              width: 7.0,
            ),
            Expanded(
              child: SearchAnchor.bar(
                barOverlayColor: WidgetStatePropertyAll(whiteColor),
                viewBackgroundColor: whiteColor,
                isFullScreen: true,
                suggestionsBuilder: (context, controller) {
                  if (controller.value.text.isEmpty) {
                    return [];
                  }
                  final searchValue = controller.value;
                  final results = searchData
                      .where((data) => data.contains(searchValue.text))
                      .toList();

                  return results.map((value) => ListTile(
                        onTap: () {
                          controller.closeView(value);
                        },
                        title: Text(value),
                      ));
                },
                barHintStyle: WidgetStatePropertyAll(
                  TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.grey1,
                  ),
                ),
                barHintText: "Search 'Eat's ",
                barTrailing: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: blackColor,
                      size: 20,
                    ),
                  ),
                ],
                barElevation: WidgetStatePropertyAll(0),
                barShape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                ),
                barBackgroundColor: WidgetStatePropertyAll(whiteColor),
              ),
            ),
            SizedBox(
              width: 11.0,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Recent Searches ",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    itemCount: recentSearches.length,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 25.0,
                      );
                    },
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Icon(
                            Icons.schedule,
                            size: 20,
                            color: AppColors.grey1,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: Text(
                              recentSearches[index],
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Icon(
                            Icons.close,
                            size: 20,
                            color: AppColors.black,
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              margin:
                  EdgeInsets.only(left: 12.0, right: 12, top: 34, bottom: 12.0),
              decoration: BoxDecoration(
                color: AppColors.grey1,
                borderRadius: BorderRadius.circular(13.0),
                image: DecorationImage(
                  image: NetworkImage(
                    "https://img.freepik.com/free-photo/black-cup-tea-with-headphones-red-background_185193-162055.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25, vertical: 20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0)),
                color: AppColors.grey,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Featured Product",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "See All",
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              color: AppColors.secondary,
                              fontSize: 12.0,
                            ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  MasonryGridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 20,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return ProductCard();
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
