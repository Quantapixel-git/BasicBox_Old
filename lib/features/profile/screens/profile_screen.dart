import 'package:ecom2/theme/colors.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static final route = "profile";
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            CircleAvatar(
              radius: 60,
              backgroundColor: AppColors.primary,
              child: Icon(
                Icons.person,
                color: blackColor,
                size: 70,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Sheersh Tehri",
              style: Theme.of(context).textTheme.displayLarge,
            ),
            SizedBox(
              height: 4.0,
            ),
            Text(
              "sheersh@gmail.com",
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: AppColors.grey2,
                  ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      "Orders",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "10",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Wishlist",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "7",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.drafts_rounded),
              tileColor: AppColors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              title: Text(
                "Orders",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            ListTile(
              onTap: () {},
              tileColor: AppColors.grey,
              leading: Icon(Icons.description),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              title: Text(
                "Terms & Condition",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.person),
              tileColor: AppColors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              title: Text(
                "Account Settings",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.settings),
              tileColor: AppColors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              title: Text(
                "App Settings",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
          ],
        ),
      ),
    );
  }
}
