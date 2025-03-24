import 'package:ecom2/features/comments/screens/add_comment_screen.dart';
import 'package:ecom2/features/products/widgets/comment_card.dart';
import 'package:ecom2/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:go_router/go_router.dart';

class RatingAndComments extends StatelessWidget {
  static final route = "ratingAndComments";
  const RatingAndComments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ratings & Comments"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 36,
                vertical: 16.0,
              ),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: AppColors.border),
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
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.comment,
                  size: 20,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Comments > 08",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.5,
              child: Divider(
                height: 0,
                color: AppColors.border,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Snaps ",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 97,
                        height: 109,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://cookathomemom.com/wp-content/uploads/2022/12/Pineapple-Ginger-Juice.jpg"),
                              fit: BoxFit.cover,
                            )),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 97,
                        height: 109,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://cookathomemom.com/wp-content/uploads/2022/12/Pineapple-Ginger-Juice.jpg"),
                              fit: BoxFit.cover,
                            )),
                      ),
                    ],
                  ),
                  Divider(
                    height: 50,
                    color: AppColors.border,
                  ),
                ],
              ),
            ),
            ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              separatorBuilder: (context, index) {
                return Divider(
                  color: AppColors.border,
                  height: 30,
                );
              },
              itemBuilder: (context, index) {
                return CommentCard();
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.pushNamed(AddCommentScreen.route);
        },
        label: Text("Add your comment"),
        icon: Icon(Icons.edit),
      ),
    );
  }
}
