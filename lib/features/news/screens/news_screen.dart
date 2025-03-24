import 'package:ecom2/core/common/widgets/input.dart';
import 'package:ecom2/core/common/widgets/news_card.dart';
import 'package:ecom2/core/router/route_name.dart';
import 'package:ecom2/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewsScreen extends StatelessWidget {
  static final routee = "news";
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Input(
              suffixIcon: Icon(
                Icons.search,
                size: 20,
              ),
              showLabel: false,
              label: "Search News",
              placeholder: "Search News",
            ),
            SizedBox(
              height: 30.0,
            ),
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
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
                    context.go(NavigateTo.newsToEvents);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
