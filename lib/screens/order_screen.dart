import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Orders"),
        ),
        body: ListView.separated(
          itemCount: 10,
          separatorBuilder: (context, index) {
            return Divider(
              color: Colors.green.withValues(alpha: 0.3),
            );
          },
          itemBuilder: (context, index) {
            return Row(
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/icons/veg.png",
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Fresh Vegetable",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "Order Date : 3/02/2025",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.green,
                        ),
                      ),
                      Text(
                        "Aarived today at 5PM",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            );
          },
        ));
  }
}
