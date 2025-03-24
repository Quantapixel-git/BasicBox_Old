import 'package:ecom2/core/common/widgets/border_button.dart';
import 'package:ecom2/core/common/widgets/news_card.dart';
import 'package:ecom2/core/router/route_name.dart';
import 'package:ecom2/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EventsScreen extends StatelessWidget {
  static final route = "events";
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Events"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 22,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://imageio.forbes.com/specials-images/imageserve/5d35eacaf1176b0008974b54/0x0.jpg?format=jpg&crop=4560,2565,x790,y784,safe&height=900&width=1600&fit=bounds"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Philosophy Tips Merawat Bodi Mobil agar Tidak Terlihat Kusam",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontSize: 20,
                  ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "13 Jan 2021",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.grey2,
                  ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "The speaker unit contains a diaphragm that is precision-grown from NAC Audio bio-cellulose, making it stiffer, lighter and stronger than regular PET speaker units, and allowing the sound-producing diaphragm to vibrate without the levels of distortion found in other speakers.  \n\nThe speaker unit contains a diaphragm that is precision-grown from NAC Audio bio-cellulose, making it stiffer, lighter and stronger than regular PET speaker units, and allowing the sound-producing diaphragm to vibrate without the levels of distortion found in other speakers.  \n\nThe speaker unit contains a diaphragm that is precision-grown from NAC Audio bio-cellulose, making it stiffer, lighter and stronger than regular PET speaker units, and allowing the sound-producing diaphragm to vibrate without the levels of distortion found in other speakers.  \n\nThe speaker unit contains a diaphragm that is precision-grown from NAC Audio bio-cellulose, making it stiffer, lighter and stronger than regular PET speaker units, and allowing the sound-producing diaphragm to vibrate without the levels of distortion found in other speakers.  \n\nThe speaker unit contains a diaphragm that is precision-grown from NAC Audio bio-cellulose, making it stiffer, lighter and stronger than regular PET speaker units, and allowing the sound-producing diaphragm to vibrate without the levels of distortion found in other speakers.",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Other Events",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 2,
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
            SizedBox(
              height: 30.0,
            ),
            BorderButton(
              fullWidth: true,
              onTap: () {},
              text: "See more News",
            ),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
