import 'package:flutter/material.dart';
import 'package:my_store_app/ModeLs/my_product_model.dart';
import 'package:my_store_app/Services/My_Get_Request/my_get_all_products_service.dart';
import 'package:my_store_app/Widgets/my_product_card.dart';

class MyProductsView extends StatelessWidget {
  const MyProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<MyProductModeL>>(
      future: MyGetALLProductsService().myGetALLProductsService(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<MyProductModeL> myProductsList = snapshot.data!;
          return GridView.builder(
            padding: const EdgeInsets.only(
              left: 8,
              right: 8,
              top: 65,
            ),
            physics: const BouncingScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 65,
              crossAxisSpacing: 5,
              childAspectRatio: 1,
            ),
            itemCount: myProductsList.length,
            itemBuilder: (context, index) {
              return MyProductCard(
                myProduct: myProductsList[index],
              );
            },
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
