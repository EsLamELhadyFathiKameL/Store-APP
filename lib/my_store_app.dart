import 'package:flutter/material.dart';
import 'package:my_store_app/Screens/my_add_new_product_page.dart';
import 'package:my_store_app/Screens/my_all_categories_page.dart';
import 'package:my_store_app/Screens/my_category_you_choose_page.dart';
import 'package:my_store_app/Screens/my_products_page.dart';
import 'package:my_store_app/Screens/my_update_product_page.dart';

void main() {
  runApp(const MyStoreAPP());
}

class MyStoreAPP extends StatelessWidget {
  const MyStoreAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        MyProductsPage.id: (context) => const MyProductsPage(),
        MyALLCategoriesPage.id: (context) => const MyALLCategoriesPage(),
        MyCategoryYouChoosePage.id: (context) =>
            const MyCategoryYouChoosePage(),
        MyUpdateProductPage.id: (context) => const MyUpdateProductPage(),
        MyAddNewProductPage.id: (context) => const MyAddNewProductPage(),
      },
      initialRoute: MyProductsPage.id,
    );
  }
}
