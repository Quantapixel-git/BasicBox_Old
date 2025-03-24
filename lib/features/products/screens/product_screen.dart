import 'package:ecom2/core/common/widgets/product_card.dart';
import 'package:ecom2/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProductScreen extends StatelessWidget {
  static final route = 'product';
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                height: 172,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Fruit%2C_Vegetables_and_Grain_NCI_Visuals_Online.jpg/1280px-Fruit%2C_Vegetables_and_Grain_NCI_Visuals_Online.jpg"),
                    fit: BoxFit.cover,
                  ),
                  color: AppColors.grey1,
                  borderRadius: BorderRadius.circular(14.0),
                ),
              ),
            ),
            SizedBox(
              height: 13.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: AppColors.grey,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
              child: MasonryGridView.count(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 26),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 20,
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ProductCard();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
