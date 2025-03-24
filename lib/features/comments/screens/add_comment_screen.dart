import 'package:ecom2/core/common/widgets/input.dart';
import 'package:ecom2/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AddCommentScreen extends StatelessWidget {
  static final route = "addComment";
  const AddCommentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Comments"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn1.foodviva.com/static-content/food-images/juice-recipes/mango-juice/mango-juice.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: blackColor,
                    ),
                  ),
                  width: 103,
                  height: 103,
                ),
                SizedBox(width: 25.0),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "Name of the Product",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 9.0,
                      ),
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: AppColors.grey,
                        ),
                        child: Text(
                          "Orange Juice - 750 ml",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: AppColors.grey2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: double.infinity,
              child: Column(
                children: [
                  Text(
                    "Ratings",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  RatingBar.builder(
                    itemSize: 50,
                    maxRating: 5,
                    initialRating: 4,
                    minRating: 1,
                    itemBuilder: (context, index) {
                      return Icon(
                        Icons.star,
                        color: AppColors.yellow,
                      );
                    },
                    onRatingUpdate: (value) {},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "How was the product?",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Input(
              label: "",
              placeholder: "Add your comment......",
              showLabel: false,
              minLines: 8,
              maxLines: 8,
            )
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {},
        child: Container(
          color: AppColors.primary,
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).padding.bottom,
            top: 22,
            left: 25,
            right: 25,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Submit Comment",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
