import 'package:ecom2/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CommentCard extends StatelessWidget {
  const CommentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(
                  "https://assets.teenvogue.com/photos/55b263ea74dfbc51751ef05d/16:9/w_2560%2Cc_limit/indian-girl.jpg"),
              fit: BoxFit.cover,
            ),
            border: Border.all(color: blackColor),
          ),
        ),
        SizedBox(
          width: 15.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Wade Willson",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Text(
                    "3 minutes ago",
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              RatingBar.builder(
                initialRating: 4,
                minRating: 5,
                maxRating: 5,
                itemSize: 15,
                itemBuilder: (context, index) {
                  return Icon(
                    Icons.star,
                    color: AppColors.yellow,
                  );
                },
                onRatingUpdate: (value) {},
              ),
              SizedBox(
                height: 11.0,
              ),
              Text(
                "vibrant flavor profile is characterized by a perfect balance of sweet and tangy notes, with a hint of citrusy freshness.... view more",
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
